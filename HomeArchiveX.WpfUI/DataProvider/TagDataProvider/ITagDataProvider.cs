using HomeArchiveX.Common;
using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.DataProvider
{
    public interface ITagDataProvider
    {
        Tag GetTagById(int TagKey);

        MethodResult<int> SaveTag(Tag tag);

        MethodResult<int> DeleteTag(int TagKey);

        MethodResult<int> AddTag(Tag tag);
    }
}
