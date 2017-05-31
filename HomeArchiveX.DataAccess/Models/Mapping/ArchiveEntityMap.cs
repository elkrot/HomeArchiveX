using HomeArchiveX.Model;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class ArchiveEntityMap : EntityTypeConfiguration<ArchiveEntity>
    {
        public ArchiveEntityMap()
        {
            // Primary Key
            this.HasKey(t => t.ArchiveEntityKey);

            // Properties
            this.Property(t => t.Title)
                .IsRequired()
                .HasMaxLength(250);

            this.Property(t => t.EntityPath)
                .IsRequired()
                .HasMaxLength(250);

            this.Property(t => t.EntityExtension)
                .IsFixedLength()
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("ArchiveEntity");
            this.Property(t => t.ArchiveEntityKey).HasColumnName("ArchiveEntityKey");
            this.Property(t => t.ParentEntityKey).HasColumnName("ParentEntityKey");
            this.Property(t => t.DriveId).HasColumnName("DriveId");
            this.Property(t => t.Title).HasColumnName("Title");
            this.Property(t => t.EntityType).HasColumnName("EntityType");
            this.Property(t => t.EntityPath).HasColumnName("EntityPath");
            this.Property(t => t.EntityExtension).HasColumnName("EntityExtension");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.HashCode).HasColumnName("HashCode");
            this.Property(t => t.EntityInfo).HasColumnName("EntityInfo");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.MFileInfo).HasColumnName("MFileInfo");

            // Relationships
            this.HasOptional(t => t.ArchiveEntity2)
                .WithMany(t => t.ArchiveEntity1)
                .HasForeignKey(d => d.ParentEntityKey);
            this.HasOptional(t => t.Drive)
                .WithMany(t => t.ArchiveEntities)
                .HasForeignKey(d => d.DriveId);

        }
    }
}
