using System.Collections.Generic;

namespace HomeArchiveX.Search
{
    public interface ISearchWidget
    {
       List<ISearchWidgetItem> Items { get; set; }
        void LoadWidget();
    }
}
