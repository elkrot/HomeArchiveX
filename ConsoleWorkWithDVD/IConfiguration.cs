namespace ConsoleWorkWithDVD
{
    public interface IConfiguration
    {
        int ThumbnailWidth { get;  }
        string GetConnectionString();
        string GetThumbDirName();
        string GetTargetImagePath();
    }
}