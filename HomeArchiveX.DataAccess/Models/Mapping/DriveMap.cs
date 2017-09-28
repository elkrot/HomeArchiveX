using HomeArchiveX.Model;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace HomeArchiveX.DataAccess.Models.Mapping
{
    public class DriveMap : EntityTypeConfiguration<Drive>
    {
        public DriveMap()
        {
            // Primary Key
            this.HasKey(t => t.DriveId);

            // Properties
            this.Property(t => t.Title)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.DriveInfo)
                .IsRequired();

            this.Property(t => t.DriveCode)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Drive");
            this.Property(t => t.DriveId).HasColumnName("DriveId");
            this.Property(t => t.Title).HasColumnName("Title");
            this.Property(t => t.HashCode).HasColumnName("HashCode");
            this.Property(t => t.DriveInfo).HasColumnName("DriveInfo");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.DriveCode).HasColumnName("DriveCode");
        }
    }
}
