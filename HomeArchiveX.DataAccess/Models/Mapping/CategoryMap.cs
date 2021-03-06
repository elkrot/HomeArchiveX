using HomeArchiveX.Model;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class CategoryMap : EntityTypeConfiguration<Category>
    {
        public CategoryMap()
        {
            // Primary Key
            this.HasKey(t => t.CategoryKey);

            this.Property(t => t.CategoryTitle)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Category");
            this.Property(t => t.CategoryKey).HasColumnName("CategoryKey");
            this.Property(t => t.CategoryTitle).HasColumnName("CategoryTitle");
            this.Property(t => t.ParentCategoryKey).HasColumnName("ParentCategoryKey");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
        }
    }
}
