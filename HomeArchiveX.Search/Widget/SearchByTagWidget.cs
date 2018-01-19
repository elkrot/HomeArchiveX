
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



    #region Item Виджета 
    //public class SearchByTagWidgetItem : ISearchWidgetItem
    //{
    //    public Specification<ArchiveEntity> Specification { get; set; }
    //    public string Title { get; set; }
    //}
    #endregion


    #region  Виджет поиска
    public class SearchByTagWidget : SearchWidget<SearchWidgetItem>
    {
        public void AddQuery(string searchString)
        {
            var str1 = new AdHocSpecification<ArchiveEntity>(x => x.Title.Contains(searchString));
            var str2 = new AdHocSpecification<ArchiveEntity>(x => x.Description.Contains(searchString));

            var specification = new OrSpecification<ArchiveEntity>(str1, str2);
            AddItem(new SearchWidgetItem()
            {
                Title = string.Format(@"Содержимое содержит строку '{0}'", searchString)
                ,
                Specification = specification
            });
        }
    }
    #endregion
}
