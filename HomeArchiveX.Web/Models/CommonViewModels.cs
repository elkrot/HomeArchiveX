using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeArchiveX.Web.Models
{
    public class PaginatorViewModel
    {
        private int _rowsOnPage { get; set; }
        public int _totalRows { get; set; }
        public int CurrentPage { get; set; }
        public int TotalPages { get; set; }

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
        }

        private int GetTotalPages()
        {
            int lastPage = _totalRows % _rowsOnPage > 0 ? 1 : 0;
            int result = (_totalRows / _rowsOnPage)+ lastPage;

           return result;
        }
    }
}