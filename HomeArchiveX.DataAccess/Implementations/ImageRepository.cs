using HomeArchiveX.Common.Implementations;
using HomeArchiveX.Model;


namespace HomeArchiveX.DataAccess.Implementations
{
    public class ImageRepository : Repository<Image>
    {
        public ImageRepository(IDbContext context) : base(context)
        {
        }
    }
}
