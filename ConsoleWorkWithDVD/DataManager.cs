using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleWorkWithDVD
{
    /// <summary>
    /// Класс для работы с данными SQL Server
    /// </summary>
    public class DataManager : IDataManager
    {
        public Dictionary<string, int> _directoryCash;
        private IConfiguration _configuration;
        ILogger _logger;
        IFIleManager _fileManager;
        public ILogger logger { get { return _logger; } }
        #region Конструктор
        /// <summary>
        /// Конструктор
        /// </summary>
        /// <param name="configuration">Конфигурация</param>
        /// <param name="fileManager">Файл Менеджер</param>
        /// <param name="logger">Логгер</param>
        public DataManager(IConfiguration configuration, IFIleManager fileManager, ILogger logger)
        {
            _configuration = configuration;
            _logger = logger;
            _fileManager = fileManager;
            _directoryCash = new Dictionary<string, int>();
        }
        #endregion

        #region Создать описание папки
        /// <summary>
        /// Создать в БД запись с описанием папки, дирректории
        /// </summary>
        /// <param name="path">Путь</param>
        /// <param name="driveId">Ключ</param>
        /// <returns></returns>
        public int CreateFolder(string path, int driveId)
        {
            var di = _fileManager.GetDirectoryInfoByPath(path);
            int parentId = GetEntityIdByPath(di.Parent == null ? null : di.Parent.FullName, driveId, EntityType.Folder);

            var id = CreateArchiveEntity<DirectoryInfo>(driveId, di, di.Name, di.GetHashCode(), parentId
                , EntityType.Folder, path, "", "");
            _directoryCash.Add(path, id);
            return id;
        }
        #endregion

        #region Создать описание файла
        /// <summary>
        /// Создать в БД Запись с описанием файла
        /// </summary>
        /// <param name="path">путь к файлу</param>
        /// <param name="driveId">Ключ диска</param>
        /// <returns></returns>
        public int CreateFile(string path, int driveId)
        {
            FileInfo fi = _fileManager.GetFileInfoByPath(path);
            int parentId = GetEntityIdByPath(fi.Directory.Parent == null ? null : fi.Directory.Parent.FullName
                , driveId, EntityType.Folder);




            var id = CreateArchiveEntity<FileInfo>(driveId, fi, fi.Name, fi.GetHashCode(), parentId
                , EntityType.File, path, fi.Extension, "");
            return id;
        }
        #endregion

        #region Создать связь картинку - сущность
        /// <summary>
        /// Создать в БД запись - связь картинка - сущность
        /// </summary>
        /// <param name="ImagePath">Путь к картинке</param>
        /// <param name="entityId">Ключ сущности</param>
        /// <param name="driveId">Ключ диска</param>
        public void CreateImageToEntity(string ImagePath, int entityId, int driveId)
        {
            int imageId = CreateImage(ImagePath, string.Format(@"drive{0}\img{1}", driveId, entityId));
            string queryString = @"insert into ImageToEntity(TargetEntityKey,ImageKey) values (@TargetEntityKey,@ImageKey)";

            using (SqlConnection ce = new SqlConnection(_configuration.GetConnectionString()))
            {
                var command = new SqlCommand(queryString, ce);
                command.Parameters.Clear();
                command.Parameters.Add("@TargetEntityKey", SqlDbType.Int);
                command.Parameters.Add("@ImageKey", SqlDbType.Int);
                command.Parameters["@TargetEntityKey"].Value = entityId;
                command.Parameters["@ImageKey"].Value = imageId;
                ce.Open();
                command.ExecuteNonQuery();
            }

        }
        #endregion

        #region Создать запись об изображении
        /// <summary>
        /// Создать запись об изображении
        /// </summary>
        /// <param name="imagePath">Путь к изопражению</param>
        /// <param name="targetDir">Путь назначение</param>
        /// <returns>Ключ рисунка</returns>
        public int CreateImage(string imagePath, string targetDir)
        {
            var imgInfo = new FileInfo(imagePath);
            string newImgPath = "";
            string queryString = @"insert into Image( Thumbnail,ImagePath,ThumbnailPath,ImageTitle,HashCode) 
values (@Thumbnail,@ImagePath,@ThumbnailPath,@ImageTitle,@HashCode);
                select SCOPE_IDENTITY();";

            byte[] imageData = null;
            try
            {
                // Will not overwrite if the destination file already exists.
                newImgPath = _fileManager.CopyImg(imagePath, targetDir);

            }

            // Catch exception if the file was already copied.
            catch (IOException copyError)
            {
                _logger.Add(copyError.Message);
            }

            Bitmap bmp = _fileManager.GetThumb(imagePath);
            string thumbPath = _fileManager.SaveThumb(targetDir, _configuration.GetThumbDirName(), bmp, imgInfo.Name);
            imageData = _fileManager.GetImageData(bmp);

            using (SqlConnection ce = new SqlConnection(_configuration.GetConnectionString()))
            {
                var command = new SqlCommand(queryString, ce);
                command.Parameters.Clear(); //Thumbnail,
                command.Parameters.Add("@HashCode", SqlDbType.Int);
                command.Parameters.Add("@ImagePath", SqlDbType.NVarChar, 255);
                command.Parameters.Add("@ThumbnailPath", SqlDbType.NVarChar, 255);
                command.Parameters.Add("@ImageTitle", SqlDbType.NVarChar, 50);
                command.Parameters.Add("@Thumbnail", SqlDbType.Image);

                command.Parameters["@HashCode"].Value = imgInfo.GetHashCode();
                command.Parameters["@ImagePath"].Value = newImgPath;
                command.Parameters["@ThumbnailPath"].Value = thumbPath;
                command.Parameters["@ImageTitle"].Value = imgInfo.Name;
                command.Parameters["@Thumbnail"].Value = imageData;
                ce.Open();
                string strid = command.ExecuteScalar().ToString();
                return int.Parse(strid);
            }
        }
        #endregion

        #region Получить источник по ИД
        /// <summary>
        /// Получить источник по ИД
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Drive GetDriveById(int id)
        {
            Drive drive = new Drive();
            string queryString = "SELECT Title,DriveInfo FROM Drive where DriveId=@id;";

            using (SqlConnection ce = new SqlConnection(_configuration.GetConnectionString()))
            {
                var command = new SqlCommand(queryString, ce);
                command.Parameters.Clear();
                command.Parameters.AddWithValue("id", id);
                ce.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        byte[] bytes = (byte[])reader[1];
                        drive = _fileManager.FillDrive(drive, bytes, (string)reader[0], id);
                    }
                }
            }
            return drive;
        }
        #endregion

        #region Вернуть ИД описания Файла, папки
        public int GetEntityIdByPath(string path, int driveId, EntityType entityType)
        {
            if (path == null) return -1;
            if (_directoryCash.ContainsKey(path)) return _directoryCash[path];

            int id = 0;
            string queryString = @"select ArchiveEntityKey from ArchiveEntity where 
DriveId=@DriveId and EntityPath=@EntityPath";
            using (SqlConnection ce = new SqlConnection(_configuration.GetConnectionString()))
            {
                var command = new SqlCommand(queryString, ce);
                command.Parameters.Clear();
                command.Parameters.Add("@DriveId", SqlDbType.Int);
                command.Parameters.Add("@EntityPath", SqlDbType.NVarChar, 250);

                command.Parameters["@DriveId"].Value = driveId;
                command.Parameters["@EntityPath"].Value = path;
                ce.Open();

                var execResult = command.ExecuteScalar();

                string strid = execResult == null ? "" : execResult.ToString();

                int.TryParse(strid, out id);

            }
            if (id != 0)
            {
                return id;
            }
            switch (entityType)
            {
                case EntityType.Folder:
                    id = CreateFolder(path, driveId);
                    break;
                case EntityType.File:
                    id = CreateFile(path, driveId);
                    break;
                default:
                    break;
            }
            return id;
        }
        #endregion

        #region Создать запись об источнике
        /// <summary>
        /// Создать запись об источнике
        /// </summary>
        /// <param name="path">Путь</param>
        /// <param name="title">Описание</param>
        /// <returns></returns>
        public int CreateDrive(string path, string title)
        {

            var di = new DriveInfo(path);
            if (!di.IsReady)
            {
                _logger.Add("Устройство не готово для чтения");
                return 0;
            }
            var hashCode = di.TotalSize.GetHashCode() ^ di.VolumeLabel.GetHashCode() ^ di.TotalFreeSpace.GetHashCode();
            var driveExist = IsDriveExist(hashCode, title);
            if (driveExist > 0)
            {
                _logger.Add("Диск с таким хешем или наименованием существует");
                return 0;
            }

            string queryString = @"insert into Drive(Title, HashCode, DriveInfo) values (@Title, @HashCode, @DriveInfo);
                select SCOPE_IDENTITY();";
            using (SqlConnection ce = new SqlConnection(_configuration.GetConnectionString()))
            {
                var command = new SqlCommand(queryString, ce);
                command.Parameters.Clear();
                command.Parameters.Add("@Title", SqlDbType.NVarChar, 100);
                command.Parameters.Add("@HashCode", SqlDbType.Int);
                command.Parameters.Add("@DriveInfo", SqlDbType.VarBinary, Int32.MaxValue);
                command.Parameters["@DriveInfo"].Value = _fileManager.GetBinaryData<DriveInfo>(di);
                command.Parameters["@Title"].Value = title;
                command.Parameters["@HashCode"].Value = hashCode;
                ce.Open();
                // command.ExecuteNonQuery();
                string strid = command.ExecuteScalar().ToString();

                return int.Parse(strid);
            }
        }
        #endregion


        #region Проверка сужествования диска по Наименованию, Хешу
        /// <summary>
        /// Проверка сужествования диска по Наименованию, Хешу
        /// </summary>
        /// <param name="hashCode">Хеш Код</param>
        /// <param name="title">Наименование</param>
        /// <returns></returns>
        public int IsDriveExist(int hashCode, string title)
        {
            string queryString = @"
select (SELECT count(1) FROM Drive where 
Title=@title)+case when ( SELECT count(1) FROM Drive 
where  HashCode = @HashCode)>0 then 2 else 0 end vl";
            using (SqlConnection ce = new SqlConnection(_configuration.GetConnectionString()))
            {
                var command = new SqlCommand(queryString, ce);
                command.Parameters.Clear();
                command.Parameters.Add("@Title", SqlDbType.NVarChar, 100);
                command.Parameters.Add("@HashCode", SqlDbType.Int);

                command.Parameters["@Title"].Value = title;
                command.Parameters["@HashCode"].Value = hashCode;

                ce.Open();

                string strid = command.ExecuteScalar().ToString();

                return int.Parse(strid);
            }
        }
        #endregion


        #region Очистить БД
        public void TruncateTables()
        {
            string sqlExpression = "TruncateTables";
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                connection.Open();
                var command = new SqlCommand(sqlExpression, connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.ExecuteScalar();

            }
        }
        #endregion





        #region Создать запись о файле, папке
        /// <summary>
        /// Создать запись о файле, папке
        /// </summary>
        /// <typeparam name="T">Тип DirectoryInfo , FileInfo</typeparam>
        /// <param name="driveId">Ид Источника</param>
        /// <param name="entity">Объект</param>
        /// <param name="title">Имя файла, папки</param>
        /// <param name="hashCode">Хеш</param>
        /// <param name="parentEntityKey">ИД предка</param>
        /// <param name="entityType"></param>
        /// <param name="entityPath">Полный путь</param>
        /// <param name="extension">расшрение</param>
        /// <param name="description">описание</param>
        /// <returns></returns>
        public int CreateArchiveEntity<T>(int driveId, T entity, string title,
           int hashCode, int parentEntityKey, EntityType entityType, string entityPath, string extension, string description)
        {

            string queryString = @"insert into ArchiveEntity( 
ParentEntityKey,DriveId,Title,EntityType ,EntityPath,EntityExtension ,Description ,HashCode ,EntityInfo, MFileInfo)
values ( 
@ParentEntityKey,@DriveId,@Title,@EntityType,@EntityPath,@EntityExtension,@Description,@HashCode,@EntityInfo,@MFileInfo);
                select SCOPE_IDENTITY();";
            using (SqlConnection ce = new SqlConnection(_configuration.GetConnectionString()))
            {
                var command = new SqlCommand(queryString, ce);
                command.Parameters.Clear();

                command.Parameters.Add("@ParentEntityKey", SqlDbType.Int);

                command.Parameters.Add("@DriveId", SqlDbType.Int);
                command.Parameters.Add("@EntityType", SqlDbType.Int);
                command.Parameters.Add("@EntityPath", SqlDbType.NVarChar, 100);
                command.Parameters.Add("@EntityExtension", SqlDbType.NVarChar, 20);
                command.Parameters.Add("@Description", SqlDbType.NVarChar, 100);
                command.Parameters.Add("@HashCode", SqlDbType.Int);
                command.Parameters.Add("@EntityInfo", SqlDbType.VarBinary, Int32.MaxValue);
                command.Parameters.Add("@MFileInfo", SqlDbType.VarBinary, Int32.MaxValue);
                command.Parameters.Add("@Title", SqlDbType.NVarChar, 250);
                var mfi = MFIFactory.GetMediaFileInfoDictionary(extension, entityPath);

                command.Parameters["@MFileInfo"].Value = _fileManager.GetBinaryData<Dictionary<string, string>>(mfi);
                command.Parameters["@EntityInfo"].Value = _fileManager.GetBinaryData<T>(entity);
                command.Parameters["@Title"].Value = title;
                command.Parameters["@HashCode"].Value = hashCode;
                if (parentEntityKey != -1)
                {
                    command.Parameters["@ParentEntityKey"].Value = parentEntityKey;
                }
                else
                {
                    command.Parameters["@ParentEntityKey"].Value = DBNull.Value;
                }
                command.Parameters["@DriveId"].Value = driveId;
                command.Parameters["@EntityType"].Value = (int)entityType;
                command.Parameters["@EntityPath"].Value = entityPath;
                command.Parameters["@EntityExtension"].Value = extension;
                command.Parameters["@Description"].Value = description;
                ce.Open();
                //  command.ExecuteNonQuery();
                string strid = command.ExecuteScalar().ToString();
                if (_fileManager.IsImage(extension))
                {
                    CreateImageToEntity(entityPath, int.Parse(strid), driveId);
                }
                return int.Parse(strid);
            }
        }
        #endregion
        /*-------------------------------*/

        public void FillDirectoriesInfo(int driveId, string pathDrive)
        {
            MethodResult<int> result = _fileManager.FillDirectoriesInfo(driveId, pathDrive, CreateFolder);
        }


        public void FillFilesInfo(int driveId, string pathDrive)
        {
            MethodResult<int> result = _fileManager.FillFilesInfo(driveId, pathDrive, CreateFile);
        }

        public Image GetImageById(int id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                connection.Open();
                string sql = "select Thumbnail FROM [dbo].[Image] where imageKey=@imageKey";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Clear();
                command.Parameters.AddWithValue("imageKey", id);
                connection.Open();
                object obj = command.ExecuteScalar();
                return _fileManager.GetDataFromBinary<Image>((byte[])obj);

            }
        }

        public DriveInfo GetDriveInfoById(int id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                connection.Open();
                string sql = "select DriveInfo FROM Drive where DriveId=@id";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Clear();
                command.Parameters.AddWithValue("id", id);

                object obj = command.ExecuteScalar();
                return _fileManager.GetDataFromBinary<DriveInfo>((byte[])obj);

            }
        }


        public string[] GetDrives()
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                var result = new List<string>();
                connection.Open();
                string sql = "select concat(rtrim(ltrim(str(DriveId))),'. ',Title) descr FROM Drive ";
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    result.Add(reader.GetString(0));
                }

                return result.ToArray();

            }
        }

        public string[] GetDirectories(int id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                var result = new List<string>();
                connection.Open();
                string sql = @"select concat(rtrim(ltrim(str(ArchiveEntityKey))),'. ',EntityPath) descr 
                               from ArchiveEntity where EntityType=1 and DriveId = @id";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Clear();
                command.Parameters.AddWithValue("id", id);

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    result.Add(reader.GetString(0));
                }

                return result.ToArray();

            }
        }


        public string[] GetFiles(int id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                var result = new List<string>();
                connection.Open();
                string sql = @"select concat(rtrim(ltrim(str(ArchiveEntityKey))),'. ',EntityPath) descr 
                               from ArchiveEntity where EntityType=2 and DriveId = @id";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Clear();
                command.Parameters.AddWithValue("id", id);

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    result.Add(reader.GetString(0));
                }

                return result.ToArray();

            }
        }





        public FileInfo GetFileInfoById(int id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                connection.Open();
                string sql = "select EntityInfo FROM ArchiveEntity where ArchiveEntityKey=@id and EntityType=2";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Clear();
                command.Parameters.AddWithValue("id", id);

                object obj = command.ExecuteScalar();
                return _fileManager.GetDataFromBinary<FileInfo>((byte[])obj);

            }
        }



        public Dictionary<string, string> GetMediaFileInfoById(int id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                connection.Open();
                string sql = "select MFileInfo FROM ArchiveEntity where ArchiveEntityKey=@id and EntityType=2";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Clear();
                command.Parameters.AddWithValue("id", id);

                object obj = command.ExecuteScalar();
                return _fileManager.GetDataFromBinary<Dictionary<string, string>>((byte[])obj);

            }
        }



        public DirectoryInfo GetDirectoryInfoById(int id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                connection.Open();
                string sql = "select EntityInfo FROM ArchiveEntity where ArchiveEntityKey=@id and EntityType=1";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Clear();
                command.Parameters.AddWithValue("id", id);

                object obj = command.ExecuteScalar();
                return _fileManager.GetDataFromBinary<DirectoryInfo>((byte[])obj);

            }
        }


        private void ReadImageFromDatabase()
        {

            List<byte[]> images = new List<byte[]>();
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString()))
            {
                connection.Open();
                string sql = "select Thumbnail FROM[dbo].[Image] ";
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {

                    //images.Add(_fileManager.GetDataFromBinary<Image>((byte[])reader.GetValue(0)));
                }
            }
            // _fileManager.GetDataFromBinary<Image> (byte[] data)
            string FileName = @"d:\test.jpg";
            // сохраним первый файл из списка
            if (images.Count > 0)
            {
                using (System.IO.FileStream fs = new System.IO.FileStream(FileName, FileMode.OpenOrCreate))
                {
                    fs.Write(images[1], 0, images[1].Length);

                }
            }
        }
    }
}
