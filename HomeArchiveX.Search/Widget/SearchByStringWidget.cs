using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search
{
    public class SearchByStringWidgetItem : ISearchWidgetItem
    {
        public Expression QueryExpression
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public string Title
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }
    }

    public class SearchByStringWidget : ISearchWidget
    {
        public List<SearchByStringWidgetItem> Items
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        List<ISearchWidgetItem> ISearchWidget.Items
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public void LoadWidget()
        {
            throw new NotImplementedException();
        }
    }
}
