using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeArchiveX.Infrastructure
{
    public interface ILogger
    {
        void Add(string message);
        string GetLog();
    }
}
