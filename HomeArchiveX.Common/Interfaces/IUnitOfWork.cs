using System;
namespace HomeArchiveX.Common.Interfaces
{
    public interface IUnitOfWork : IDisposable
    {
        MethodResult<int> Complete();
    }
}
