﻿using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public interface IFilesOnDriveDataProvider
    {
        ArchiveEntity GetArchiveEntityById(int id);
        MethodResult<int> SaveFileOnDrive(ArchiveEntity archiveEntity);
        MethodResult<int> DeleteArchiveEntity(int id);
        MethodResult<int> AddImageToFileOnDrive(int id, string img,int driveId);
        Model.ImageToEntity GetImageToEntityById(int EntityId, int ImageId);

        Model.Tag GetTagById(int TagId);
        Model.TagToEntity GetTagToEntityById(int EntityId, int TagId);
        MethodResult<int> AddTagToEntity(int ArchiveEntityKey, string Tag);
        MethodResult<int> AddCategoryToEntity(int ArchiveEntityKey, int CategoryId);

    }
}
