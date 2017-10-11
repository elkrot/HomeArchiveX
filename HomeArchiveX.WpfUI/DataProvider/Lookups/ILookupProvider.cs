using System;
using System.Collections.Generic;
using System.Linq.Expressions;

namespace HomeArchiveX.WpfU.DataProvider.Lookups
{
    public interface ILookupProvider<T>
    {
        IEnumerable<LookupItem> GetLookup();
        IEnumerable<LookupItem> GetLookupWithCondition(Expression<Func<T, bool>> where, Expression<Func<T, object>> orderby);
        IEnumerable<LookupItem> GetLookupWithCondition(Expression<Func<T, bool>> where, Expression<Func<T, object>> orderby
            , bool isDescending, int index, int length);
    }

    public interface ITreeViewLookupProvider<T>
    {
        IEnumerable<LookupItemNode> GetLookup();
        IEnumerable<LookupItemNode> GetLookup(int? DriveId = default(int?));

        
        IEnumerable<LookupItemNode> GetLookupWithCondition(Expression<Func<T, bool>> where, Expression<Func<T, object>> orderby);
    }

}
