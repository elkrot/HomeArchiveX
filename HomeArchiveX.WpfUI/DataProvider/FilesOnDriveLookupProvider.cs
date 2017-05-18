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
        private readonly IEnumerable<ArchiveEntity> _frchiveEntityCollectionOnDisk;

        public FilesOnDriveLookupProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;

            using (var service = _dataServiceCreator())
            {
                _frchiveEntityCollectionOnDisk = service. GetAllFilesOnDrive(1).ToList();
            }

        }


        public IEnumerable<LookupItemNode> GetLookup()
        {
            
                var ret= _frchiveEntityCollectionOnDisk.Where(x=>x.ParentEntityKey==null)
                        .Select(f => new LookupItemNode
                        {
                            Id = f.ArchiveEntityKey,
                            DisplayValue = string.Format("{0}", f.Title),
                            Nodes = GetNodesById(f.ArchiveEntityKey)
                        })
                        .OrderBy(l => l.DisplayValue)
                        .ToList();
                return ret;
           
        }

        public IEnumerable<LookupItemNode> GetLookupWithCondition(Expression<Func<ArchiveEntity, bool>> where, Expression<Func<ArchiveEntity, object>> orderby)
        {
            throw new NotImplementedException();
        }

        private ObservableCollection<LookupItemNode> GetNodesById(int archiveEntityKey)
        {

                return new ObservableCollection<LookupItemNode>(
                    _frchiveEntityCollectionOnDisk.Where(x => x.ParentEntityKey == archiveEntityKey).Select(
                    f => new LookupItemNode
                    {
                        Id = f.ArchiveEntityKey,
                        DisplayValue = string.Format("{0}", f.Title),
                        Nodes = GetNodesById(f.ArchiveEntityKey)
                    }
                    ).OrderBy(l => l.DisplayValue)
                        .ToList());
            
        }

      /*  public IEnumerable<LookupItemNode> GetLookupWithCondition(Expression<Func<ArchiveEntity
            , bool>> where, Expression<Func<ArchiveEntity, object>> orderby)
        {
           
                var ret  = _frchiveEntityCollectionOnDisk.Where(where).OrderBy(orderby)
                        .Select(f => new LookupItemNode
                        {
                            Id = f.ArchiveEntityKey,
                            DisplayValue = string.Format("{0}", f.Title),
                            Nodes = GetNodesById(f.ArchiveEntityKey)
                        })
                        .OrderBy(l => l.DisplayValue)
                        .ToList();
            
        }*/
    }
}
