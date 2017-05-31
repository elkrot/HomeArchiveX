using HomeArchiveX.Model;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class ImageToEntityMap : EntityTypeConfiguration<ImageToEntity>
    {
        public ImageToEntityMap()
        {
            // Primary Key
            this.HasKey(t => new { t.TargetEntityKey, t.ImageKey });

            // Properties
            this.Property(t => t.TargetEntityKey)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.ImageKey)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("ImageToEntity");
            this.Property(t => t.TargetEntityKey).HasColumnName("TargetEntityKey");
            this.Property(t => t.ImageKey).HasColumnName("ImageKey");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");

            // Relationships
            this.HasRequired(t => t.ArchiveEntity)
                .WithMany(t => t.ImageToEntities)
                .HasForeignKey(d => d.TargetEntityKey);
            this.HasRequired(t => t.Image)
                .WithMany(t => t.ImageToEntities)
                .HasForeignKey(d => d.ImageKey);

        }
    }
}
