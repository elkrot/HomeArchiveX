CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Username] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(50) NULL, 
    [Password] NVARCHAR(50) NOT NULL
)

GO

CREATE UNIQUE INDEX [IX_UserNameUnique] ON [dbo].[User] ([Username])
