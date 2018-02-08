using HomeArchiveX.Model;
using HomeArchiveX.WpfU.DataProvider.Lookups;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;
using HomeArchiveX.DataAccess;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public class TagLookupProvider : ILookupProvider<Tag>
    {
        private readonly Func<IDataService> _dataServiceCreator;
        private IEnumerable<Tag> _tags;
        public TagLookupProvider(Func<IDataService> dataServiceCreator)
        {
            _dataServiceCreator = dataServiceCreator;
        }
        public IEnumerable<LookupItem> GetLookup()
        {
            using (var service = _dataServiceCreator())
            {
                _tags = service.GetAllTags().ToList();
            }

            var ret = _tags
                    .Select(f => new LookupItem
                    {
                        Id = f.TagKey,
                        DisplayValue = string.Format("{0}", f.TagTitle)
                    })
                    .ToList();
            return ret;
        }

        public IEnumerable<LookupItem> GetLookupWithCondition(Expression<Func<Tag, bool>> where, Expression<Func<Tag, object>> orderby)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<LookupItem> GetLookupWithCondition(Expression<Func<Tag, bool>> where, Expression<Func<Tag, object>> orderby, bool isDescending, int index, int length)
        {
            throw new NotImplementedException();
        }
    }
}
