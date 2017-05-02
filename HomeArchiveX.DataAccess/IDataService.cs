
using HomeArchiveX.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Model;

namespace HomeArchiveX.DataAccess
{
    public interface IDataService : IDisposable
    {
        MethodResult<int> DeleteDrive(int id);
        Drive GetDriveById(int id);
        MethodResult<int> SaveDrive(Drive drive);
        IEnumerable<Drive> GetAllDrives();
        IEnumerable<Drive> GetDrivesByCondition(Expression<Func<Drive, bool>> where, Expression<Func<Drive, object>> orderby);
    }
}
