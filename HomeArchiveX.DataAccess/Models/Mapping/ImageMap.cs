using HomeArchiveX.Model;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class ImageMap : EntityTypeConfiguration<Image>
    {
        public ImageMap()
        {
            // Primary Key
            this.HasKey(t => t.ImageKey);

            // Properties
            this.Property(t => t.ImagePath)
                .HasMaxLength(255);

            this.Property(t => t.ThumbnailPath)
                .HasMaxLength(255);

            this.Property(t => t.ImageTitle)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Image");
            this.Property(t => t.ImageKey).HasColumnName("ImageKey");
            this.Property(t => t.Thumbnail).HasColumnName("Thumbnail");
            this.Property(t => t.ImagePath).HasColumnName("ImagePath");
            this.Property(t => t.ThumbnailPath).HasColumnName("ThumbnailPath");
            this.Property(t => t.ImageTitle).HasColumnName("ImageTitle");
            this.Property(t => t.HashCode).HasColumnName("HashCode");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
        }

    }
}
