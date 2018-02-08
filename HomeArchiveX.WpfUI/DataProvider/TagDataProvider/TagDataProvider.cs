using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Common;
using HomeArchiveX.Model;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public class TagDataProvider : ITagDataProvider
    {
        public MethodResult<int> AddTag(Tag tag)
        {
            throw new NotImplementedException();
        }

        public MethodResult<int> DeleteTag(int TagKey)
        {
            throw new NotImplementedException();
        }

        public Tag GetTagById(int TagKey)
        {
            throw new NotImplementedException();
        }

        public MethodResult<int> SaveTag(Tag tag)
        {
            throw new NotImplementedException();
        }
    }
}
