using HomeArchiveX.Common;
using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public interface ICategoryDataProvider
     
    {
        Category GetCategoryById(int id);

        MethodResult<int> SaveCategory(Category category);

        MethodResult<int> DeleteCategory(int id);

        MethodResult<int> AddCategory(Category category);
    }
}
