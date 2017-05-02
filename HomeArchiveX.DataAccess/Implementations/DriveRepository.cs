
using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;
using System.Data.Entity;

namespace HomeArchiveX.DataAccess.Implementations
{
    public class DriveRepository : Repository<Drive>
    {
        public DriveRepository(IDbContext context) : base(context)
        {
        }
    }
}
