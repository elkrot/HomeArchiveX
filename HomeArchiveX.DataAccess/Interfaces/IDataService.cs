﻿
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using HomeArchiveX.Model;
using HomeArchiveX.Common;

namespace HomeArchiveX.DataAccess
{
    public interface IDataService : IDisposable
    {
        #region Диски
        MethodResult<int> DeleteDrive(int id);
        Drive GetDriveById(int id);
        MethodResult<int> SaveDrive(Drive drive);
        IEnumerable<Drive> GetAllDrives();
        IEnumerable<Drive> GetDrivesByCondition(
            Expression<Func<Drive, bool>> where, Expression<Func<Drive, object>> orderby
            );

        int GetCountDrivesByCondition(
    Expression<Func<Drive, bool>> where);

        IEnumerable<Drive> GetDrivesByCondition(
    Expression<Func<Drive, bool>> where, Expression<Func<Drive, object>> orderby
    , bool isDescending, int index, int length);
        MethodResult<int> DeleteCategory(int id);
        Category GetCategoryBy(int id);
        #endregion

        #region Файлы
        MethodResult<int> DeleteFileOnDrive(int id);

        MethodResult<int> RemoveTagFromEntity(int ArchiveEntityKey, int TagKey);
        MethodResult<int> RemoveCategoryFromEntity(int ArchiveEntityKey, int CategoryKey);
        MethodResult<int> RemoveImageFromEntity(int ArchiveEntityKey, int ImageKey);

        ArchiveEntity GetFileOnDriveDriveById(int id);
        MethodResult<int> SaveFileOnDrive(ArchiveEntity archiveEntity);
        MethodResult<int> SaveCategory(Category category);
        IEnumerable<ArchiveEntity> GetAllFilesOnDrive(int id);
        IEnumerable<ArchiveEntity> GetFilesOnDriveByCondition(Expression<Func<ArchiveEntity, bool>> where, Expression<Func<ArchiveEntity, object>> orderby);
        MethodResult<int> AddCategory(Category category);
        #endregion

        #region Изображения
        MethodResult<int> AddImageToFileOnDrive(int ArchiveEntityKey, string img,int DriveId);
        Model.Image GetImageToEntityById(int EntityId, int ImageId);
        Model.Image GetImageById(int id);
        #endregion

        #region Метки
        IEnumerable<Tag> GetAllTags();
        Tag GetTagById(int TagId);
        Tag GetTagToEntityById(int EntityId, int TagId);
        MethodResult<int> AddTagToEntity(int ArchiveEntityKey, string Tag);
        #endregion

        #region Категории
        IEnumerable<Category> GetAllCategories();
        Category GetCategoryToEntityById(int EntityId, int CategoryId);
        Category GetCategoryById( int CategoryId);
        MethodResult<int> AddCategoryToEntity(int ArchiveEntityKey, int CategoryId);
        #endregion


    }
}
