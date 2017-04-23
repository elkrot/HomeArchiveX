using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace HomeArchiveX.DataAccess.Interfaces
{
    public interface IRepository<TEntity> where TEntity : class
    {
        TEntity Get(params object[] KeyValues);
        IEnumerable<TEntity> GetAll();
        IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicste);

        IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicate, List<string> includes
            , Expression<Func<TEntity, object>> orderby);

        IEnumerable<TEntity> GetWithInclude(params Expression<Func<TEntity, object>>[] includeProperties);
        IEnumerable<TEntity> GetWithInclude(Func<TEntity, bool> predicate,
   params Expression<Func<TEntity, object>>[] includeProperties);
        IQueryable<TEntity> Include(params Expression<Func<TEntity, object>>[] includeProperties);

        void Add(TEntity entity);
        void AddRange(IEnumerable<TEntity> entities);
        void Update(TEntity entity);

        void Remove(TEntity entity);
        void RemoveRange(IEnumerable<TEntity> entities);
    }
}
