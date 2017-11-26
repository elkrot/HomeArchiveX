using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Security.Models.Mapping
{
    public class UserMap : EntityTypeConfiguration<User>
    {
        public UserMap()
        {
            // Primary Key
            this.HasKey(t => t.UserId);

            this.Property(t => t.Username)
                .HasMaxLength(100);

            this.Property(e => e.Username)
      .IsFixedLength();

            this.Property(e => e.Email)
                .IsFixedLength();

            this.Property(e => e.Password)
                .IsFixedLength();

            // Table & Column Mappings
            this.ToTable("User");
            this.Property(t => t.UserId).HasColumnName("UserId");
            this.Property(t => t.Username).HasColumnName("Username");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Password).HasColumnName("Password");

        }
    }
}
