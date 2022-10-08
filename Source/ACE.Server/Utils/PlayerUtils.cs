using ACE.Database;
using ACE.Database.Models.Custom;
using ACE.Database.Models.Shard;
using ACE.DatLoader;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.Network;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.Network.Structure;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ACE.Server.Utils
{
    /// <summary>
    /// Utility class for custom player logic
    /// </summary>
    internal class PlayerUtils
    {
        public static bool isAddRemoveSquelch = false;
        public static bool isAddRemoveFriend = false;
        public static bool isAddRemoveHouseGuest = false;
        public static bool isAddRemoveHouseStorage = false;
        public static bool isGameActionBuyHouse = false;
        public static bool isWorldObjectCreation = false;
        public static bool isAddFriendByActualName = false;
        public static bool isFriendByRealName = false;
        public static bool isAllegianceChat = false;
        public static bool isFellowshipChat = false;

        /// <summary>
        /// Buffs a player with full level 7 spells on their
        /// first login.  This method only executes if the players
        /// login count is less than 1.
        /// </summary>
        /// <param name="player"></param>
        /// <param name="self"></param>
        /// <param name="maxLevel"></param>
        public static void BuffPlayerLevelSeven(Player player, bool self = true, ulong maxLevel = 7)
        {
            var SelfOrOther = self ? "Self" : "Other";

            // ensure level 8s are installed
            var maxSpellLevel = Math.Clamp(maxLevel, 1, 8);
            if (maxSpellLevel == 8 && DatabaseManager.World.GetCachedSpell((uint)SpellId.ArmorOther8) == null)
                maxSpellLevel = 7;

            var tySpell = typeof(SpellId);
            List<BuffMessage> buffMessages = new List<BuffMessage>();
            // prepare messages
            List<string> buffsNotImplementedYet = new List<string>();
            foreach (var spell in Buffs)
            {
                var spellNamPrefix = spell;
                bool isBane = false;
                if (spellNamPrefix.StartsWith("@"))
                {
                    isBane = true;
                    spellNamPrefix = spellNamPrefix.Substring(1);
                }
                string fullSpellEnumName = spellNamPrefix + ((isBane) ? string.Empty : SelfOrOther) + maxSpellLevel;
                string fullSpellEnumNameAlt = spellNamPrefix + ((isBane) ? string.Empty : ((SelfOrOther == "Self") ? "Other" : "Self")) + maxSpellLevel;
                uint spellID = (uint)Enum.Parse(tySpell, fullSpellEnumName);
                var buffMsg = BuildBuffMessage(spellID);

                if (buffMsg == null)
                {
                    spellID = (uint)Enum.Parse(tySpell, fullSpellEnumNameAlt);
                    buffMsg = BuildBuffMessage(spellID);
                }

                if (buffMsg != null)
                {
                    buffMsg.Bane = isBane;
                    buffMessages.Add(buffMsg);
                }
                else
                {
                    buffsNotImplementedYet.Add(fullSpellEnumName);
                }
            }
            if (buffMessages.Any(k => !k.Bane))
            {
                // bake player into the messages
                buffMessages.Where(k => !k.Bane).ToList().ForEach(k => k.SetTargetPlayer(player));
                // update client-side enchantments
                player.Session.Network.EnqueueSend(buffMessages.Where(k => !k.Bane).Select(k => k.SessionMessage).ToArray());
                // run client-side effect scripts, omitting duplicates
                player.EnqueueBroadcast(buffMessages.Where(k => !k.Bane).ToList().GroupBy(m => m.Spell.TargetEffect).Select(a => a.First().LandblockMessage).ToArray());
                // update server-side enchantments

                var buffsForPlayer = buffMessages.Where(k => !k.Bane).ToList().Select(k => k.Enchantment);

                var lifeBuffsForPlayer = buffsForPlayer.Where(k => k.Spell.School == MagicSchool.LifeMagic).ToList();
                var critterBuffsForPlayer = buffsForPlayer.Where(k => k.Spell.School == MagicSchool.CreatureEnchantment).ToList();
                var itemBuffsForPlayer = buffsForPlayer.Where(k => k.Spell.School == MagicSchool.ItemEnchantment).ToList();

                lifeBuffsForPlayer.ForEach(spl =>
                {
                    CreateEnchantmentSilent(spl.Spell, player, player);
                });
                critterBuffsForPlayer.ForEach(spl =>
                {
                    CreateEnchantmentSilent(spl.Spell, player, player);
                });
                itemBuffsForPlayer.ForEach(spl =>
                {
                    CreateEnchantmentSilent(spl.Spell, player, player);
                });
            }
            if (buffMessages.Any(k => k.Bane))
            {
                // Impen/bane
                var items = player.EquippedObjects.Values.ToList();
                var itembuffs = buffMessages.Where(k => k.Bane).ToList();
                foreach (var itemBuff in itembuffs)
                {
                    foreach (var item in items)
                    {
                        if ((item.WeenieType == WeenieType.Clothing || item.IsShield) && item.IsEnchantable)
                            CreateEnchantmentSilent(itemBuff.Spell, item, player);
                    }
                }
            }
        }

        /// <summary>
        /// Finds and casts a spell on a player on
        /// their first login.
        /// </summary>
        /// <param name="spell"></param>
        /// <param name="target"></param>
        /// <param name="player"></param>
        private static void CreateEnchantmentSilent(Spell spell, WorldObject target, Player player)
        {
            var addResult = target.EnchantmentManager.Add(spell, player, null);

            if (target is Player targetPlayer)
            {
                targetPlayer.Session.Network.EnqueueSend(new GameEventMagicUpdateEnchantment(targetPlayer.Session, new Enchantment(targetPlayer, addResult.Enchantment)));

                targetPlayer.HandleSpellHooks(spell);
            }
        }

        /// <summary>
        /// Broadcast messages of buffs casted on a player
        /// after their first login.
        /// </summary>
        private class BuffMessage
        {
            public bool Bane { get; set; } = false;
            public GameEventMagicUpdateEnchantment SessionMessage { get; set; } = null;
            public GameMessageScript LandblockMessage { get; set; } = null;
            public Spell Spell { get; set; } = null;
            public Enchantment Enchantment { get; set; } = null;
            public void SetTargetPlayer(Player p)
            {
                Enchantment.Target = p;
                SessionMessage = new GameEventMagicUpdateEnchantment(p.Session, Enchantment);
                SetLandblockMessage(p.Guid);
            }
            public void SetLandblockMessage(ObjectGuid target)
            {
                LandblockMessage = new GameMessageScript(target, Spell.TargetEffect, 1f);
            }
        }

        /// <summary>
        /// Used to create the buff message broadcasted
        /// in the BuffMessage method.
        /// </summary>
        /// <param name="spellID"></param>
        /// <returns></returns>
        private static BuffMessage BuildBuffMessage(uint spellID)
        {
            BuffMessage buff = new BuffMessage();
            buff.Spell = new Spell(spellID);
            if (buff.Spell.NotFound) return null;
            buff.Enchantment = new Enchantment(null, 0, spellID, 1, (EnchantmentMask)buff.Spell.StatModType, buff.Spell.StatModVal);
            return buff;
        }

        /// <summary>
        /// Buffs a new player when their login count
        /// is less than 1
        /// </summary>
        /// <param name="player"></param>
        public static void buffNewPlayer(Player player)
        {
            // Fancy fireworks on login
            // Note: May need to move this code so that it doesn't apply to olthoi
            //player.GrantXP(191226310247, XpType.Kill);

            BuffPlayerLevelSeven(player);
        }

        /// <summary>
        /// Sets new players entering the world to be lvl 275
        /// with full xp dumped into all trained/specialized skills
        /// and the max remaining experiance available.
        /// Also prelearns all common spells lvl 1-7 for the player.
        /// </summary>
        /// <param name="player"></param>
        public static void createMaxNewPlayer(Player player)
        {
            player.AvailableExperience = player.AvailableExperience ?? 191226310247;
            player.TotalExperience = player.TotalExperience ?? 191226310247;
            player.Level = 275;
            //this.DeepSave
            AddAllSpellsOneThroughSeven(player);
            LoadDefaultSpellBars(player);
            //SpendAllSkillXp(player);
            SpendAllAttributeAndVitalXp(player, false);
        }

        /// <summary>
        /// Grants a player max default skill credits
        /// upon first login (Quest related skill credits not included)
        /// </summary>
        /// <param name="player"></param>
        public static void addMaxPlayerSkillCredits(Player player)
        {
            player.SetProperty(PropertyInt.AvailableSkillCredits, 46);
            player.SetProperty(PropertyInt.TotalSkillCredits, 46);
        }

        //public static void spendAllAvailableXp(Player player)
        //{
        //    player.SpendAllXp(false);
        //}

        /// <summary>
        /// Tries to spend all of the players Xp into Attributes, Vitals and Skills
        /// </summary>
        public static void SpendAllAttributeAndVitalXp(Player player, bool sendNetworkUpdate = true)
        {
            player.SpendAllAvailableAttributeXp(player.Strength, sendNetworkUpdate);
            player.SpendAllAvailableAttributeXp(player.Endurance, sendNetworkUpdate);
            player.SpendAllAvailableAttributeXp(player.Coordination, sendNetworkUpdate);
            player.SpendAllAvailableAttributeXp(player.Quickness, sendNetworkUpdate);
            player.SpendAllAvailableAttributeXp(player.Focus, sendNetworkUpdate);
            player.SpendAllAvailableAttributeXp(player.Self, sendNetworkUpdate);

            player.SpendAllAvailableVitalXp(player.Health, sendNetworkUpdate);
            player.SpendAllAvailableVitalXp(player.Stamina, sendNetworkUpdate);
            player.SpendAllAvailableVitalXp(player.Mana, sendNetworkUpdate);
        }

        /// <summary>
        /// Spends all possible experience in a players trained/specialized
        /// skills upon first login.
        /// </summary>
        /// <param name="player"></param>
        /// <param name="sendNetworkUpdate"></param>
        public static void SpendAllSkillXp(Player player, bool sendNetworkUpdate = true)
        {
            foreach (var skill in player.Skills)
            {
                if (skill.Value.AdvancementClass >= SkillAdvancementClass.Trained)
                    player.SpendAllAvailableSkillXp(skill.Value, sendNetworkUpdate);
            }
        }

        /// <summary>
        /// Teaches the player all spells 1-7 for war, life, creature and item
        /// upon their first login.
        /// </summary>
        /// <param name="player"></param>
        private static void AddAllSpellsOneThroughSeven(Player player)
        {
            for (uint spellLevel = 1; spellLevel <= 7; spellLevel++)
            {
                LearnSpellsInBulk(player, MagicSchool.CreatureEnchantment, spellLevel, false);
                LearnSpellsInBulk(player, MagicSchool.ItemEnchantment, spellLevel, false);
                LearnSpellsInBulk(player, MagicSchool.LifeMagic, spellLevel, false);
                //player.LearnSpellsInBulk(MagicSchool.VoidMagic, spellLevel, false);
                LearnSpellsInBulk(player, MagicSchool.WarMagic, spellLevel, false);
            }
        }

        /// <summary>
        ///  Learns spells in bulk, without notification, filtered by school and level.
        ///  This method also weeds out any spells that are not common or spells that were
        ///  castable by the player in retail.
        /// </summary>
        public static void LearnSpellsInBulk(Player player, MagicSchool school, uint spellLevel, bool withNetworking = true)
        {
            var spellTable = DatManager.PortalDat.SpellTable;

            foreach (var spellID in PlayerSpellTable)
            {
                if (!spellTable.Spells.ContainsKey(spellID))
                {
                    Console.WriteLine($"Unknown spell ID in PlayerSpellID table: {spellID}");
                    continue;
                }
                var spell = new Spell(spellID, false);
                if (spell.School == school && spell.Formula.Level == spellLevel)
                {
                    if (spell.Name.Contains("Legendary") || spell.Name.Contains("Epic") ||
                            spell.Name.Contains("Major") || spell.Name.Contains("Minor") ||
                            spell.Name.Contains("Moderate") || spell.Name.Contains("Prodigal"))
                    {
                        continue;
                    }
                    else
                    {
                        player.AddKnownSpell(spell.Id);
                    }
                }
            }
        }

        /// <summary>
        /// Preloads a spellbar with recall spells for the player
        /// on first login.
        /// </summary>
        /// <param name="player"></param>
        private static void LoadDefaultSpellBars(Player player)
        {
            // Recall Spells
            uint barNumber = 0;
            uint indexInBar = 0;
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2645, player.CharacterDatabaseLock); // Portal Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 48, player.CharacterDatabaseLock); // Primary Portal Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 157, player.CharacterDatabaseLock); // Summon Primary Portal I
            player.Character.AddSpellToBar(barNumber, indexInBar++, 47, player.CharacterDatabaseLock); // Primary Portal Tie
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2647, player.CharacterDatabaseLock); // Secondary Portal Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2648, player.CharacterDatabaseLock); // Summon Secondary Portal I
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2646, player.CharacterDatabaseLock); // Secondary Portal Tie
            player.Character.AddSpellToBar(barNumber, indexInBar++, 1635, player.CharacterDatabaseLock); // Lifestone Recall
            player.Character.AddSpellToBar(barNumber, indexInBar++, 2644, player.CharacterDatabaseLock); // Lifestone Tie
        }

        public static void handleSalvaging(Session session)
        {
            session.Player.SendWeenieError(WeenieError.ItemsAttemptingToSalvageIsInvalid);
        }

        /// <summary>
        /// Prevents the use of void in PVP.  Void is only
        /// allowed in PVE.
        /// </summary>
        /// <param name="spell"></param>
        /// <param name="targetPlayer"></param>
        /// <returns></returns>
        public static bool disableVoidAgainstPlayers(Spell spell, Player targetPlayer)
        {
            if (spell.School == MagicSchool.VoidMagic && targetPlayer != null)
            {
                return true;
            }

            return false;
        }

        /// <summary>
        /// Prevents players from purchasing cottages or villas
        /// </summary>
        /// <param name="slumlord"></param>
        /// <returns></returns>
        public static bool disablePurchaseCottageOrVilla(SlumLord slumlord)
        {
            if (slumlord.House.HouseType == HouseType.Cottage || slumlord.House.HouseType == HouseType.Villa)
            {
                return true;
            }

            return false;
        }

        /// <summary>
        /// Creates a random string to assign as the players
        /// name upon each login.
        /// </summary>
        /// <param name="player"></param>
        public static void SetRandomizedPlayerName(Player player)
        {
            Random random = new Random();
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            string randomizedName = new string(Enumerable.Repeat(chars, 10)
                .Select(s => s[random.Next(s.Length)]).ToArray());

            CheckIfRandomizedNameExists(randomizedName, player);
        }

        /// <summary>
        /// Checks if the randomized string created for a
        /// players name is in use already.  If the name is already
        /// in use then recursively call SetRandomizedPlayerName() again.
        /// </summary>
        /// <param name="randomizedName"></param>
        /// <param name="player"></param>
        public static void CheckIfRandomizedNameExists(String randomizedName, Player player)
        {
            List<String> randomizedNames = DatabaseManager.Custom.GetAllCustomPlayers().Select(x => x.PlayerModifiedName).ToList();

            if (randomizedNames.Contains(randomizedName))
            {
                SetRandomizedPlayerName(player);
            }
            else
            {
                player.modifiedName = randomizedName;
            }
        }

        public static void ResetPlayerName(Player player)
        {
            player.Name = player.Character.Name;
        }

        /// <summary>
        /// Sets or creates a new custom player object for each player upon login.
        /// </summary>
        /// <param name="player"></param>
        public static void SetCustomPlayer(Player player)
        {
            if (!player.IsPlussed && player.CloakStatus == CloakStatus.Undef)
            {
                DatabaseManager.Custom.CreateCustomPlayer(player.Character.Id, player.BaseName,
                    player.modifiedName, player.LoginTimestamp, player.CustomPlayer, CustomData.customPlayers);
            }
        }

        /// <summary>
        /// Used to retrieve the players name.  Determines if the name
        /// returned should be the base name, randomized/modified name, or
        /// an "Anonymous" name.
        /// </summary>
        /// <param name="basePlayerName"></param>
        /// <param name="player"></param>
        /// <returns></returns>
        public static String GetPlayerName(String basePlayerName, Player player)
        {
            String playerName = player.Character.Name;
            String modifiedName = player.modifiedName;

            if (isWorldObjectCreation)
            {
                return basePlayerName;
            }
            else if (isGameActionBuyHouse)
            {
                return GetAnonymousName();
            }
            else if (isFriendByRealName || isAddRemoveSquelch)
            {
                isAddRemoveSquelch = false;
                //isFriendByRealName = false;
                isAllegianceChat = false;
                return basePlayerName;
            }
            else if (isAllegianceChat && player.CustomPlayer.UseRealNameAllegiance)
            {
                return basePlayerName;
            }
            else if (isFellowshipChat && player.CustomPlayer.UseRealNameFellowship)
            {
                return basePlayerName;
            }
            else
            {
                if (player.CustomPlayer.PlayerModifiedName != null)
                {
                    return player.CustomPlayer.PlayerModifiedName;
                }
                else
                {
                    return basePlayerName;
                }              
            }
        }

        /// <summary>
        /// Used to retrieve the friends name.  Determines if the name
        /// returned should be the base name, randomized/modified name, or
        /// an "Anonymous" name.  Only returns the base name if it is a friend
        /// who was added by their real name using the custom playercommand.
        /// </summary>
        /// <param name="basePlayerName"></param>
        /// <param name="player"></param>
        /// <returns></returns>
        public static String GetFriendName(IPlayer friend, Player player)
        {
            if (friend != null)
            {
                if (friend.GetType() == typeof(OfflinePlayer))
                {
                    if (isAddFriendByActualName || IsFriendByRealName(friend.Name, player))
                    {
                        return friend.Name;
                    }

                    return GetAnonymousName();
                }
                else if (friend.GetType() == typeof(Player))
                {
                    Player onlineFriend = (Player)friend;

                    if (isAddFriendByActualName || IsFriendByRealName(onlineFriend.BaseName, player))
                    {
                        return onlineFriend.BaseName;
                    }

                    if (onlineFriend.modifiedName != null)
                    {
                        return onlineFriend.modifiedName;
                    }
                    else
                    {
                        return GetAnonymousName();
                    }
                }
            }

            return "";
        }

        /// <summary>
        /// Used to retrieve the players name displayed in a house guest/storage list.
        /// Determines if the name returned should be the base name or randomized/modified name.
        /// Only returns the base name if it is a friend
        /// who was added by their real name using the custom playercommand.
        /// </summary>
        /// <param name="homeOwnerId"></param>
        /// <param name="guest"></param>
        /// <returns></returns>
        public static String GetHouseGuestAndStorageName(uint homeOwnerId, IPlayer guest)
        {
            IPlayer homeOwner = PlayerManager.FindByGuid(homeOwnerId);

            if (guest.GetType() == typeof(Player))
            {
                if (IsFriendByRealName(((Player)guest).BaseName, (Player)homeOwner))
                {
                    return ((Player)guest).BaseName;
                }

                return ((Player)guest)?.modifiedName ?? guest.Name;
            }
            else if (guest.GetType() == typeof(OfflinePlayer))
            {
                CustomPlayer customPlayer = DatabaseManager.Custom.GetSingleCustomPlayer(guest.Guid.Full);

                if (customPlayer != null && IsFriendByRealName(customPlayer.PlayerRealName, (Player)homeOwner))
                {
                    return customPlayer.PlayerRealName;
                }

                return customPlayer?.PlayerModifiedName ?? guest.Name;
            }

            return guest.Name;
        }

        /// <summary>
        /// Returns the name as "Anonymous" in certain situtations where
        /// logic for returning base name or modified name have not been implemented yet.
        /// </summary>
        /// <returns></returns>
        public static String GetAnonymousName()
        {
            return "Anonymous";
        }

        /// <summary>
        /// Adds friends to custom friend table which contains a
        /// mapping of their base name and modified name.
        /// </summary>
        /// <param name="friend"></param>
        /// <param name="player"></param>
        public static void AddFriend(IPlayer friend, Player player)
        {
            if (friend.GetType() == typeof(Player))
            {
                CustomFriend friendEntry =
                    DatabaseManager.Custom.AddFriend(player.Character.Id, friend.Guid.Full, ((Player)friend).BaseName, ((Player)friend).modifiedName, isAddFriendByActualName);

                if (friendEntry != null)
                {
                    CustomData.customFriends.Add(friendEntry);
                    player.CustomPlayer.CustomFriends.Add(friendEntry);
                }
            }
            else if (friend.GetType() == typeof(OfflinePlayer))
            {
                CustomFriend friendEntry =
                    DatabaseManager.Custom.AddFriend(player.Character.Id, friend.Guid.Full, friend.Name, GetAnonymousName(), isAddFriendByActualName);

                if (friendEntry != null)
                {
                    CustomData.customFriends.Add(friendEntry);
                    player.CustomPlayer.CustomFriends.Add(friendEntry);
                }
            }
        }

        /// <summary>
        /// Removes friends from the custom friend table which contains a
        /// mapping of their base name and modified name.
        /// </summary>
        public static void RemoveFriend(uint friendId, Player player)
        {
            CustomFriend friendEntry =
                CustomData.customFriends.Where(x => x.FriendId == friendId && x.CharacterId == player.Character.Id).FirstOrDefault();
            player.CustomPlayer.CustomFriends.Remove(friendEntry);

            if (friendEntry != null)
            {
                DatabaseManager.Custom.RemoveFriend(friendEntry);
            }           
        }

        /// <summary>
        /// Adds squelches to the custom squelch table which contains a
        /// mapping of their base name and modified name.
        /// </summary>
        /// <param name="player"></param>
        /// <param name="squelchPlayer"></param>
        /// <param name="squelchAccountId"></param>
        /// <param name="type"></param>
        public static void AddCharacterSquelch(Player player, IPlayer squelchPlayer, uint squelchAccountId, uint type)
        {
            if (squelchPlayer.GetType() == typeof(Player))
            {
                CustomSquelch squelchEntry =
                    DatabaseManager.Custom.AddSquelch(player.Character.Id, squelchPlayer.Guid.Full, ((Player)squelchPlayer).BaseName,
                        ((Player)squelchPlayer).modifiedName, squelchAccountId, type);

                if (squelchEntry != null)
                {
                    player.CustomPlayer.CustomSquelches.Add(squelchEntry);
                }
            }
            else if (squelchPlayer.GetType() == typeof(OfflinePlayer))
            {
                CustomSquelch squelchEntry =
                    DatabaseManager.Custom.AddSquelch(player.Character.Id, squelchPlayer.Guid.Full, squelchPlayer.Name,
                        GetAnonymousName(), squelchAccountId, type);

                if (squelchEntry != null)
                {
                    player.CustomPlayer.CustomSquelches.Add(squelchEntry);
                }
            }
        }

        /// <summary>
        /// Updates squelches in the custom squelch table which contains a
        /// mapping of their base name and modified name.
        /// </summary>
        public static void UpdateSquelches(SquelchDB squelches)
        {
            foreach (SquelchInfo squelch in squelches.Characters.Values)
            {
                CustomPlayer nameMap = DatabaseManager.Custom.GetSingleCustomPlayerByName(squelch.PlayerName);

                if (nameMap != null)
                {
                    squelch.PlayerName = nameMap.PlayerModifiedName;
                }
            }
        }

        /// <summary>
        /// Checks a players Custom friends to determine if a friend should
        /// be revealed by their base name or modified name.
        /// </summary>
        /// <param name="friendName"></param>
        /// <param name="player"></param>
        /// <returns></returns>
        public static bool IsFriendByRealName(String friendName, Player player)
        {
            return player.CustomPlayer.CustomFriends.Where(x => x.CharacterId == player.Character.Id && x.FriendRealName == friendName && x.IsRealName).Any();
        }

        /// <summary>
        /// Toggles a flag when allegiance chat is used by a player
        /// </summary>
        /// <param name="adjustedChannelID"></param>
        public static void IsAllegianceChat(uint adjustedChannelID)
        {
            if (adjustedChannelID > TurbineChatChannel.Olthoi || adjustedChannelID == TurbineChatChannel.Allegiance)
            {
                isAllegianceChat = true;
            }
        }

        /// <summary>
        /// Saves custom player to the database when the player is saved
        /// </summary>
        /// <param name="customPlayer"></param>
        public static void SaveCustomPlayerChanges(CustomPlayer customPlayer)
        {
            if (customPlayer != null && customPlayer.CustomPlayerChangesDetected)
            {
                DatabaseManager.Custom.SaveCustomPlayerToDatabase(customPlayer);
            }
        }

        public static void DeleteCustomPlayer(CustomPlayer customPlayer)
        {
            if (customPlayer != null)
            {
                DatabaseManager.Custom.DeleteCustomPlayer(customPlayer);
            }
        }

        public static void SetPlayerTargetForBreakingWarDetect(Session session)
        {
            session.Player.playerTarget = ACE.Server.Factories.WorldObjectFactory.CreateNewWorldObject(100154);
            session.Player.playerTarget.SetPosition(ACE.Entity.Enum.Properties.PositionType.Location, new Position(session.Player.Location));
            session.Player.playerTarget.Location = session.Player.Location;
            LandblockManager.AddObject(session.Player.playerTarget, true);
        }

        public static uint TargetPlayersInvisibleTargetDummyToBreakWarDetect(TurnToObject turnTo)
        {
            if (turnTo.Target.IsPlayer())
            {
                IPlayer player = ACE.Server.Managers.PlayerManager.FindByGuid(turnTo.Target.Full);

                if (player.GetType() == typeof(Player) || player.GetType() == typeof(Admin))
                {
                    // THIS BLOCK IS FOR THE INVISIBLE TARGET THAT FOLLOWS A PLAYER
                    WorldObject targetObject = ((Player)player).playerTarget;
                    targetObject.SetPosition(ACE.Entity.Enum.Properties.PositionType.Location, new Position(((Player)player).Location));
                    // OR
                    //targetObject.SetPosition(ACE.Entity.Enum.Properties.PositionType.Location, new Position(Position));
                    targetObject.Location = ((Player)player).Location;
                    //turnTo.Target.Full = targetObject.Guid.Full;
                    return targetObject.Guid.Full;
                }
            }

            return turnTo.Target.Full;
        }

        //public static uint TargetPlayerWieldedItemToBreakWarDetect(TurnToObject turnTo)
        //{
        //    if (turnTo.Target.IsPlayer())
        //    {
        //        IPlayer player = ACE.Server.Managers.PlayerManager.FindByGuid(turnTo.Target.Full);

        //        if (player.GetType() == typeof(Player) || player.GetType() == typeof(Admin))
        //        {
        //            targetObject.SetPosition(ACE.Entity.Enum.Properties.PositionType.Location, new Position(((Player)player).Location));
        //            // OR
        //            //targetObject.SetPosition(ACE.Entity.Enum.Properties.PositionType.Location, new Position(Position));
        //            targetObject.Location = ((Player)player).Location;
        //            return targetObject.Guid.Full;
        //        }
        //    }

        //    return turnTo.Target.Full;
        //}

        public static void SetPlayerTargetLocation(Player player, Position newPosition)
        {
            player.playerTarget.Location = newPosition;
        }

        public static void SendUpdatePlayerTargetPosition(Player player)
        {
            player.playerTarget.SendUpdatePosition();
        }

        public static void EnqueueSendGameMessageUpdatePlayerTargerPosition(Player player)
        {
            player.Session.Network.EnqueueSend(new GameMessageUpdatePosition(player.playerTarget));
        }

        public static void RelocatePlayerTargetObjectForPhysics(Player player)
        {
            LandblockManager.RelocateObjectForPhysics(player.playerTarget, true);
        }

        /// <summary>
        /// Spell id's that are used for creating known spells for a player
        /// upon first login.  Some of these Id's are filtered out with logic
        /// in the method used for creating them.
        /// </summary>
        public static uint[] PlayerSpellTable = {
            1,2,3,5,6,7,9,15,16,17,18,19,20,21,22,23,24,25,26,27,28,35,36,37,38,47,48,49,
            50,51,53,54,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,99,
            100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,
            150,151,152,153,154,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,
            203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,
            250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,290,291,292,293,294,295,296,297,298,299,
            300,301,302,303,304,305,306,307,308,309,310,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,337,339,340,341,342,343,344,345,346,347,348,349,
            350,351,352,353,354,355,356,357,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,388,389,390,391,392,393,394,395,396,397,398,399,
            400,401,402,403,404,405,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,433,436,437,438,439,440,441,442,443,444,445,446,447,448,449,
            450,451,452,453,454,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,
            500,501,502,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,
            550,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,577,578,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,
            604,605,606,607,608,609,610,611,612,613,614,615,616,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,646,647,648,649,
            650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,691,692,694,695,696,697,698,699,
            700,701,702,703,704,705,706,707,708,709,710,711,712,713,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,743,744,745,746,747,748,749,
            750,751,752,753,754,755,756,757,758,759,760,761,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,791,792,793,794,795,796,797,798,799,
            800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,824,825,826,827,828,829,830,831,832,833,834,835,836,842,843,844,845,846,847,848,849,
            850,851,852,853,854,855,856,857,858,859,860,861,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,891,892,893,894,895,896,897,898,899,
            900,901,902,903,904,905,906,907,908,909,910,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,939,940,941,942,943,944,945,946,947,948,949,
            950,951,952,953,954,955,956,957,958,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,998,999,
            1000,1001,1002,1003,1004,1005,1006,1007,1009,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1043,1044,1045,1046,1047,1048,1049,
            1050,1051,1052,1053,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,
            1100,1101,1102,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1148,1149,
            1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,
            1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1230,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,
            1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1272,1273,1274,1275,1276,1277,1278,1279,1280,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,
            1300,1301,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1335,1336,1337,1339,1340,1341,1342,1343,1344,1345,1348,1349,
            1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1360,1362,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1388,1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,
            1400,1401,1402,1403,1404,1405,1406,1407,1408,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1429,1430,1431,1432,1437,1438,1439,1440,1441,1442,1443,1444,1445,1446,1447,1448,1449,
            1450,1451,1452,1453,1454,1455,1456,1458,1459,1461,1463,1464,1465,1466,1467,1468,1469,1470,1471,1472,1473,1474,1475,1476,1477,1478,1479,1480,1482,1483,1484,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,
            1500,1501,1502,1503,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1521,1522,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532,1533,1534,1535,1536,1537,1538,1539,1540,1541,1542,1543,1544,1545,1546,1547,1548,1549,
            1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1561,1562,1563,1564,1565,1566,1567,1568,1569,1570,1571,1572,1573,1574,1575,1576,1577,1578,1579,1580,1581,1582,1583,1584,1585,1586,1587,1588,1589,1590,1591,1592,1593,1594,1595,1596,1597,1598,1599,
            1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612,1613,1614,1615,1616,1617,1618,1619,1620,1621,1623,1624,1625,1626,1627,1629,1630,1631,1632,1633,1635,1636,1637,1639,1640,1643,
            1664,1665,1666,1667,1668,1669,1676,1677,1678,1679,1680,1681,
            1702,1703,1704,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,
            1750,1751,1756,1757,1758,1759,1760,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1772,1773,1774,1777,1778,1779,1780,1783,1784,1785,1786,1787,1788,1789,1790,1791,1792,1793,1794,1795,1796,1797,1798,1799,
            1800,1801,1802,1803,1804,1805,1806,1807,1808,1809,1810,1811,1812,1813,1814,1815,1816,1817,1818,1819,1820,1821,1822,1823,1824,1825,1826,1827,1828,1829,1830,1831,1839,1840,1841,1842,1843,1844,1845,
            1876,1882,1883,1884,1885,1886,1887,1888,1889,1890,1891,1892,1893,1894,1895,1896,1897,1898,1899,
            1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,
            1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,
            2052,2053,2054,2056,2058,2059,2060,2061,2062,2064,2066,2067,2068,2070,2072,2073,2074,2075,2076,2077,2078,2080,2081,2082,2083,2084,2086,2087,2088,2090,2091,2092,2093,2094,2095,2096,2097,2098,2099,
            2100,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2132,2133,2134,2135,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145,2146,2147,2148,2149,
            2150,2151,2152,2153,2154,2155,2156,2157,2158,2159,2160,2161,2162,2164,2166,2168,2170,2172,2174,2176,2177,2178,2179,2180,2182,2183,2184,2185,2186,2187,2188,2190,2191,2192,2194,2195,2196,2197,2198,
            2200,2202,2203,2204,2206,2207,2208,2210,2211,2212,2214,2215,2216,2218,2219,2220,2222,2223,2224,2226,2227,2228,2230,2232,2233,2234,2236,2237,2238,2240,2241,2242,2243,2244,2245,2246,2248,2249,
            2250,2251,2252,2254,2256,2257,2258,2259,2260,2262,2263,2264,2266,2267,2268,2270,2271,2272,2274,2275,2276,2277,2278,2280,2281,2282,2283,2284,2285,2286,2287,2288,2289,2290,2291,2292,2293,2294,2295,2296,2298,2299,
            2300,2301,2302,2304,2305,2306,2308,2309,2310,2312,2313,2314,2315,2316,2317,2318,2320,2322,2323,2324,2325,2326,2328,2329,2330,2332,2334,2335,2336,2337,2339,2341,2343,2345, 
            2644,2645,2646,2647,2648,2649,
            2650,
            2711,2712,2713,2714,2715,2716,2717,2718,2719,2720,2721,2722,2723,2724,2725,2726,2727,2728,2729,2730,2731,2732,2733,2734,2735,2736,2737,2738,2739,2740,2741,2742,2743,2744,2745,2746,2747,2748,2749,
            2750,2751,2752,2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2763,2764,2765,2766,2767,2768,2769,2770,2771,2772,2773,2774,2775,2776,2777,2778,2779,2780,
            3179,3180,3184,3185,3186,3187,3188,3189,3190,3191,3192,3193,3194,3195,3196,3197,3198,
            3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,3265,3266,
            3499,
            3500,3501,3502,3503,3504,3505,3506,3507,3508,3509,3510,3511,3512,3513,3514,3515,3516,3517,3518,3519,3520,3521,3522,3523,3524,3525,3526,
            3653,3654,3655,3656,3657,3658,3659,3660,3661,3662,3663,3664,3665,3666,3667,3668,3669,3670,3671,3672,3673,3674,3675,3676,3677,3678,5037,5038,5039,5040,5041,5042,5043,5044,5045,5046,5047,5048,5049,
            5050,5051,5052,5053,5054,5055,5056,5057,5058,5059,5060,5061,5062,5063,5064,5065,5066,5067,5074,5075,5076,5077,5078,5079,5080,5081,5082,5083,5084,5085,5086,5087,5088,5089,5090,5091,5092,5093,5094,5095,5096,5097,5098,5099,
            5100,5101,5102,5103,5104,5105,5120,5121,5122,
            5155,5156,5157,5158,5159,5182,5183,
            5314,5337,5338,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,
            5350,5351,5352,5353,5354,5355,5356,5357,5358,5359,5360,5361,5362,5363,5364,5365,5366,5367,5368,5369,5370,5371,5372,5373,5374,5375,5376,5377,5378,5379,5380,5381,5382,5383,5384,5385,5386,5387,5388,5389,5390,5391,5392,5393,5394,5395,5396,5397,5398,5399,
            5400,5401,5402,5403,5404,5405,5406,5407,5408,5409,5410,5411,5412,5413,5414,5415,5416,5417,5418,5419,5420,5421,5422,5423,5424,5425,5426,5427,5428,5429,5430,5435,5436,
            5544,5545,5546,5547,5548,5549,
            5550,5551,
            5763,5764,5765,5766,5767,5768,5769,5770,5771,5772,5773,5774,5775,5776,5777,5778,5779,5780,5781,5782,5783,5784,5785,5786,5787,5788,5789,5790,5791,5792,5793,5794,5795,5796,5797,5798,5799,
            5800,5801,5802,5803,5804,5805,5806,5807,5808,5809,5810,5811,5812,5813,5814,5815,5816,5817,5818,5819,5820,5821,5822,5823,5824,5825,5826,5827,5828,5829,5830,5831,5832,5833,5834,5835,5836,5837,5838,5839,5840,5841,5842,5843,5844,5845,5846,5847,5848,5849,
            5850,5851,5852,5853,5854,5855,5856,5857,5858,5859,5860,5861,5862,5863,5864,5865,5866,5867,5868,5869,5870,5871,5872,5873,5874,5875,5876,5877,5878,5879,5880,5881,5882,5883,5884,5885,5886,5887,5888,5889,5890,5891,5892,5893,5894,5895,5896,5897,
            5903,5905,5907,5909,5911,
            5982,5983,5984,5985,5986,5987,5988,5989,5990,5991,5992,5993,5994,5995,5996,5997,5998,5999,
            6000,6001,6002,6003,6004,6005,6006,6007,6008,6009,6010,6011,6012,6013,6014,6015,6016,6017,6018,6019,6020,6021,6022,6023,6024,6025,6026,6027,6028,6029,6030,6031,6039,6040,6041,6042,6043,6044,6045,6046,6047,6048,6049,
            6050,6051,6052,6053,6054,6055,6056,6057,6058,6059,6060,6061,6062,6063,6064,6065,6066,6067,6068,6069,6070,6071,6072,6073,6074,6075,6079,6080,6081,6082,6083,6084,6085,6086,6087,6088,6089,6090,6091,6092,6093,6094,6095,6096,6097,6098,6099,
            6100,6101,6102,6103,6104,6105,6106,6107,6108,6109,6110,6111,6112,6113,6114,6115,6116,6117,6118,6119,6120,6121,6122,6123,6124,6125,6126,6127,6129,6130,6131,6132,6133,6134,6135,6136,
            6153,6195,6198,6199,
            6320
        };

        /// <summary>
        /// Buffs casted on a player on their first login.
        /// </summary>
        // TODO: switch this over to SpellProgressionTables
        private static string[] Buffs = new string[] {
#region spells
            // @ indicates impenetrability or a bane
            "Strength",
            "Invulnerability",
            "FireProtection",
            "Armor",
            "Rejuvenation",
            "Regeneration",
            "ManaRenewal",
            "Impregnability",
            "MagicResistance",
            //"AxeMastery",    // light weapons
            "LightWeaponsMastery",
            //"DaggerMastery", // finesse weapons
            "FinesseWeaponsMastery",
            //"MaceMastery",
            //"SpearMastery",
            //"StaffMastery",
            //"SwordMastery",  // heavy weapons
            "HeavyWeaponsMastery",
            //"UnarmedCombatMastery",
            //"BowMastery",    // missile weapons
            "MissileWeaponsMastery",
            //"CrossbowMastery",
            //"ThrownWeaponMastery",
            "AcidProtection",
            "CreatureEnchantmentMastery",
            "ItemEnchantmentMastery",
            "LifeMagicMastery",
            "WarMagicMastery",
            "ManaMastery",
            "ArcaneEnlightenment",
            "ArcanumSalvaging",
            "ArmorExpertise",
            "ItemExpertise",
            "MagicItemExpertise",
            "WeaponExpertise",
            "MonsterAttunement",
            "PersonAttunement",
            "DeceptionMastery",
            "HealingMastery",
            "LeadershipMastery",
            "LockpickMastery",
            "Fealty",
            "JumpingMastery",
            "Sprint",
            "BludgeonProtection",
            "ColdProtection",
            "LightningProtection",
            "BladeProtection",
            "PiercingProtection",
            "Endurance",
            "Coordination",
            "Quickness",
            "Focus",
            "Willpower",
            "CookingMastery",
            "FletchingMastery",
            "AlchemyMastery",
            "VoidMagicMastery",
            "SummoningMastery",
            "SwiftKiller",
            "Defender",
            "BloodDrinker",
            "HeartSeeker",
            "HermeticLink",
            "SpiritDrinker",
            "DualWieldMastery",
            "TwoHandedMastery",
            "DirtyFightingMastery",
            "RecklessnessMastery",
            "SneakAttackMastery",
            "@Impenetrability",
            "@PiercingBane",
            "@BludgeonBane",
            "@BladeBane",
            "@AcidBane",
            "@FlameBane",
            "@FrostBane",
            "@LightningBane",
#endregion
            };
    }
}
