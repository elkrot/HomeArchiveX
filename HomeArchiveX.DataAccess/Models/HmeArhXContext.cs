using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using HomeArchiveX.DataAccess.Models.Mapping;
using HomeArchiveX.Model;

namespace HomeArchiveX.DataAccess.Models
{
    public partial class HmeArhXContext : DbContext
    {
        static HmeArhXContext()
        {
            Database.SetInitializer<HmeArhXContext>(null);
        }

        public HmeArhXContext()
            : base("Name=HmeArhXContext")
        {
        }

        public DbSet<ArchiveEntity> ArchiveEntities { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<CategoryToEntity> CategoryToEntities { get; set; }
        public DbSet<Drive> Drives { get; set; }
        public DbSet<Image> Images { get; set; }
        public DbSet<ImageToEntity> ImageToEntities { get; set; }
        public DbSet<Tag> Tags { get; set; }
        public DbSet<TagToEntity> TagToEntities { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new ArchiveEntityMap());
            modelBuilder.Configurations.Add(new CategoryMap());
            modelBuilder.Configurations.Add(new CategoryToEntityMap());
            modelBuilder.Configurations.Add(new DriveMap());
            modelBuilder.Configurations.Add(new ImageMap());
            modelBuilder.Configurations.Add(new ImageToEntityMap());
            modelBuilder.Configurations.Add(new TagMap());
            modelBuilder.Configurations.Add(new TagToEntityMap());
        }
    }
}
