using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACE.Database.Models.Custom
{
    public partial class NameMapDbContext : DbContext
    {
        public NameMapDbContext()
        {

        }

        public NameMapDbContext(DbContextOptions<NameMapDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<CustomNameMap> NameMaps { get; set; }

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

#if EFPKKILLSDEBUG
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

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
