﻿using HomeArchiveX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Search
{
    public interface ISearchResultItem
    {
        ArchiveEntity ArchiveEntity { get;  }
    }
}
