﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HomeArchiveX.Model;

namespace HomeArchiveX.Search.Result
{
    public class SearchResultItem : ISearchResultItem
    {
        ArchiveEntity _archiveEntity;
        public ArchiveEntity ArchiveEntity { get { return _archiveEntity; }  }

        public SearchResultItem(ArchiveEntity archiveEntity)
        {
            archiveEntity = _archiveEntity;
        }

        
    }
}
