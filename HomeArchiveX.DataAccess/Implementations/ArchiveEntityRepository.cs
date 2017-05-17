using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.DataAccess.Implementations
{
    public class ArchiveEntityRepository : Repository<ArchiveEntity>
    {
        public ArchiveEntityRepository(IDbContext context) : base(context)
        {
        }
    }
}
