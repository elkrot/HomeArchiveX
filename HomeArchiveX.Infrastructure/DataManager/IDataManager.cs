using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Infrastructure
{
    public interface IDataManager
    {
        ILogger logger { get; }
        int CreateFolder(string path, int driveId);
        int CreateFile(string path, int driveId);
        void CreateImageToEntity(string ImagePath, int entityId, int driveId);
        int CreateImage(string imagePath, string targetDir);
        DriveX GetDriveById(int id);
        int GetEntityIdByPath(string path, int driveId, EntityType entityType);
        int CreateDrive(string path, string title, string diskCode);
        int CreateArchiveEntity<T>(int driveId, T entity, string title,
        int hashCode, int parentEntityKey, EntityType entityType, string entityPath, string extension, string description);
        Dictionary<string, string> GetFileInfoById(int id);
        DriveInfo GetDriveInfoById(int id);
        Dictionary<string, string> GetDirectoryInfoById(int id);
        int IsDriveExist(int hashCode, string title);
        void FillDirectoriesInfo(int driveId, string pathDrive);
        void FillFilesInfo(int driveId, string pathDrive);
        void TruncateTables();
        void ClearCash();

        string[] GetDrives();
        string[] GetDirectories(int id);
        string[] GetFiles(int id);
        Dictionary<string, string> GetMediaFileInfoById(int id);
    }
}
