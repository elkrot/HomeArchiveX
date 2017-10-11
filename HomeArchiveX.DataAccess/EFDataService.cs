using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using HomeArchiveX.DataAccess.Implementations;
using System.Linq.Expressions;
using System.IO;
using System.Drawing;

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

        public IEnumerable<Drive> GetDrivesByCondition(
            Expression<Func<Drive, bool>> where
            , Expression<Func<Drive, object>> orderby
            , bool isDescending , int index , int length)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var skip = (index - 1) * length;
                var repo = uofw.GetRepository<Drive>();
                return repo.Find(where,orderby).Skip(skip).Take(length).ToList<Drive>();
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

                if (archiveEntity.ArchiveEntityKey != 0)
                {
                    repo.Update(archiveEntity);
                }
                else
                {
                    repo.Add(archiveEntity);
                }
               
                return uofw.Complete();
            }
        }
        public ArchiveEntity GetFileOnDriveDriveById(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                var includes = new List<string>() { "ImageToEntities","ImageToEntities.Image"
                    , "CategoryToEntities", "CategoryToEntities.Category"
                    , "TagToEntities", "TagToEntities.Tag"};
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
        public MethodResult<int> AddImageToFileOnDrive(int ArchiveEntityKey, string img,int DriveId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var cnf = new ConfigurationData();
                var lg = new Logger();
                var fm = new FileManager(cnf, lg);

                // Сохранить изображение, Сохранить эскиз

                string targetDir = string.Format(@"drive{0}\img{1}", DriveId, ArchiveEntityKey);
                var im = CreateImage(img, targetDir, cnf, lg, fm);

                // Сохранить запись об изображении в БД
                var imageRepo = uofw.GetRepository<HomeArchiveX.Model.Image>();
                imageRepo.Add(im);
                var ret = uofw.Complete();
                if (!ret.Success) return ret;
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
                ret=uofw.Complete();
                if (!ret.Success)
                    return ret;
                return new MethodResult<int>(im.ImageKey);
            }
        }



        #region Создать запись об изображении
        /// <summary>
        /// Создать запись об изображении
        /// </summary>
        /// <param name="imagePath">Путь к изопражению</param>
        /// <param name="targetDir">Путь назначение</param>
        /// <returns>Ключ рисунка</returns>
        private HomeArchiveX.Model.Image CreateImage(string imagePath, string targetDir, IConfiguration cnf, ILogger lg, IFIleManager fm)
        {
            var imgInfo = new FileInfo(imagePath);
            var imgDirPath = imgInfo.Directory.FullName;
            string newImgPath = "";
            byte[] imageData = null;
            try
            {
                newImgPath = fm.CopyImg(imagePath, targetDir);
            }
            catch (IOException copyError)
            {
                lg.Add(copyError.Message);
            }

            Bitmap bmp = fm.GetThumb(imagePath);
            string thumbPath = fm.SaveThumb(targetDir, cnf.GetThumbDirName(), bmp, imgInfo.Name);
            imageData = fm.GetImageData(bmp);


            var im = new HomeArchiveX.Model.Image()
            {
                HashCode = imgInfo.GetHashCode()
                ,
                ImagePath = newImgPath
                ,
                ImageTitle = imgInfo.Name
                ,
                ThumbnailPath = thumbPath
                ,
                Thumbnail = imageData
            };
            return im;

        }

        public Model.Image GetImageById(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<HomeArchiveX.Model.Image>();
               
                return repo.Find(x => x.ImageKey == id).FirstOrDefault();
            }
        }

        public ImageToEntity GetImageToEntityById(int EntityId, int ImageId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<HomeArchiveX.Model.ImageToEntity>();
                var includes = new List<string>() { "Image" };
                return repo.Find(x => x.ImageKey == ImageId && x.TargetEntityKey== EntityId, includes,null).FirstOrDefault();
            }
        }

        #endregion
        #endregion



        #region Метки
        public Tag GetTagById( int TagId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<HomeArchiveX.Model.Tag>();
                
                return repo.Find(x => x.TagKey == TagId).FirstOrDefault();
            }
        }

        public TagToEntity GetTagToEntityById(int EntityId, int TagId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<HomeArchiveX.Model.TagToEntity>();
                var includes = new List<string>() { "Tag" , "ArchiveEntity" };
                return repo.Find(x => x.TagKey == TagId && x.TargetEntityKey == EntityId, includes, null).FirstOrDefault();
            }
        }


        public MethodResult<int> AddTagToEntity(int ArchiveEntityKey, string Tag)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                // Сохранить запись  в БД
                var tagRepo = uofw.GetRepository<HomeArchiveX.Model.Tag>();
                Tag tg = tagRepo.Find(x => x.TagTitle == Tag).FirstOrDefault();

                if (tg == null)
                {
                    tg = new Model.Tag() { TagTitle = Tag };
                    tagRepo.Add(tg);
                    uofw.Complete();
                }
                
                var ret = uofw.Complete();
                if (!ret.Success) return ret;
                // Создать экземпляр TagToEntity 
                var tte = new TagToEntity()
                {
                    TargetEntityKey = ArchiveEntityKey
                                                ,
                    TagKey = tg.TagKey
                };

                var repo = uofw.GetRepository<TagToEntity>();
                repo.Add(tte);
                ret = uofw.Complete();
                if (!ret.Success)
                    return ret;
                return new MethodResult<int>(tg.TagKey);
            }
        }
        #endregion

        #region Категории

        public Category GetCategoryById(int CategoryId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<HomeArchiveX.Model.Category>();
                
                return repo.Find(x => x.CategoryKey == CategoryId).FirstOrDefault();
            }
        }

        public CategoryToEntity GetCategoryToEntityById(int EntityId, int CategoryId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<HomeArchiveX.Model.CategoryToEntity>();
                var includes = new List<string>() { "Category" };
                return repo.Find(x => x.CategoryKey == CategoryId && x.TargetEntityKey == EntityId, includes, null).FirstOrDefault();
            }
        }


        public MethodResult<int> AddCategoryToEntity(int ArchiveEntityKey, int CategoryId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                
                var tte = new CategoryToEntity()
                {
                    TargetEntityKey = ArchiveEntityKey
                                                ,
                    CategoryKey = CategoryId
                };

                var repo = uofw.GetRepository<CategoryToEntity>();
                repo.Add(tte);
                var ret = uofw.Complete();
                if (!ret.Success)
                    return ret;
                return new MethodResult<int>(CategoryId);
            }
        }

        public IEnumerable<Category> GetAllCategories()
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var includes = new List<string>() { "Category" };
                var repo = uofw.GetRepository<HomeArchiveX.Model.Category>();

                //return repo.GetAll(includes).ToList();
                return repo.GetAll();
            }
        }


        #endregion

    }
}
