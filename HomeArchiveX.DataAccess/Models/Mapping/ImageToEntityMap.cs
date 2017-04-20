using System.ComponentModel.DataAnnotations;
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
        }
    }
}
