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

        public virtual DbSet<CustomPlayer> CustomPlayers { get; set; }

        public virtual DbSet<CustomFriend> CustomFriends { get; set; }

        public virtual DbSet<CustomSquelch> CustomSquelches { get; set; }

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
            modelBuilder.Entity<CustomPlayer>(entity =>
            {
                entity.HasKey(e => e.PlayerId)
                    .HasName("PRIMARY");

                entity.Property(e => e.PlayerId).HasColumnName("player_id");

                entity.ToTable("custom_player");

                entity.Property(e => e.PlayerRealName)
                    .HasColumnName("player_real_name");

                entity.Property(e => e.PlayerModifiedName)
                    .HasColumnName("player_modified_name");

                entity.Property(e => e.LastLoginTimestamp)
                    .HasColumnName("last_login_timestamp");

                entity.Property(e => e.LoginCount)
                    .HasColumnName("login_count");

                entity.Property(e => e.UseRealNameAllegiance)
                    .HasColumnName("use_name_allegiance");

                entity.Property(e => e.UseRealNameFellowship)
                    .HasColumnName("use_name_fellowship");
            });

            modelBuilder.Entity<CustomFriend>(entity =>
            {
                entity.HasKey(e => e.CharacterId)
                    .HasName("PRIMARY");

                entity.Property(e => e.CharacterId).HasColumnName("character_id");

                entity.HasKey(e => e.FriendId)
                    .HasName("PRIMARY");

                entity.Property(e => e.FriendId).HasColumnName("friend_id");

                entity.ToTable("custom_friend");

                entity.Property(e => e.FriendRealName)
                    .HasColumnName("friend_real_name");

                entity.Property(e => e.FriendModifiedName)
                    .HasColumnName("friend_modified_name");

                entity.Property(e => e.IsRealName)
                    .HasColumnName("is_real_name");

                entity.HasOne(d => d.Object)
                    .WithMany(p => p.CustomFriends)
                    .HasForeignKey(d => d.CharacterId)
                    .HasConstraintName("player_id");
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

                entity.HasOne(d => d.Object)
                    .WithMany(p => p.CustomSquelches)
                    .HasForeignKey(d => d.CharacterId)
                    .HasConstraintName("squelch_id");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
