﻿using Microsoft.Practices.Prism.PubSubEvents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.WpfUI.Event
{
    public class FileOnDriveDeletedEvent : PubSubEvent<int>
    {
    }
}