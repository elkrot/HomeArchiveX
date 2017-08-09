
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
        #region Диски
        MethodResult<int> DeleteDrive(int id);
        Drive GetDriveById(int id);
        MethodResult<int> SaveDrive(Drive drive);
        IEnumerable<Drive> GetAllDrives();
        IEnumerable<Drive> GetDrivesByCondition(Expression<Func<Drive, bool>> where, Expression<Func<Drive, object>> orderby);
        #endregion

        #region Файлы
        MethodResult<int> DeleteFileOnDriveDrive(int id);
        ArchiveEntity GetFileOnDriveDriveById(int id);
        MethodResult<int> SaveFileOnDriveDrive(ArchiveEntity archiveEntity);

        IEnumerable<ArchiveEntity> GetAllFilesOnDrive(int id);
        IEnumerable<ArchiveEntity> GetFilesOnDriveByCondition(Expression<Func<ArchiveEntity, bool>> where, Expression<Func<ArchiveEntity, object>> orderby);
        #endregion

        #region Изображения
        MethodResult<int> AddImageToFileOnDrive(int ArchiveEntityKey, string img);
        #endregion

    }
}
