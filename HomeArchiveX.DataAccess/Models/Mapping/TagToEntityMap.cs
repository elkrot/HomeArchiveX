using HomeArchiveX.Model;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class TagToEntityMap : EntityTypeConfiguration<TagToEntity>
    {
        public TagToEntityMap()
        {
            // Primary Key
            this.HasKey( t => new { t.TargetEntityKey, t.TagKey } );

            // Properties
            this.Property(t => t.TargetEntityKey)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("TagToEntity");
            this.Property(t => t.TargetEntityKey).HasColumnName("TargetEntityKey");
            this.Property(t => t.TagKey).HasColumnName("TagKey");
            this.Property(t => t.ModifiedDate).HasColumnName("ModifiedDate");

            // Relationships
            this.HasRequired(t => t.ArchiveEntity)
                .WithMany(t => t.TagToEntities)
                .HasForeignKey(t => t.TargetEntityKey);

            this.HasRequired(t => t.Tag)
                .WithMany(t => t.TagToEntities)
                .HasForeignKey(d => d.TagKey);

        }
    }
}
