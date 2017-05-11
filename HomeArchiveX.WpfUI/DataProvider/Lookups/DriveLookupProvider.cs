using HomeArchiveX.DataAccess;
using HomeArchiveX.Model;
using HomeArchiveX.WpfU.DataProvider.Lookups;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public class DriveLookupProvider: ILookupProvider<Drive>
    {

        
            private readonly Func<IDataService> _dataServiceCreator;

            public DriveLookupProvider(Func<IDataService> dataServiceCreator)
            {
                _dataServiceCreator = dataServiceCreator;
            }

            public IEnumerable<LookupItem> GetLookup()
            {
                using (var service = _dataServiceCreator())
                {
                    return service.GetAllDrives()
                            .Select(f => new LookupItem
                            {
                                Id = f.DriveId,
                                DisplayValue = string.Format("{0}", f.Title)
                            })
                            .OrderBy(l => l.DisplayValue)
                            .ToList();
                }
            }

        public IEnumerable<LookupItem> GetLookupWithCondition(Expression<Func<Drive, bool>> where, Expression<Func<Drive, object>> orderby)
        {
            using (var service = _dataServiceCreator())
            {
                return service.GetDrivesByCondition(where, orderby)
                        .Select(f => new LookupItem
                        {
                            Id = f.DriveId,
                            DisplayValue = string.Format("{0} ", f.Title)
                        })
                        .ToList();
            }
        }
    }
}
