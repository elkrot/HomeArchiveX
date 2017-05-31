using HomeArchiveX.Model;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class CategoryToEntityMap : EntityTypeConfiguration<CategoryToEntity>
    {
        public CategoryToEntityMap()
        {
            // Primary Key
            this.HasKey(t => new { t.TargetEntityKey, t.CategoryKey });

            // Properties
            this.Property(t => t.TargetEntityKey)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.CategoryKey)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("CategoryToEntity");
            this.Property(t => t.TargetEntityKey).HasColumnName("TargetEntityKey");
            this.Property(t => t.CategoryKey).HasColumnName("CategoryKey");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");

            // Relationships
            this.HasRequired(t => t.ArchiveEntity)
                .WithMany(t => t.CategoryToEntities)
                .HasForeignKey(d => d.TargetEntityKey);
            this.HasRequired(t => t.Category)
                .WithMany(t => t.CategoryToEntities)
                .HasForeignKey(d => d.CategoryKey);

        }
    }
}

