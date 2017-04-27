using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;

namespace HomeArchiveX.DataAccess
{
    public class EFDataService : IDataService
    {
        public MethodResult<int> DeleteDrive(int id)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public Drive GetDriveById(int id)
        {
            throw new NotImplementedException();
        }

        public MethodResult<int> SaveDrive(Drive drive)
        {
            throw new NotImplementedException();
        }
    }
}
