using System;
using System.Linq;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Data.Entity.Infrastructure;
using System.Collections.Generic;
using HomeArchiveX.DataAccess.Interfaces;

namespace HomeArchiveX.DataAccess.Implementations
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly IDbContext _context;

        #region Constructor
        /// <summary>
        /// Конструктор
        /// </summary>
        /// <param name="context">Контекст</param>
        public UnitOfWork(IDbContext context)
        {
            _context = context;

              //         RepositoryDictionary.Add("Image", new ImageRepository(_context));



        }
        #endregion

        #region Repositories
        //public IImageRepository ImageRepository { get; private set; }

        public Dictionary<string, object> RepositoryDictionary;

        #endregion

        #region Complete
        /// <summary>
        /// Сохранение данных в БД
        /// </summary>
        /// <returns></returns>
        public int Complete()
        {
            var ret = 0;
            using (var transaction = (_context as DbContext).Database.BeginTransaction())
            {
                try
                {
                    ret = (_context as DbContext).SaveChanges();
                    transaction.Commit();
                    return ret;


                }
                catch (DbEntityValidationException ex)
                {
                    // Retrieve the error messages as a list of strings.
                    var errorMessages = ex.EntityValidationErrors
                            .SelectMany(x => x.ValidationErrors)
                            .Select(x => x.ErrorMessage);

                    // Join the list to a single string.
                    var fullErrorMessage = string.Join("; ", errorMessages);

                    // Combine the original exception message with the new one.
                    var exceptionMessage = string.Concat(ex.Message, " Ошибки валидации: ", fullErrorMessage);

                    transaction.Rollback();

                    throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
                    //return 0;
                    // Throw a new DbEntityValidationException with the improved exception message.

                }
                catch (DbUpdateException ex)
                {
                    // Retrieve the error messages as a list of strings.
                    var errorMessages = ex.InnerException.InnerException.Message;
                    var exceptionMessage = string.Concat(ex.Message, " Ошибки Сохранения в БД: ", errorMessages);
                    transaction.Rollback();
                    // Throw a new DbEntityValidationException with the improved exception message.
                    throw new DbUpdateException(exceptionMessage);
                    // return 0;
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    throw;
                }
            }
        }
        #endregion

        #region Dispose
        /// <summary>
        /// Удаление
        /// </summary>
        private bool disposed = false;

        public virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    (_context as DbContext).Dispose();
                }
                this.disposed = true;
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }



        #endregion

        #region GetRepository
        public IRepository<T> GetRepository<T>() where T : class
        {
            IRepository<T> ret;
            Type typeoft = typeof(T);
            Object o;
            RepositoryDictionary.TryGetValue(typeoft.Name, out o);

            ret = (IRepository<T>)o;

            if (ret == null) throw new ArgumentNullException("ret");
      
            return ret;

        }

        #endregion
    }

    public interface IDbContext
    {
    }
}




