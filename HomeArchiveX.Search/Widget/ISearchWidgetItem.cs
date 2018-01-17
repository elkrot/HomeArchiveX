using System.Linq.Expressions;

namespace HomeArchiveX.Search
{
    public interface ISearchWidgetItem
    {
        string Title { get; set; }
        Expression QueryExpression { get; set; }
    }
}
