using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Infrastructure
{

    public class FileManager : IFIleManager
    {
        IConfiguration _configuration;
        ILogger _logger;
        public FileManager(IConfiguration configuration, ILogger logger)
        {
            _configuration = configuration;
            _logger = logger;
        }

        #region Изменение размера
        public Image ResizeImg(Image b, int nWidth, int nHeight)
        {
            Image result = new Bitmap(nWidth, nHeight);
            using (Graphics g = Graphics.FromImage((Image)result))
            {
                g.InterpolationMode = InterpolationMode.HighQualityBicubic;
                g.DrawImage(b, 0, 0, nWidth, nHeight);
                g.Dispose();
            }
            return result;
        }
        #endregion

        #region Копировать картинку 
        public string CopyImg(string imgPath, string targetDir)
        {

            var fi = new FileInfo(imgPath);
            string NewimgPath = "";

            if (IsImage(fi.Extension))
            {
                var dir = Path.Combine(_configuration.GetTargetImagePath(), targetDir);
                if (!Directory.Exists(dir))
                {
                    Directory.CreateDirectory(dir);
                }
                NewimgPath = Path.Combine(dir, fi.Name);
                if (!File.Exists(Path.Combine(dir, fi.Name)))
                {
                    File.Copy(imgPath, NewimgPath, true);
                }

            }
            return string.IsNullOrWhiteSpace(NewimgPath) ? "" : Path.Combine(targetDir, fi.Name);
        }
        #endregion

        #region Создать эскиз
        public Bitmap GetThumb(string imgPath)
        {

            Bitmap bmp;
            try
            {
var img = Image.FromFile(imgPath);// метод держит файл
                                              /*    FileStream fs = new FileStream(item, FileMode.Open);
                                                  Image img = Image.FromStream(fs);
                                                  fs.Close();*/
            decimal h = (img.Height * _configuration.ThumbnailWidth) / img.Width;

            if (h != 0)
            {
                bmp = new Bitmap(img, _configuration.ThumbnailWidth, (int)h);
            }
            else { bmp = new Bitmap(img, img.Height, img.Width); }
            }
            catch (Exception)
            {
                bmp = new Bitmap(1, 1);
            }

            return bmp;

        }
        #endregion

        #region Сохранить на диске Эскиз
        public string SaveThumb(string targetRootDir, string thumbDir, Bitmap bmp, string thumbName)
        {

            #region Guard
            const string ERROR_ARGUMENT_EXCEPTION_MSG = "Не верно указан параметр";
            if (string.IsNullOrWhiteSpace(targetRootDir))
                throw new ArgumentException(ERROR_ARGUMENT_EXCEPTION_MSG, nameof(targetRootDir));
            if (string.IsNullOrWhiteSpace(thumbDir))
                throw new ArgumentException(ERROR_ARGUMENT_EXCEPTION_MSG, nameof(thumbDir));
            if (string.IsNullOrWhiteSpace(thumbName))
                throw new ArgumentException(ERROR_ARGUMENT_EXCEPTION_MSG, nameof(thumbName));
            #endregion
            string fullPath = "";
            var dir_t = Path.Combine(_configuration.GetTargetImagePath(), targetRootDir, thumbDir);
            if (!File.Exists(Path.Combine(dir_t, thumbName)))
            {
                if (!Directory.Exists(dir_t))

                {
                    Directory.CreateDirectory(dir_t);
                }
                fullPath = Path.Combine(dir_t, thumbName);
                bmp.Save(fullPath);
            }
            return Path.Combine(targetRootDir, thumbDir, thumbName);
        }
        #endregion

        #region Является ли файл картинкой
        public bool IsImage(string ext)
        {
            string[] ar = new[] { ".jpg", ".jpeg", ".png", ".gif", ".bmp" };
            return ar.Contains(ext.ToLower());
        }
        #endregion

        #region Заполнить информацию о папках
        public MethodResult<int> FillDirectoriesInfo(int driveId, string pathDrive, Func<string, int, int> CreateFolder)
        {
            var result = new MethodResult<int>(0);
            string[] directories = null;
            try
            {
                directories = Directory.GetDirectories(pathDrive, "*.*", SearchOption.AllDirectories);
            }
            catch (UnauthorizedAccessException e)
            {
                result.Success = false;
                result.Messages.Add(e.Message);
            }
            catch (System.IO.DirectoryNotFoundException e)
            {
                result.Success = false;
                result.Messages.Add(e.Message);
            }
            int i = 0;
            foreach (var path in directories)
            {
                int id = CreateFolder(path, driveId);
                i++;
            }
            result.Result = i;
            return result;
        }
        #endregion

        #region Заполнить описание диска
        public DriveX FillDrive(DriveX drive, byte[] bytes, string title, int id)
        {
            using (MemoryStream stream = new MemoryStream(bytes))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                DriveInfo di = (DriveInfo)formatter.Deserialize(stream);
                drive.title = title;
                drive.driveInfo = di;
                drive.id = id;
                return drive;
            }
        }
        #endregion

        #region Заполнить информацию о файлах
        public MethodResult<int> FillFilesInfo(int driveId, string pathDrive, Func<string, int, int> CreateFile)
        {
            var result = new MethodResult<int>(0);
            string[] files = null;
            try
            {
                files = Directory.GetFiles(pathDrive, "*.*", SearchOption.AllDirectories);
            }
            catch (UnauthorizedAccessException e)
            {
                result.Success = false;
                result.Messages.Add(e.Message);
            }
            catch (System.IO.DirectoryNotFoundException e)
            {
                result.Success = false;
                result.Messages.Add(e.Message);
            }
            int i = 0;
            foreach (var path in files)
            {
                int id = CreateFile(path, driveId);
                i++;
            }
            result.Result = i;
            return result;
        }
        #endregion

        #region Вернуть описание папки
        public DirectoryInfo GetDirectoryInfoByPath(string path)
        {
            if (!System.IO.Directory.Exists(path))
            {
                throw new ArgumentException();
            }
            var di = new DirectoryInfo(path);
            return di;
        }
        #endregion

        #region Вернуть описание файла
        public FileInfo GetFileInfoByPath(string path)
        {
            if (!File.Exists(path))
            {
                throw new ArgumentException();
            }
            FileInfo fi = null;
            try
            {
                fi = new FileInfo(path);
            }
            catch (System.IO.FileNotFoundException e)
            {
                _logger.Add(e.Message);
            }
            return fi;
        }
        #endregion

        #region Вернуть картинку в binary
        public byte[] GetImageData(Bitmap bmp)
        {
            //  byte[] imageData = null;
            byte[] bytes;
            using (var memoryStream = new MemoryStream())
            {
                bmp.Save(memoryStream, ImageFormat.Jpeg);
                bytes = memoryStream.GetBuffer();
                /*  using (var binaryReader = new BinaryReader(memoryStream))
                  {
                      imageData = binaryReader.ReadBytes((int)memoryStream.Length);
                  }*/
            }
            return bytes;

        }
        #endregion

        public byte[] GetBinaryData<T>(T obj)
        {

            if (obj == null) return new byte[1];
            using (MemoryStream stream = new MemoryStream())
            {
                BinaryFormatter formatter = new BinaryFormatter();
                formatter.Serialize(stream, obj);
                return stream.GetBuffer();
            }
        }

        public T GetDataFromBinary<T>(byte[] data)
        {
            if (data == null || data.Count()<=1) return default(T);
            using (MemoryStream stream = new MemoryStream(data))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                return (T)formatter.Deserialize(stream);
            }
        }









    }
}
