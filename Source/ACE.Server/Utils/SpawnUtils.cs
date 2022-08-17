using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Numerics;
using System.Threading;
using System.Threading.Tasks;

using log4net;

using ACE.Common.Performance;
using ACE.Database;
using ACE.Database.Models.World;
using ACE.DatLoader;
using ACE.DatLoader.FileTypes;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Entity.Models;
using ACE.Server.Entity.Actions;
using ACE.Server.Factories;
using ACE.Server.Managers;
using ACE.Server.Network.GameMessages;
using ACE.Server.WorldObjects;

using Position = ACE.Entity.Position;
using ACE.Server.Entity;
using ACE.Server.Physics.Common;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.Network;

namespace ACE.Server.Utils
{
    internal class SpawnUtils
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private static readonly ActionQueue actionQueue = new ActionQueue();

        /// <summary>
        /// The clientlib backing store landblock
        /// Eventually these classes could be merged, but for now they are separate...
        /// </summary>
        public static Physics.Common.Landblock PhysicsLandblock { get; }

        /// <summary>
        /// This is used to detect and manage cross-landblock group (which is potentially cross-thread) operations.
        /// </summary>
        public static LandblockGroup CurrentLandblockGroup { get; internal set; }

        /// <summary>
        /// Spawns the semi-randomized monsters scattered around the outdoors<para />
        /// This will be called from a separate task from our constructor. Use thread safety when interacting with this landblock.
        /// </summary>
        public static void SpawnEncounters(LandblockId Id, Entity.Landblock landblock)
        {
            LandblockId blockId = new LandblockId(55893);

            // get the encounter spawns for this landblock
            //var encounters = DatabaseManager.World.GetCachedEncountersByLandblock(blockId.Landblock);
            List<Encounter> encounters = new List<Encounter>();

            for (int i = 0; i < 20; i++)
            {
                var encounter = new Encounter();
                encounter.Landblock = 55893;
                //encounter.CellX = cellX;
                //encounter.CellY = cellY;
                encounter.WeenieClassId = 100006;
                encounter.LastModified = DateTime.Now;
                encounters.Add(encounter);
            }

            foreach (var encounter in encounters)
            {
                var wo = WorldObjectFactory.CreateNewWorldObject(encounter.WeenieClassId);

                if (wo == null) continue;

                actionQueue.EnqueueAction(new ActionEventDelegate(() =>
                {
                    var xPos = Math.Clamp(encounter.CellX * 24.0f, 0.5f, 191.5f);
                    var yPos = Math.Clamp(encounter.CellY * 24.0f, 0.5f, 191.5f);

                    var pos = new Physics.Common.Position();
                    pos.ObjCellID = (uint)(Id.Landblock << 16) | 1;
                    pos.Frame = new Physics.Animation.AFrame(new Vector3(xPos, yPos, 0), Quaternion.Identity);
                    pos.adjust_to_outside();

                    pos.Frame.Origin.Z = PhysicsLandblock.GetZ(pos.Frame.Origin);

                    wo.Location = new Position(pos.ObjCellID, pos.Frame.Origin, pos.Frame.Orientation);

                    var sortCell = LScape.get_landcell(pos.ObjCellID) as SortCell;
                    if (sortCell != null && sortCell.has_building())
                    {
                        wo.Destroy();
                        return;
                    }

                    if (PropertyManager.GetBool("override_encounter_spawn_rates").Item)
                    {
                        wo.RegenerationInterval = PropertyManager.GetDouble("encounter_regen_interval").Item;

                        wo.ReinitializeHeartbeats();

                        if (wo.Biota.PropertiesGenerator != null)
                        {
                            // While this may be ugly, it's done for performance reasons.
                            // Common weenie properties are not cloned into the bota on creation. Instead, the biota references simply point to the weenie collections.
                            // The problem here is that we want to update one of those common collection properties. If the biota is referencing the weenie collection,
                            // then we'll end up updating the global weenie (from the cache), instead of just this specific biota.
                            if (wo.Biota.PropertiesGenerator == wo.Weenie.PropertiesGenerator)
                            {
                                wo.Biota.PropertiesGenerator = new List<PropertiesGenerator>(wo.Weenie.PropertiesGenerator.Count);

                                foreach (var record in wo.Weenie.PropertiesGenerator)
                                    wo.Biota.PropertiesGenerator.Add(record.Clone());
                            }

                            foreach (var profile in wo.Biota.PropertiesGenerator)
                                profile.Delay = (float)PropertyManager.GetDouble("encounter_delay").Item;
                        }
                    }

                    if (!AddWorldObject(wo, blockId, landblock))
                        wo.Destroy();
                }));
            }
        }

        /// <summary>
        /// This will fail if the wo doesn't have a valid location.
        /// </summary>
        public static bool AddWorldObject(WorldObject wo, LandblockId Id, Entity.Landblock landblock)
        {
            if (wo.Location == null)
            {
                log.DebugFormat("Landblock 0x{0} failed to add 0x{1:X8} {2}. Invalid Location", Id, wo.Biota.Id, wo.Name);
                return false;
            }

            return AddWorldObjectInternal(wo, Id, landblock);
        }

        private static bool AddWorldObjectInternal(WorldObject wo, LandblockId Id, Entity.Landblock landblock)
        {
            if (LandblockManager.CurrentlyTickingLandblockGroupsMultiThreaded)
            {
                if (CurrentLandblockGroup != null && CurrentLandblockGroup != LandblockManager.CurrentMultiThreadedTickingLandblockGroup.Value)
                {
                    log.Error($"Landblock 0x{Id} entered AddWorldObjectInternal in a cross-thread operation.");
                    log.Error($"Landblock 0x{Id} CurrentLandblockGroup: {CurrentLandblockGroup}");
                    log.Error($"LandblockManager.CurrentMultiThreadedTickingLandblockGroup.Value: {LandblockManager.CurrentMultiThreadedTickingLandblockGroup.Value}");

                    log.Error($"wo: 0x{wo.Guid}:{wo.Name} [{wo.WeenieClassId} - {wo.WeenieType}], previous landblock 0x{wo.CurrentLandblock?.Id}");

                    if (wo.WeenieType == WeenieType.ProjectileSpell)
                    {
                        if (wo.ProjectileSource != null)
                            log.Error($"wo.ProjectileSource: 0x{wo.ProjectileSource?.Guid}:{wo.ProjectileSource?.Name}, position: {wo.ProjectileSource?.Location}");

                        if (wo.ProjectileTarget != null)
                            log.Error($"wo.ProjectileTarget: 0x{wo.ProjectileTarget?.Guid}:{wo.ProjectileTarget?.Name}, position: {wo.ProjectileTarget?.Location}");
                    }

                    log.Error(System.Environment.StackTrace);

                    log.Error("PLEASE REPORT THIS TO THE ACE DEV TEAM !!!");

                    // Prevent possible multi-threaded crash
                    if (wo.WeenieType == WeenieType.ProjectileSpell)
                        return false;

                    // This may still crash...
                }
            }

            wo.CurrentLandblock = landblock;

            if (wo.PhysicsObj == null)
                wo.InitPhysicsObj();
            else
                wo.PhysicsObj.set_object_guid(wo.Guid);  // re-add to ServerObjectManager

            if (wo.PhysicsObj.CurCell == null)
            {
                var success = wo.AddPhysicsObj();
                if (!success)
                {
                    wo.CurrentLandblock = null;

                    if (wo.Generator != null)
                    {
                        log.Debug($"AddWorldObjectInternal: couldn't spawn 0x{wo.Guid}:{wo.Name} [{wo.WeenieClassId} - {wo.WeenieType}] at {wo.Location.ToLOCString()} from generator {wo.Generator.WeenieClassId} - 0x{wo.Generator.Guid}:{wo.Generator.Name}");
                        wo.NotifyOfEvent(RegenerationType.PickUp); // Notify generator the generated object is effectively destroyed, use Pickup to catch both cases.
                    }
                    else if (wo.IsGenerator) // Some generators will fail random spawns if they're circumference spans over water or cliff edges
                        log.Debug($"AddWorldObjectInternal: couldn't spawn generator 0x{wo.Guid}:{wo.Name} [{wo.WeenieClassId} - {wo.WeenieType}] at {wo.Location.ToLOCString()}");
                    else if (wo.ProjectileTarget == null && !(wo is SpellProjectile))
                        log.Warn($"AddWorldObjectInternal: couldn't spawn 0x{wo.Guid}:{wo.Name} [{wo.WeenieClassId} - {wo.WeenieType}] at {wo.Location.ToLOCString()}");

                    return false;
                }
            }

            //if (!worldObjects.ContainsKey(wo.Guid))
            //    pendingAdditions[wo.Guid] = wo;
            //else
            //    pendingRemovals.Remove(wo.Guid);

            // broadcast to nearby players
            wo.NotifyPlayers();

            //if (wo is Player player)
            //    player.SetFogColor(FogColor);

            //if (wo is Corpse && wo.Level.HasValue)
            //{
            //    var corpseLimit = PropertyManager.GetLong("corpse_spam_limit").Item;
            //    var corpseList = worldObjects.Values.Union(pendingAdditions.Values).Where(w => w is Corpse && w.Level.HasValue && w.VictimId == wo.VictimId).OrderBy(w => w.CreationTimestamp);

            //    if (corpseList.Count() > corpseLimit)
            //    {
            //        var corpse = GetObject(corpseList.First(w => w.TimeToRot > Corpse.EmptyDecayTime).Guid);

            //        if (corpse != null)
            //        {
            //            log.Warn($"[CORPSE] Landblock.AddWorldObjectInternal(): {wo.Name} (0x{wo.Guid}) exceeds the per player limit of {corpseLimit} corpses for 0x{Id.Landblock:X4}. Adjusting TimeToRot for oldest {corpse.Name} (0x{corpse.Guid}), CreationTimestamp: {corpse.CreationTimestamp} ({Common.Time.GetDateTimeFromTimestamp(corpse.CreationTimestamp ?? 0).ToLocalTime():yyyy-MM-dd HH:mm:ss}), to Corpse.EmptyDecayTime({Corpse.EmptyDecayTime}).");
            //            corpse.TimeToRot = Corpse.EmptyDecayTime;
            //        }
            //    }
            //}

            return true;
        }

        public static WorldObject SpawnEncounter(Database.Models.World.Weenie weenie, int cellX, int cellY, Position pos, Session session)
        {
            var wo = WorldObjectFactory.CreateNewWorldObject(weenie.ClassId);

            if (wo == null)
            {
                session.Network.EnqueueSend(new GameMessageSystemChat($"Failed to create encounter weenie", ChatMessageType.Broadcast));
                return null;
            }

            if (!wo.IsGenerator)
            {
                session.Network.EnqueueSend(new GameMessageSystemChat($"Encounter must be a Generator", ChatMessageType.Broadcast));
                return null;
            }

            var xPos = Math.Clamp(cellX * 24.0f, 0.5f, 191.5f);
            var yPos = Math.Clamp(cellY * 24.0f, 0.5f, 191.5f);

            var newPos = new Physics.Common.Position();
            newPos.ObjCellID = pos.Cell;
            newPos.Frame = new Physics.Animation.AFrame(new Vector3(xPos, yPos, 0), Quaternion.Identity);
            newPos.adjust_to_outside();

            newPos.Frame.Origin.Z = session.Player.CurrentLandblock.PhysicsLandblock.GetZ(newPos.Frame.Origin);

            wo.Location = new Position(newPos.ObjCellID, newPos.Frame.Origin, newPos.Frame.Orientation);

            var sortCell = Physics.Common.LScape.get_landcell(newPos.ObjCellID) as Physics.Common.SortCell;
            if (sortCell != null && sortCell.has_building())
            {
                session.Network.EnqueueSend(new GameMessageSystemChat($"Failed to create encounter near building cell", ChatMessageType.Broadcast));
                return null;
            }

            if (PropertyManager.GetBool("override_encounter_spawn_rates").Item)
            {
                wo.RegenerationInterval = PropertyManager.GetDouble("encounter_regen_interval").Item;

                wo.ReinitializeHeartbeats();

                if (wo.Biota.PropertiesGenerator != null)
                {
                    // While this may be ugly, it's done for performance reasons.
                    // Common weenie properties are not cloned into the bota on creation. Instead, the biota references simply point to the weenie collections.
                    // The problem here is that we want to update one of those common collection properties. If the biota is referencing the weenie collection,
                    // then we'll end up updating the global weenie (from the cache), instead of just this specific biota.
                    if (wo.Biota.PropertiesGenerator == wo.Weenie.PropertiesGenerator)
                    {
                        wo.Biota.PropertiesGenerator = new List<ACE.Entity.Models.PropertiesGenerator>(wo.Weenie.PropertiesGenerator.Count);

                        foreach (var record in wo.Weenie.PropertiesGenerator)
                            wo.Biota.PropertiesGenerator.Add(record.Clone());
                    }
                }
            }

            var success = wo.EnterWorld();

            if (!success)
            {
                session.Network.EnqueueSend(new GameMessageSystemChat($"Failed to spawn encounter", ChatMessageType.Broadcast));
                return null;
            }
            return wo;
        }
    }
}
