using HomeArchiveX.Common.Implementations;
using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.DataAccess.Implementations
{
    public class ImageToEntityRepository : Repository<ImageToEntity>
    {
        public ImageToEntityRepository(IDbContext context) : base(context)
        {
        }
    }
}
