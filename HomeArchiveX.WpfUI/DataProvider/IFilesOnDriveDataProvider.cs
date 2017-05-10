using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public interface IArchiveEntityDataProvider
    {
        ArchiveEntity GetArchiveEntityById(int id);

        MethodResult<int> SaveFileOnDrive(ArchiveEntity archiveEntity);

        MethodResult<int> DeleteArchiveEntity(int id);
    }
}
