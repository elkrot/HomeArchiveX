using HomeArchiveX.Common;
using HomeArchiveX.Model;


namespace HomeArchiveX.WpfUI.DataProvider
{
    public interface IDrivesDataProvider
    {
        Drive GetDriveById(int id);

        MethodResult<int> SaveDrive(Drive drive);

        MethodResult<int> DeleteDrive(int id);
    }
}
