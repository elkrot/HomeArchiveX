using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using HomeArchiveX.DataAccess.Implementations;
using System.Linq.Expressions;

namespace HomeArchiveX.DataAccess
{
    public class EFDataService : IDataService
    {
        #region Диски
        public MethodResult<int> DeleteDrive(int id)
        {


            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                var drive = repo.Find(x => x.DriveId == id).FirstOrDefault();
                repo.Remove(drive);

                return uofw.Complete();
            }
        }



        public void Dispose()
        {

        }

        public IEnumerable<Drive> GetAllDrives()
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                return repo.GetAll();
            }
        }


        public Drive GetDriveById(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                return repo.Find(x => x.DriveId == id).FirstOrDefault();
            }
        }

        public IEnumerable<Drive> GetDrivesByCondition(Expression<Func<Drive, bool>> where, Expression<Func<Drive, object>> orderby)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                return repo.Find(where);
            }
        }



        public MethodResult<int> SaveDrive(Drive drive)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                if (drive.DriveId != 0)
                {
                    repo.Update(drive);
                }
                else
                {
                    repo.Add(drive);
                }
                return uofw.Complete();
            }
        }


        #endregion

        #region Файлы


        public MethodResult<int> DeleteFileOnDriveDrive(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                var file = repo.Find(x => x.ArchiveEntityKey == id).FirstOrDefault();
                repo.Remove(file);

                return uofw.Complete();
            }
        }
        public MethodResult<int> SaveFileOnDriveDrive(ArchiveEntity archiveEntity)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                repo.Add(archiveEntity);
                return uofw.Complete();
            }
        }
        public ArchiveEntity GetFileOnDriveDriveById(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                var includes = new List<string>() { "ImageToEntities","ImageToEntities.Image"
                    , "CategoryToEntities"
                    , "TagToEntities"};
                return repo.Find(x => x.ArchiveEntityKey == id,
                    includes,
                    o => o.Title).FirstOrDefault();
            }
        }

        public IEnumerable<ArchiveEntity> GetFilesOnDriveByCondition(Expression<Func<ArchiveEntity, bool>> where, Expression<Func<ArchiveEntity, object>> orderby)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                return repo.Find(where);
            }
        }


        public IEnumerable<ArchiveEntity> GetAllFilesOnDrive(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                return repo.Find(x => x.DriveId == id).ToList();
            }
        }
        #endregion

        #region Рисунки
        public MethodResult<int> AddImageToFileOnDrive(int ArchiveEntityKey, string img)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {

                // Сохранить изображение
                // Сохранить эскиз
                // Сформировать описание изображения
                // Сохранить экземпляр Image
                var im = new Image() { ImagePath = img,ImageTitle="",ThumbnailPath="",HashCode=0 };
                // Сохранить запись об изображении в БД
                var imageRepo = uofw.GetRepository<Image>();
                imageRepo.Add(im);
                var ret = uofw.Complete();
                if (!ret.Success) return default(MethodResult<int>);
                // Создать экземпляр ImageToEntity 
                var ite = new ImageToEntity()
                {
                    TargetEntityKey = ArchiveEntityKey
                                                ,
                    ImageKey = im.ImageKey
                };
                // Добавить связь изображение - сущность

                var repo = uofw.GetRepository<ImageToEntity>();
                repo.Add(ite);
                return uofw.Complete();
            }
        }
        #endregion
    }
}
