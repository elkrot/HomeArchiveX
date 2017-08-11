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
        public MethodResult<int> AddImageToFileOnDrive(int ArchiveEntityKey,string img, int DriveId)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.AddImageToFileOnDrive( ArchiveEntityKey,  img , DriveId);
            }
        }
        #endregion

        #region Image по ключу
        public Model.Image GetImageById(int id)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetImageById(id);
            }
        }
        #endregion

        #region ImageToEntity по ключу
        public Model.ImageToEntity GetImageToEntityById(int EntityId,int ImageId)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetImageToEntityById(EntityId, ImageId);
            }
        }
        #endregion

        #region Добавление Метки
        public MethodResult<int> AddTagToEntity(int ArchiveEntityKey, string Tag)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.AddTagToEntity(ArchiveEntityKey, Tag);
            }
        }
        #endregion

        #region Метка по ключу
        public Model.Tag GetTagById( int TagId)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetTagById(TagId);
            }
        }
        #endregion

        #region TagToEntity по ключу
        public Model.TagToEntity GetTagToEntityById(int EntityId, int TagId)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetTagToEntityById(EntityId, TagId);
            }
        }
        #endregion



        #region Добавление категрии  
        public MethodResult<int> AddCategoryToEntity(int ArchiveEntityKey, int CategoryId)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.AddCategoryToEntity(ArchiveEntityKey, CategoryId);
            }
        }
        #endregion
    }
}
