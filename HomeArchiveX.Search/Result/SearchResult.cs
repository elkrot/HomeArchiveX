using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search.Result
{
    public class SearchResult : ISearchResult
    {
        public List<ISearchResultItem> Items
        { get;   set; }

        public SearchResult(ICollection<ArchiveEntity> items )
        {
            Items = new List<ISearchResultItem>();
            foreach (var item in items)
            {
                Items.Add(new SearchResultItem(item));
            }
        }
    }
}
