using HomeArchiveX.Model;
using LinqSpecs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search.Condition
{
    public class SearchCondition: ISearchCondition
    {
        public List<ISearchConditionItem> Items
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

        private void test() {

            var startWithJ = new AdHocSpecification<ArchiveEntity>(n => n.Title.Contains("J"));
            var endsWithE = new AdHocSpecification<ArchiveEntity>(n => n.Title.EndsWith("e"));
            var specfication = new AndSpecification<ArchiveEntity>(startWithJ, endsWithE);

            Expression<Func<ArchiveEntity, bool>> ex = specfication.IsSatisfiedBy();
            /*			
             *			TrueSpecification
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
