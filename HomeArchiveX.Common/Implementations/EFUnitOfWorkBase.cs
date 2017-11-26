using HomeArchiveX.Common.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Common.Implementations
{
    public abstract class EFUnitOfWorkBase : IUnitOfWork
    {
        protected IDbContext _context;

        #region Constructor
        /// <summary>
        /// Конструктор
        /// </summary>
        /// <param name="context">Контекст</param>
        public EFUnitOfWorkBase(IDbContext context)
        {
            RepositoryDictionary = new Dictionary<string, object>();
            _context = context;
        }
        #endregion

        #region Repositories
        public Dictionary<string, object> RepositoryDictionary;
        #endregion

        #region Complete
        /// <summary>
        /// Сохранение данных в БД
        /// </summary>
        /// <returns></returns>
        public virtual MethodResult<int> Complete()
        {
            var ret = new MethodResult<int>(default(int)) { Success = true };
            using (var transaction = (_context as DbContext).Database.BeginTransaction())
            {
                try
                {
                    ret.Result = (_context as DbContext).SaveChanges();
                    transaction.Commit();
                }
                catch (DbEntityValidationException ex)
                {
                    var errorMessages = ex.EntityValidationErrors
                            .SelectMany(x => x.ValidationErrors)
                            .Select(x => x.ErrorMessage);

                    var fullErrorMessage = string.Join("; ", errorMessages);

                    var exceptionMessage = string.Concat(ex.Message, " Ошибки валидации: ", fullErrorMessage);

                    transaction.Rollback();
                    ret.Success = false;
                    ret.Messages.Add(exceptionMessage);
                    foreach (var item in ex.EntityValidationErrors)
                    {
                        foreach (var err in item.ValidationErrors)
                        {
                            ret.Messages.Add(string.Format("{0} {1}", err.PropertyName, err.ErrorMessage));
                        }
                    }
                }
                catch (DbUpdateException ex)
                {
                    var errorMessages = ex.InnerException.InnerException.Message;
                    var exceptionMessage = string.Concat(ex.Message, " Ошибки Сохранения в БД: ", errorMessages);
                    transaction.Rollback();
                    ret.Success = false;
                    ret.Messages.Add(exceptionMessage);
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    ret.Success = false;
                    ret.Messages.Add(ex.Message);
                }
                return ret;
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
