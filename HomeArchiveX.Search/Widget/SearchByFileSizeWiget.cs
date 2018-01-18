using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search
{

    #region Item Виджета 
    public class SearchByFileSizeWidgetItem : ISearchWidgetItem
    {
        public Expression QueryExpression { get; set; }
        public string Title { get; set; }
    }
    #endregion


    public class SearchByFileSizeWiget :   SearchWidget<SearchByFileSizeWidgetItem>
    {
       
    }
}
