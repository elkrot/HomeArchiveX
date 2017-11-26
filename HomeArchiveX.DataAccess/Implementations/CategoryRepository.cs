using HomeArchiveX.Common.Implementations;
using HomeArchiveX.Model;


namespace HomeArchiveX.DataAccess.Implementations
{
    public class CategoryRepository : Repository<Category>
    {
        public CategoryRepository(IDbContext context) : base(context)
        {
        }
    }
}
