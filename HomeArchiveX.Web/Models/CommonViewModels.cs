using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeArchiveX.Web.Models
{
    public class PaginatorViewModel
    {
        private int _rowsOnPage { get; set; }
        private int _totalRows { get; set; }
        private int _maxNumbers { get { return 10; } }

        public int CurrentPage { get; set; }
        public int TotalPages { get; set; }
        public int FirstPage { get; set; }
        public int LastPage { get; set; }

        public PaginatorViewModel(int rowsOnPage, int totalRows, int currentPage)
        {
            #region Guard
            if (rowsOnPage < 1 || totalRows < 1 || currentPage < 1) {

                _rowsOnPage = _totalRows = CurrentPage = TotalPages = 0;
                return;
            }


            #endregion

            _rowsOnPage = rowsOnPage;
            _totalRows = totalRows;
            CurrentPage = currentPage;
            TotalPages = GetTotalPages();

            FirstPage = CurrentPage <= _maxNumbers/2  ? 1 : CurrentPage - _maxNumbers/2;
            if (FirstPage + _maxNumbers-1 < TotalPages)
            {

                LastPage = FirstPage + _maxNumbers-1 ;
            }
            else {
                LastPage = TotalPages;
            }

        }

        private int GetTotalPages()
        {
            int lastPage = _totalRows % _rowsOnPage > 0 ? 1 : 0;
            int result = (_totalRows / _rowsOnPage)+ lastPage;

           return result;
        }
    }
}