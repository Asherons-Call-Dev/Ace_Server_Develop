using ACE.Database.Models.Shard;
using ACE.Server.WorldObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Server.Utils
{
    public partial class CharacterName
    {
        private static Random random = new Random();

        public CharacterName(Character character)
        {
            this.Id = character.Id;
            this.Name = character.Name;
            this.LastLoginTimestamp = character.LastLoginTimestamp;
            this.Character = character;
            this.FakeName = RandomString();
        }

        public uint Id { get; set; }
        public string Name { get; set; }
        public string FakeName { get; set; }
        public double LastLoginTimestamp { get; set; }
        public Character Character { get; }

        public static string RandomString()
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            return new string(Enumerable.Repeat(chars, 10)
                .Select(s => s[random.Next(s.Length)]).ToArray());
        }
    }
}
