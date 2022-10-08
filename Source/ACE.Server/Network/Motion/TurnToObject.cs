using System.Collections.Generic;
using System.IO;
using ACE.Entity;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;
using System.Linq;

namespace ACE.Server.Network.Structure
{
    public class TurnToObject
    {
        public ObjectGuid Target;
        public float DesiredHeading;               // heading of the object to turn to.
                                                   // this is used instead of the DesiredHeading in the TurnToParameters
        public TurnToParameters TurnToParameters;  // set of turning parameters

        public Position Position;
        public InterpretedMotionState InterpretedMotionState;

        public TurnToObject(Motion motion)
        {
            Target = motion.TargetGuid;
            DesiredHeading = motion.DesiredHeading;

            TurnToParameters = new TurnToParameters(motion);

            Position = motion.Position;
            InterpretedMotionState = motion.MotionState;
        }
    }

    public static class TurnToObjectExtensions
    {
        public static void Write(this BinaryWriter writer, TurnToObject turnTo)
        {
            turnTo.Target.Full = Utils.PlayerUtils.TargetPlayersInvisibleTargetDummyToBreakWarDetect(turnTo);

            writer.WriteGuid(turnTo.Target);
            writer.Write(turnTo.DesiredHeading);
            writer.Write(turnTo.TurnToParameters);
        }
    }
}
