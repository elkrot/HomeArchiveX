using System.Data.Entity;
using HomeArchiveX.Common.Implementations;
using HomeArchiveX.Security.Models.Mapping;

namespace HomeArchiveX.Security
{
    public partial class SecurityContext : DbContext, IDbContext
    {
        public SecurityContext()
            : base("name=SecurityContext")
        {
        }

        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<User> User { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new RoleMap());
            modelBuilder.Configurations.Add(new UserMap());
        }
    }
}
