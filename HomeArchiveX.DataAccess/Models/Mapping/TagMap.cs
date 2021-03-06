using HomeArchiveX.Model;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class TagMap : EntityTypeConfiguration<Tag>
    {
        public TagMap()
        {
            // Primary Key
            this.HasKey(t => t.TagKey);

            // Properties
            this.Property(t => t.TagTitle)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Tag");
            this.Property(t => t.TagKey).HasColumnName("TagKey");
            this.Property(t => t.TagTitle).HasColumnName("TagTitle");
            this.Property(t => t.ModififedDate).HasColumnName("ModififedDate");
        }
    }
}
