using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using HomeArchiveX.DataAccess;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public class FilesOnDriveDataProvider : IFilesOnDriveDataProvider
    {
        private readonly Func<IDataService> _dataServiceCreator;
        #region Конструктор
        public FilesOnDriveDataProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;
        }
        #endregion

        #region Удаление
        public MethodResult<int> DeleteArchiveEntity(int id)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.DeleteFileOnDriveDrive(id);
            }
        }
        #endregion

        #region Файл по ключу
        public ArchiveEntity GetArchiveEntityById(int id)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetFileOnDriveDriveById(id);
            }
        }
        #endregion

        #region Сохранение
        public MethodResult<int> SaveFileOnDrive(ArchiveEntity archiveEntity)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.SaveFileOnDriveDrive(archiveEntity);
            }
        }
        #endregion

        #region Добавление картинки
        public MethodResult<int> AddImageToFileOnDrive(int ArchiveEntityKey,string img)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.AddImageToFileOnDrive( ArchiveEntityKey,  img);
            }
        }
        #endregion
    }
}
