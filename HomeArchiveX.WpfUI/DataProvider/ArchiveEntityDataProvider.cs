using HomeArchiveX.DataAccess;
using HomeArchiveX.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public interface IArchiveEntityDataProvider
    {
        ICollection<ArchiveEntity> GetEntitiesByCondition(Expression<Func<ArchiveEntity, bool>> condition);
    }

    class ArchiveEntityDataProvider : IArchiveEntityDataProvider
    {
        private readonly Func<IDataService> _dataServiceCreator;
        public ArchiveEntityDataProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;
        }
        public ICollection<ArchiveEntity> GetEntitiesByCondition(Expression<Func<ArchiveEntity, bool>> condition)
        {
            using (var service = _dataServiceCreator())
            {
                var result = service.GetFilesOnDriveByCondition(condition,null).ToList();
                return result;
            }


        }
    }
}
