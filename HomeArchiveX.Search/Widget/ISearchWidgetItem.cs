using HomeArchiveX.Model;
using LinqSpecs;
using System;
using System.Linq.Expressions;

namespace HomeArchiveX.Search
{
    public interface ISearchWidgetItem
    {
        string Title { get; set; }
        Specification<ArchiveEntity> Specification { get; set; }
    }

    public class SearchWidgetItem : ISearchWidgetItem
    {
        public Specification<ArchiveEntity> Specification { get; set; }
        public string Title { get; set; }
    }
}
