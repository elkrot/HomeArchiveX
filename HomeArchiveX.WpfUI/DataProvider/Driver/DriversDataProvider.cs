using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using HomeArchiveX.DataAccess;
using HomeArchiveX.Common;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public class DriversDataProvider : IDrivesDataProvider
    {
        private readonly Func<IDataService> _dataServiceCreator;
        public DriversDataProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;
        }
        public MethodResult<int> DeleteDrive(int id)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.DeleteDrive(id);
            }
        }

        public Drive GetDriveById(int id)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetDriveById(id);
            }
        }

        public MethodResult<int> SaveDrive(Drive drive)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.SaveDrive(drive);
            }
        }
    }
}
