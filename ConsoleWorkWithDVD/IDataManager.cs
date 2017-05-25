using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleWorkWithDVD
{
    public interface IDataManager
    {
        ILogger logger { get; }
        int CreateFolder(string path, int driveId);
        int CreateFile(string path, int driveId);
        void CreateImageToEntity(string ImagePath, int entityId, int driveId);
        int CreateImage(string imagePath, string targetDir);
        Drive GetDriveById(int id);
        int GetEntityIdByPath(string path, int driveId, EntityType entityType);
        int CreateDrive(string path, string title);
        int CreateArchiveEntity<T>(int driveId, T entity, string title,
        int hashCode, int parentEntityKey, EntityType entityType, string entityPath, string extension, string description);
        FileInfo GetFileInfoById(int id);
        DriveInfo GetDriveInfoById(int id);
        DirectoryInfo GetDirectoryInfoById(int id);
        int IsDriveExist(int hashCode, string title);
        void FillDirectoriesInfo(int driveId, string pathDrive);
        void FillFilesInfo(int driveId, string pathDrive);
        void TruncateTables();
        void ClearCash();
    }
}
