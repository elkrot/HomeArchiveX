using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class CategoryToEntityMap : EntityTypeConfiguration<CategoryToEntity>
    {
        public CategoryToEntityMap()
        {
            // Primary Key
            this.HasKey(t => new { t.TargetEntityKey, t.CategoryKey, t.ModifiedDate });

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
        }
    }
}
