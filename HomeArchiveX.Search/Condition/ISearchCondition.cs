using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search
{
    public interface ISearchCondition
    {
         List<ISearchConditionItem> Items { get; set; }
        Dictionary<string, SearchWidget<SearchWidgetItem>> Widgets { get; set; }
    }
}
