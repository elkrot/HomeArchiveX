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
                return dataService.DeleteFileOnDrive(id);
            }
        }

        public MethodResult<int> RemoveCategoryFromEntity(int ArchiveEntityKey,int CategoryKey)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.RemoveCategoryFromEntity(ArchiveEntityKey,CategoryKey);
            }
        }

        public MethodResult<int> RemoveTagFromEntity(int ArchiveEntityKey, int TagKey)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.RemoveTagFromEntity(ArchiveEntityKey, TagKey);
            }
        }

        public MethodResult<int> RemoveImageFromEntity(int ArchiveEntityKey, int ImageKey)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.RemoveImageFromEntity(ArchiveEntityKey, ImageKey);
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
                return dataService.SaveFileOnDrive(archiveEntity);
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
        public Model.Image GetImageToEntityById(int EntityId, int ImageId)
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
        public Model.Tag GetTagToEntityById(int EntityId, int TagId)
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

        #region Категоря по ключу
        public Model.Category GetCategoryById(int CategoryId)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetCategoryById(CategoryId);
            }
        }
        #endregion

        #region CategoryToEntity по ключу
        public Model.Category GetCategoryToEntityById(int EntityId, int CategoryId)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetCategoryToEntityById(EntityId, CategoryId);
            }
        }


        #endregion



    }
}
