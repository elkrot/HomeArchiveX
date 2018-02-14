using HomeArchiveX.Model;
using HomeArchiveX.Search;
using LinqSpecs;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search.Condition
{
    public class SearchCondition: ISearchCondition
    {
        public ObservableCollection<ISearchConditionItem> Items
        {
            get {
                var ret = new ObservableCollection<ISearchConditionItem>();
                foreach (var wiget in Widgets)
                {
                    foreach (var item in wiget.Value.Items)
                    {
                        ret.Add(new SearchConditionItem(item.Title));
                        
                    }
                }
                return ret;
            }

            
        }

        private Dictionary<string, SearchWidget<SearchWidgetItem>> _widgets;
        public SearchCondition(Dictionary<string, SearchWidget<SearchWidgetItem>> widgets)
        {
            _widgets = widgets;
        }
        public Dictionary<string, SearchWidget<SearchWidgetItem>> Widgets
        {
            get { return _widgets; }

            set { _widgets = value; }
        }

        private void test() {

            var startWithJ = new AdHocSpecification<ArchiveEntity>(n => n.Title.Contains("J"));
            var endsWithE = new AdHocSpecification<ArchiveEntity>(n => n.Title.EndsWith("e"));
            var specfication = new AndSpecification<ArchiveEntity>(startWithJ, endsWithE);

            Expression<Func<ArchiveEntity, bool>> ex = specfication.IsSatisfiedBy();
            /*			
            TrueSpecification
			DirectSpecification
			NotSpecification
			OrSpecification
			CompositeSpecification
			AndSpecification
            */
            //IEnumerable<ArchiveEntity> GetFilesOnDriveByCondition(Expression<Func<ArchiveEntity, bool>> where, Expression<Func<ArchiveEntity, object>> orderby)
        }
    }
}
