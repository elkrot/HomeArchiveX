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
        private  IEnumerable<ArchiveEntity> _frchiveEntityCollectionOnDisk;

        public FilesOnDriveLookupProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;
        }

        public IEnumerable<LookupItemNode> GetLookup()
        {
            throw new NotImplementedException();
        }

        public IEnumerable<LookupItemNode> GetLookup(int? DriveId = default(int?))
        {
            using (var service = _dataServiceCreator())
            {
                _frchiveEntityCollectionOnDisk = service.GetAllFilesOnDrive(DriveId??0).ToList();
            }

                var ret= _frchiveEntityCollectionOnDisk.Where(x=>x.ParentEntityKey==null)
                .OrderBy(l => l.EntityType)
                        .Select(f => new LookupItemNode
                        {
                            Id = f.ArchiveEntityKey,
                            DisplayValue = string.Format("{0}", f.Title),
                            Nodes = GetNodesById(f.ArchiveEntityKey),
                            EntityType = f.EntityType
                        })
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
                    _frchiveEntityCollectionOnDisk.Where(x => x.ParentEntityKey == archiveEntityKey)
                    .OrderBy(l => l.EntityType)
                    .Select(
                    f => new LookupItemNode
                    {
                        Id = f.ArchiveEntityKey,
                        DisplayValue = string.Format("{0}", f.Title),
                        Nodes = GetNodesById(f.ArchiveEntityKey),
                        EntityType = f.EntityType
                    }
                    ).ToList());
            
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
