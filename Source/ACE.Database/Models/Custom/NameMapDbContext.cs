using Microsoft.EntityFrameworkCore;

namespace ACE.Database.Models.Custom
{
    public partial class CustomDbContext : DbContext
    {
        public CustomDbContext()
        {

        }

        public CustomDbContext(DbContextOptions<CustomDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<CustomNameMap> NameMaps { get; set; }

        public virtual DbSet<CustomFriendList> Friends { get; set; }

        public virtual DbSet<CustomSquelch> Squelches { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                var config = Common.ConfigManager.Config.MySql.Custom;

                var connectionString = $"server={config.Host};port={config.Port};user={config.Username};password={config.Password};database={config.Database};TreatTinyAsBoolean=False";

                optionsBuilder.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString), builder =>
                {
                    builder.EnableRetryOnFailure(10);
                });
            }

#if EFPKNAMEMAPDEBUG
            optionsBuilder.EnableSensitiveDataLogging(true);
#endif

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CustomNameMap>(entity =>
            {
                entity.HasKey(e => e.PlayerId)
                    .HasName("PRIMARY");

                entity.Property(e => e.PlayerId).HasColumnName("player_id");

                entity.ToTable("custom_name_map");

                entity.Property(e => e.PlayerRealName)
                    .HasColumnName("player_real_name");

                entity.Property(e => e.PlayerModifiedName)
                    .HasColumnName("player_modified_name");

                entity.Property(e => e.LastLoginTimestamp)
                    .HasColumnName("last_login_timestamp");

                entity.Property(e => e.LoginCount)
                    .HasColumnName("login_count");
            });

            modelBuilder.Entity<CustomFriendList>(entity =>
            {
                entity.HasKey(e => e.CharacterId)
                    .HasName("PRIMARY");

                entity.Property(e => e.CharacterId).HasColumnName("character_id");

                entity.HasKey(e => e.FriendId)
                    .HasName("PRIMARY");

                entity.Property(e => e.FriendId).HasColumnName("friend_id");

                entity.ToTable("custom_friend_list");

                entity.Property(e => e.FriendRealName)
                    .HasColumnName("friend_real_name");

                entity.Property(e => e.FriendModifiedName)
                    .HasColumnName("friend_modified_name");

                entity.Property(e => e.IsRealName)
                    .HasColumnName("is_real_name");
            });

            modelBuilder.Entity<CustomSquelch>(entity =>
            {
                entity.HasKey(e => e.CharacterId)
                    .HasName("PRIMARY");

                entity.Property(e => e.CharacterId).HasColumnName("character_id");

                entity.HasKey(e => e.SquelchCharacterId)
                    .HasName("PRIMARY");

                entity.Property(e => e.SquelchCharacterId).HasColumnName("squelch_character_id");

                entity.ToTable("custom_squelch");

                entity.Property(e => e.SquelchAccountId)
                    .HasColumnName("squelch_account_id");

                entity.Property(e => e.SquelchRealName)
                    .HasColumnName("squelch_real_name");

                entity.Property(e => e.SquelchModifiedName)
                    .HasColumnName("squelch_modified_name");

                entity.Property(e => e.SquelchType)
                    .HasColumnName("type");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
