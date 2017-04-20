using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class TagToEntityMap : EntityTypeConfiguration<TagToEntity>
    {
        public TagToEntityMap()
        {
            // Primary Key
            this.HasKey(t => new { t.TargetEntityKey, t.TagKey, t.ModifiedDate });

            // Properties
            this.Property(t => t.TargetEntityKey)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.TagKey)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("TagToEntity");
            this.Property(t => t.TargetEntityKey).HasColumnName("TargetEntityKey");
            this.Property(t => t.TagKey).HasColumnName("TagKey");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");
        }
    }
}
