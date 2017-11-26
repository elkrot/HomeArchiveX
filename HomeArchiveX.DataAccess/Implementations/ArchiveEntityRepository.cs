using HomeArchiveX.Common.Implementations;
using HomeArchiveX.Model;


namespace HomeArchiveX.DataAccess.Implementations
{
    public class ArchiveEntityRepository : Repository<ArchiveEntity>
    {
        public ArchiveEntityRepository(IDbContext context) : base(context)
        {
        }
    }
}
