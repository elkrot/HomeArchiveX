using HomeArchiveX.Model;
using LinqSpecs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search
{

    public class SearchByCategoryWidget :  SearchWidget<SearchWidgetItem>
    {
        public void AddQuery(string CategoryTitle)
        {
            //var category = new AdHocSpecification<ArchiveEntity>(x => x.CategoryToEntities(searchString));
            //var str2 = new AdHocSpecification<ArchiveEntity>(x => x.Description.Contains(searchString));

            //var specification = new OrSpecification<ArchiveEntity>(str1, str2);
            //AddItem(new SearchWidgetItem()
            //{
            //    Title = string.Format(@"Содержимое содержит строку '{0}'", searchString)
            //    ,
            //    Specification = specification
            //});
        }
    }
}
