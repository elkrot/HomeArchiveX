using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.DataAccess.Implementations
{
    public class ImageRepository : Repository<Image>
    {
        public ImageRepository(IDbContext context) : base(context)
        {
        }
    }
}
