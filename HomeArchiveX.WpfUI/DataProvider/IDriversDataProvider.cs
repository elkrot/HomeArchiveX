using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public interface IDriversDataProvider
    {
        Drive GetDriveById(int id);

        MethodResult<int> SaveDrive(Drive drive);

        MethodResult<int> DeleteDrive(int id);
    }
}
