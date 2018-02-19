using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Expressions;
using System.Data.Entity;
using HomeArchiveX.Common.Interfaces;
using LinqKit;

namespace HomeArchiveX.Common.Implementations
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        protected readonly DbContext Context;

        public Repository(IDbContext context)
        {
            Context = context as DbContext;
        }

        public TEntity Get(params object[] KeyValues)
        {
            return Context.Set<TEntity>().Find(KeyValues);
        }

        public IEnumerable<TEntity> GetAll()
        {
            return Context.Set<TEntity>().ToList();
        }
        public IEnumerable<TEntity> GetAll(List<string> includes)
        {
            IQueryable<TEntity> ret;
            ret = Context.Set<TEntity>();
            foreach (var item in includes)
            {
                ret = ret.Include(item);
            }
            //AsNoTracking
            return ret;
        }
        public IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicate)
        {
            return Context.Set<TEntity>().Where(predicate);
        }

        public IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicate
            , List<string> includes, Expression<Func<TEntity, object>> orderby)
        {
            IQueryable<TEntity> ret;

            ret = Context.Set<TEntity>();
            foreach (var item in includes)
            {
                ret = ret.Include(item);
            }
            if (orderby != null)
                ret = ret.OrderBy(orderby);

            return ret.Where(predicate);
        }


        public void Add(TEntity entity)
        {
            Context.Set<TEntity>().Add(entity);
        }

        public void AddRange(IEnumerable<TEntity> entities)
        {
            Context.Set<TEntity>().AddRange(entities);

        }

        public void Remove(TEntity entity)
        {
            (Context as DbContext).Entry(entity).State = System.Data.Entity.EntityState.Deleted;
            Context.Set<TEntity>().Remove(entity);
        }
        public void RemoveRange(IEnumerable<TEntity> entities)
        {
            foreach (var item in entities)
            {
                (Context as DbContext).Entry(item).State = System.Data.Entity.EntityState.Deleted;
            }
            Context.Set<TEntity>().RemoveRange(entities);
        }

        public void Update(TEntity entity)
        {
            (Context as DbContext).Entry(entity).State = System.Data.Entity.EntityState.Modified;
            
        }

        public IEnumerable<TEntity> GetWithInclude(params Expression<Func<TEntity, object>>[] includeProperties)
        {
            return Include(includeProperties).ToList();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <example> phoneRepo.GetWithInclude(p=>p.Company);</example>
        /// <param name="predicate"></param>
        /// <param name="includeProperties"></param>
        /// <returns></returns>
        public IEnumerable<TEntity> GetWithInclude(Func<TEntity, bool> predicate,
            params Expression<Func<TEntity, object>>[] includeProperties)
        {
            var query = Include(includeProperties);
            return query.Where(predicate).ToList();
        }

         IQueryable<TEntity> Include(params Expression<Func<TEntity, object>>[] includeProperties)
        {
            IQueryable<TEntity> query = Context.Set<TEntity>();
            return includeProperties
                .Aggregate(query, (current, includeProperty) => current.Include(includeProperty));
        }

        IQueryable<TEntity> IRepository<TEntity>.Include(params Expression<Func<TEntity, object>>[] includeProperties)
        {
            IQueryable<TEntity> query = Context.Set<TEntity>();
            return includeProperties
                .Aggregate(query, (current, includeProperty) => current.Include(includeProperty));
        }

        public IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicate, Expression<Func<TEntity, object>> orderby)
        {
            IQueryable<TEntity> ret;

            ret = Context.Set<TEntity>();

            if (orderby != null)
                ret = ret.OrderBy(orderby);

            return ret.Where(predicate);
        }
    }
}
