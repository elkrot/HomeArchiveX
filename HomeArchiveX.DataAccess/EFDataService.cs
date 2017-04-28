using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using HomeArchiveX.DataAccess.Implementations;

namespace HomeArchiveX.DataAccess
{
    public class EFDataService : IDataService
    {
        public MethodResult<int> DeleteDrive(int id)
        {


            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                var drive = repo.Find(x => x.DriveId == id).FirstOrDefault();
                repo.Remove(drive);

                return uofw.Complete();
            }
        }

        public void Dispose()
        {

        }

        public Drive GetDriveById(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                return repo.Find(x => x.DriveId == id).FirstOrDefault();
            }
        }

        public MethodResult<int> SaveDrive(Drive drive)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                repo.Add(drive);
                return uofw.Complete();
            }
        }
    }
}
