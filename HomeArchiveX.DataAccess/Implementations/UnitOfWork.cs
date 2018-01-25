using System;
using System.Linq;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Data.Entity.Infrastructure;
using System.Collections.Generic;
using HomeArchiveX.Common.Interfaces;
using HomeArchiveX.Common.Implementations;

namespace HomeArchiveX.DataAccess.Implementations
{
    public class UnitOfWork : EFUnitOfWorkBase
    {
        #region Constructor
        /// <summary>
        /// Конструктор
        /// </summary>
        /// <param name="context">Контекст</param>
        public UnitOfWork(IDbContext context) : base(context)
        {
            RepositoryDictionary.Add("Drive", new DriveRepository(_context));
            RepositoryDictionary.Add("ArchiveEntity", new ArchiveEntityRepository(_context));
            RepositoryDictionary.Add("Image", new ImageRepository(_context));
            RepositoryDictionary.Add("Tag", new TagRepository(_context));
            RepositoryDictionary.Add("Category", new CategoryRepository(_context));
        }
        #endregion
    }


}




