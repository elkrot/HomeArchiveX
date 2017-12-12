using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Common;
using HomeArchiveX.Model;
using HomeArchiveX.DataAccess;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public class CategoryDataProvider : ICategoryDataProvider
    {
        private readonly Func<IDataService> _dataServiceCreator;

        public CategoryDataProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;
        }
        public MethodResult<int> DeleteCategory(int id)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.DeleteCategory(id);
            }
        }

        public Category GetCategoryById(int id)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.GetCategoryBy(id);
            }
        }

        public MethodResult<int> SaveCategory(Category category)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.SaveCategory(category);
            }
        }


        public MethodResult<int> AddCategory(Category category)
        {
            using (var dataService = _dataServiceCreator())
            {
                return dataService.AddCategory(category);
            }
        }

    }
}
