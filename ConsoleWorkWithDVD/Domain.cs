using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleWorkWithDVD
{
    #region Drive
    public class Drive
    {
        public int id;
        public string title;
        public DriveInfo driveInfo;
    }
    #endregion

    #region Тип сущности
    public enum EntityType
    {
        Folder = 1
        , File = 2
    }
    #endregion

    public class MethodResult<T> {
        public List<string> Messages;
        public bool Success;
        public T Result;
        public MethodResult(T result)
        {
            Messages = new List<string>();
            Success = true;
            Result = result;
        }

    }
}
