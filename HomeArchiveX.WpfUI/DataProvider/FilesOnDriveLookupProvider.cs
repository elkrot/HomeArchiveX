using HomeArchiveX.Model;
using HomeArchiveX.WpfU.DataProvider.Lookups;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;
using HomeArchiveX.DataAccess;
using System.Collections.ObjectModel;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public class FilesOnDriveLookupProvider : ITreeViewLookupProvider<ArchiveEntity>
    {
        private readonly Func<IDataService> _dataServiceCreator;

        public FilesOnDriveLookupProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;
        }


        public IEnumerable<LookupItemNode> GetLookup()
        {
            using (var service = _dataServiceCreator())
            {
                return service.GetAllFilesOnDrive()
                        .Select(f => new LookupItemNode
                        {
                            Id = f.ArchiveEntityKey,
                            DisplayValue = string.Format("{0}", f.Title),
                            Nodes = GetNodesById(f.ArchiveEntityKey)
                        })
                        .OrderBy(l => l.DisplayValue)
                        .ToList();
            }
        }

        private ObservableCollection<LookupItemNode> GetNodesById(int archiveEntityKey)
        {
            using (var service = _dataServiceCreator())
            {
                return new ObservableCollection<LookupItemNode>(
                    service.GetFilesOnDriveByCondition(x => x.ParentEntityKey == archiveEntityKey, o => o.ArchiveEntityKey).Select(
                    f => new LookupItemNode
                    {
                        Id = f.ArchiveEntityKey,
                        DisplayValue = string.Format("{0}", f.Title),
                        Nodes = GetNodesById(f.ArchiveEntityKey)
                    }
                    ).OrderBy(l => l.DisplayValue)
                        .ToList());
            }
        }

        public IEnumerable<LookupItemNode> GetLookupWithCondition(Expression<Func<ArchiveEntity, bool>> where, Expression<Func<ArchiveEntity, object>> orderby)
        {
            using (var service = _dataServiceCreator())
            {
                return service.GetFilesOnDriveByCondition(where,orderby)
                        .Select(f => new LookupItemNode
                        {
                            Id = f.ArchiveEntityKey,
                            DisplayValue = string.Format("{0}", f.Title),
                            Nodes = GetNodesById(f.ArchiveEntityKey)
                        })
                        .OrderBy(l => l.DisplayValue)
                        .ToList();
            }
        }
    }
}
