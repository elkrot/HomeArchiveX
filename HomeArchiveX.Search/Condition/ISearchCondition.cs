using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search
{
    public interface ISearchCondition
    {
        ObservableCollection<ISearchConditionItem> Items { get; }
        Dictionary<string, SearchWidget<SearchWidgetItem>> Widgets { get; set; }
    }
}
