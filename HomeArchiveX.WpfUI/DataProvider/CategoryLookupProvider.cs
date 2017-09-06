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
    public class CategoryLookupProvider : ITreeViewLookupProvider<Category>
    {
        private readonly Func<IDataService> _dataServiceCreator;
        private IEnumerable<Category> _categories;
        public CategoryLookupProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;
        }
        public IEnumerable<LookupItemNode> GetLookup()
        {
            using (var service = _dataServiceCreator())
            {
                _categories = service.GetAllCategories().ToList();
            }

            var ret = _categories.Where(x => x.ParentCategoryKey == null)
            .OrderBy(l => l.CategoryKey)
                    .Select(f => new LookupItemNode
                    {
                        Id = f.CategoryKey,
                        DisplayValue = string.Format("{0}", f.CategoryTitle),
                        Nodes = GetNodesById(f.CategoryKey),
                        EntityType = 1
                    })
                    .ToList();
            return ret;
        }

        public IEnumerable<LookupItemNode> GetLookup(int? DriveId = default(int?))
        {
            throw new NotImplementedException();
        }

        public IEnumerable<LookupItemNode> GetLookupWithCondition(Expression<Func<Category, bool>> where, Expression<Func<Category, object>> orderby)
        {
            throw new NotImplementedException();
        }

        private ObservableCollection<LookupItemNode> GetNodesById(int archiveEntityKey)
        {

            return new ObservableCollection<LookupItemNode>(
                _categories.Where(x => x.ParentCategoryKey == archiveEntityKey)
                .OrderBy(l => l.CategoryKey)
                .Select(
                f => new LookupItemNode
                {
                    Id = f.CategoryKey,
                    DisplayValue = string.Format("{0}", f.CategoryTitle),
                    Nodes = GetNodesById(f.CategoryKey),
                    EntityType = 1
                }
                ).ToList());

        }
    }
}
