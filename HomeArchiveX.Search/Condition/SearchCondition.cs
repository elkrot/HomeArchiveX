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
using System.Windows;

namespace HomeArchiveX.Search.Condition
{
    public class SearchCondition:DependencyObject, ISearchCondition
    {
        ObservableCollection<ISearchConditionItem> _items;
        public ObservableCollection<ISearchConditionItem> Items
        {
            get {  return _items;  }
        }

        public void LoadItems() {
        _items.Clear();
        foreach (var wiget in Widgets)
            {
                foreach (var item in wiget.Value.Items)
                {
                    _items.Add(new SearchConditionItem(item.Title));
                }
            }
        }

        private Dictionary<string, SearchWidget<SearchWidgetItem>> _widgets;

        public SearchCondition(Dictionary<string, SearchWidget<SearchWidgetItem>> widgets)
        {
            _items = new ObservableCollection<ISearchConditionItem>();
            _widgets = widgets;
             
        }

        public Dictionary<string, SearchWidget<SearchWidgetItem>> Widgets
        {
            get { return _widgets; }
            set { _widgets = value; }
        }

        public Expression<Func<ArchiveEntity, bool>> Condition
        {
            get
            {
                Specification<ArchiveEntity> specification = new  AdHocSpecification<ArchiveEntity>(n=>n.ArchiveEntityKey==n.ArchiveEntityKey);
                Expression<Func<ArchiveEntity, bool>> Result;
                foreach (var wiget in _widgets)
                {
                    foreach (var item in wiget.Value.Items)
                    {
                        specification = new AndSpecification<ArchiveEntity>(specification, item.Specification);
                    }
                }
                Result = specification.IsSatisfiedBy();
                return Result;
            }
        }

   //     private void test() {

   //         var startWithJ = new AdHocSpecification<ArchiveEntity>(n => n.Title.Contains("J"));
   //         var endsWithE = new AdHocSpecification<ArchiveEntity>(n => n.Title.EndsWith("e"));
   //         var specfication = new AndSpecification<ArchiveEntity>(startWithJ, endsWithE);

   //         Expression<Func<ArchiveEntity, bool>> ex = specfication.IsSatisfiedBy();
   //         /*			
   //         TrueSpecification
			//DirectSpecification
			//NotSpecification
			//OrSpecification
			//CompositeSpecification
			//AndSpecification
   //         */
   //         //IEnumerable<ArchiveEntity> GetFilesOnDriveByCondition(Expression<Func<ArchiveEntity, bool>> where, Expression<Func<ArchiveEntity, object>> orderby)
   //     }
    }
}
