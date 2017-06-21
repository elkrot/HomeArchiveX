CREATE TABLE [dbo].[Drive] (
    [DriveId]     INT             IDENTITY (1, 1) NOT NULL,
    [Title]       NVARCHAR (100)  NULL,
    [HashCode]    INT             NULL,
    [DriveInfo]   VARBINARY (MAX) NULL,
    [CreatedDate] DATETIME2 (7)   CONSTRAINT [DF_Drive_CreatedDate] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Drive] PRIMARY KEY CLUSTERED ([DriveId] ASC)
);

