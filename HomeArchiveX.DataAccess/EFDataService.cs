using System;
using System.Collections.Generic;
using System.Linq;
using HomeArchiveX.Infrastructure;
using HomeArchiveX.Model;
using HomeArchiveX.DataAccess.Implementations;
using System.Linq.Expressions;
using System.IO;
using System.Drawing;
using HomeArchiveX.Common;
using System.Data.SqlClient;

namespace HomeArchiveX.DataAccess
{
    public class EFDataService : IDataService
    {
        #region Диски
        public MethodResult<int> DeleteDrive(int id)
        {
            var strsql = @"exec[dbo].[DeleteDrive] @DriveId";

            using (var context = new HmeArhXContext())
            {
                context.Database.ExecuteSqlCommand(strsql, new SqlParameter("@DriveId", id));
                var ret = new MethodResult<int>(0);
                ret.Success = true;
                return ret;
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
           )
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                return repo.Find(where, orderby).ToList<Drive>();
            }
        }
        public IEnumerable<Drive> GetDrivesByCondition(
            Expression<Func<Drive, bool>> where
            , Expression<Func<Drive, object>> orderby
            , bool isDescending, int index, int length)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var skip = (index - 1) * length;
                var repo = uofw.GetRepository<Drive>();
                return repo.Find(where, orderby).Skip(skip).Take(length).ToList<Drive>();
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
        public int GetCountDrivesByCondition(Expression<Func<Drive, bool>> where)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Drive>();
                return repo.Find(where).Count();
            }
        }

        #endregion

        #region Файлы


        public MethodResult<int> DeleteFileOnDrive(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                var file = repo.Find(x => x.ArchiveEntityKey == id).FirstOrDefault();
                repo.Remove(file);

                return uofw.Complete();
            }
        }
        public MethodResult<int> SaveFileOnDrive(ArchiveEntity archiveEntity)
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
                var includes = new List<string>() { "Images","Categories","Tags"};
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
                return repo.Find(where).ToList();
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
        public MethodResult<int> AddImageToFileOnDrive(int ArchiveEntityKey, string img, int DriveId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var cnf = new ConfigurationData();
                var lg = new Logger();
                var fm = new FileManager(cnf, lg);
                int ImageKey = 0;
                // Сохранить изображение, Сохранить эскиз
                string targetDir = string.Format(@"drive{0}\img{1}", DriveId, ArchiveEntityKey);
                var im = CreateImage(img, targetDir, cnf, lg, fm);

                // Сохранить запись об изображении в БД
                var entityRepository = uofw.GetRepository<ArchiveEntity>();
                var entity = entityRepository.Find(x => x.ArchiveEntityKey == ArchiveEntityKey).First();

                var imageRepository = uofw.GetRepository<Model.Image>();
                imageRepository.Add(im);
                entity.Images.Add(im);
                entityRepository.Update(entity);

                var ret = uofw.Complete();
                ImageKey = im.ImageKey;

                if (!ret.Success|| ImageKey==0)
                {
                    ret.Success = false;
                    return ret;
                }else

                return new MethodResult<int>(ImageKey);
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

        public Model.Image GetImageToEntityById(int EntityId, int ImageId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var imageRepo = uofw.GetRepository<HomeArchiveX.Model.Image>();
                var includes = new List<string>() { "ArchiveEntities" };
                var image = imageRepo.Find(
                    x => x.ImageKey == ImageId && x.ArchiveEntities.Where(a => a.ArchiveEntityKey == EntityId).Count() > 0
                    , includes, null).FirstOrDefault();
                if (image != null)
                    return image;

                return default(Model.Image);
            }
        }

        #endregion


        #endregion



        #region Метки
        public Tag GetTagById(int TagId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<HomeArchiveX.Model.Tag>();

                return repo.Find(x => x.TagKey == TagId).FirstOrDefault();
            }
        }

        public Tag GetTagToEntityById(int EntityId, int TagId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var tagRepo = uofw.GetRepository<HomeArchiveX.Model.Tag>();
                var includes = new List<string>() { "ArchiveEntities" };
                var image = tagRepo.Find(
                    x => x.TagKey == TagId && x.ArchiveEntities.Where(a => a.ArchiveEntityKey == EntityId).Count() > 0
                    , includes, null).FirstOrDefault();
                if (image != null)
                    return image;

                return default(Model.Tag);
            }
        }


        public MethodResult<int> AddTagToEntity(int ArchiveEntityKey, string Tag)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                // Сохранить запись  в БД

                var entityRepository = uofw.GetRepository<ArchiveEntity>();
                var entity = entityRepository.Find(x => x.ArchiveEntityKey == ArchiveEntityKey).First();

                var tagRepository = uofw.GetRepository<HomeArchiveX.Model.Tag>();
                Tag tag = tagRepository.Find(x => x.TagTitle == Tag).FirstOrDefault();

                if (tag == null)
                {
                    tag = new Model.Tag() { TagTitle = Tag };
                    tagRepository.Add(tag);
                }
                
                entity.Tags.Add(tag);
                

                var ret = uofw.Complete();

                if (!ret.Success)
                    return ret;
                return new MethodResult<int>(tag.TagKey);
            }
        }

        public IEnumerable<Tag> GetAllTags()
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Tag>();
                return repo.GetAll();
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

        public Category GetCategoryToEntityById(int EntityId, int CategoryId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var categoryRepository = uofw.GetRepository<HomeArchiveX.Model.Category>();
                var includes = new List<string>() { "ArchiveEntities" };
                var category = categoryRepository.Find(
                    x => x.CategoryKey == CategoryId && x.ArchiveEntities.Where(a => a.ArchiveEntityKey == EntityId).Count() > 0
                    , includes, null).FirstOrDefault();
                if (category != null)
                { return category; }
                

                return default(Model.Category);
            }
        }


        public MethodResult<int> AddCategoryToEntity(int ArchiveEntityKey, int CategoryId)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {

                var entityRepository = uofw.GetRepository<ArchiveEntity>();
                var entity = entityRepository.Find(x => x.ArchiveEntityKey == ArchiveEntityKey).First();

                var categoryRepository = uofw.GetRepository<Category>();
                var category = categoryRepository.Find(x => x.CategoryKey == CategoryId).FirstOrDefault();
                if (category == null)
                {
                    throw new ArgumentException("Не верный параметр", "CategoryId");
                }
                
                entity.Categories.Add(category);
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
                var repo = uofw.GetRepository<HomeArchiveX.Model.Category>();     
                return repo.GetAll();
            }
        }

        public MethodResult<int> DeleteCategory(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Category>();
                var file = repo.Find(x => x.CategoryKey == id).FirstOrDefault();
                repo.Remove(file);

                return uofw.Complete();
            }
        }

        public Category GetCategoryBy(int id)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<HomeArchiveX.Model.Category>();
                return repo.Find(x => x.CategoryKey == id).FirstOrDefault();
            }
        }

        public MethodResult<int> SaveCategory(Category category)
        {
            throw new NotImplementedException();
        }

        public MethodResult<int> AddCategory(Category category)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<Category>();
                repo.Add(category);
                var ret = uofw.Complete();
                if (!ret.Success)
                    return ret;
                return new MethodResult<int>(category.CategoryKey);
            }
        }


        #endregion

        #region Remove from Entities
        public MethodResult<int> RemoveTagFromEntity(int ArchiveEntityKey, int TagKey)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                var file = repo.Find(x => x.ArchiveEntityKey == ArchiveEntityKey).FirstOrDefault();
                var tagRepository = uofw.GetRepository<Tag>();
                var tag = tagRepository.Find(x => x.TagKey == TagKey).First();
                file.Tags.Remove(tag);
                repo.Update(file);

                return uofw.Complete();
            }
        }

        public MethodResult<int> RemoveCategoryFromEntity(int ArchiveEntityKey,int CategoryKey)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                var file = repo.Find(x => x.ArchiveEntityKey == ArchiveEntityKey).FirstOrDefault();
                var categoryRepository = uofw.GetRepository<Category>();
                var category = categoryRepository.Find(x=>x.CategoryKey==CategoryKey).First();
                file.Categories.Remove(category);
                repo.Update(file);

                return uofw.Complete();
            }
        }

        public MethodResult<int> RemoveImageFromEntity(int ArchiveEntityKey, int ImageKey)
        {
            using (var uofw = new UnitOfWork(new HmeArhXContext()))
            {
                var repo = uofw.GetRepository<ArchiveEntity>();
                var file = repo.Find(x => x.ArchiveEntityKey == ArchiveEntityKey).FirstOrDefault();
                var imageRepository = uofw.GetRepository<Model.Image>();
                var image = imageRepository.Find(x => x.ImageKey == ImageKey).First();
                file.Images.Remove(image);
                repo.Update(file);

                return uofw.Complete();
            }
        }

       
        #endregion

    }
}
