using HomeArchiveX.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HomeArchiveX.DataAccess.Interfaces
{
    public interface IUnitOfWork : IDisposable
    {

        #region Repositories
        // IAddressRepository AddressRepository { get; }
        #endregion
        MethodResult<int> Complete();
    }
}
