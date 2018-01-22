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

            var specification = new AdHocSpecification<ArchiveEntity>(x => x.Categories.Where(t => t.CategoryTitle == CategoryTitle).Count() > 0);
            AddItem(new SearchWidgetItem()
            {
                Title = string.Format(@"{0}", CategoryTitle)
                ,
                Specification = specification
            });

        }
    }
}
