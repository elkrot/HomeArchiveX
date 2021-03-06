﻿namespace HomeArchiveX.Infrastructure
{
    public interface IConfiguration
    {
        int ThumbnailWidth { get;  }
        string GetConnectionString();
        string GetThumbDirName();
        string GetTargetImagePath();
    }
}