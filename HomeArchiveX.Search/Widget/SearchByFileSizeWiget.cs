using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using LinqSpecs;

namespace HomeArchiveX.Search
{

    #region Item Виджета 
    public class SearchByFileSizeWidgetItem : ISearchWidgetItem
    {
        public Specification<ArchiveEntity> Specification { get; set; }
        public string Title { get; set; }
    }
    #endregion


    public class SearchByFileSizeWiget :   SearchWidget<SearchByFileSizeWidgetItem>
    {
        public void AddQuery(int Filesize) {
            var specification = new AdHocSpecification<ArchiveEntity>(x=> x.FileSize == Filesize);
            AddItem(new SearchByFileSizeWidgetItem() { Title=string.Format("Размер равен {0}",Filesize),Specification = specification});
        }

        public void AddQuery(int minFilesize, int maxFilesize)
        {
            var spMin = new AdHocSpecification<ArchiveEntity>(x => x.FileSize >= minFilesize);
            var spMax = new AdHocSpecification<ArchiveEntity>(x => x.FileSize <= maxFilesize);
            var specification = new AndSpecification<ArchiveEntity>(spMin, spMax);
            AddItem(new SearchByFileSizeWidgetItem()
            {
                Title = string.Format("Размер между {0} и {1}", minFilesize, maxFilesize)
                , Specification = specification });
        }

    }
}
