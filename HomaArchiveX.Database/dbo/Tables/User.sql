CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Username] NCHAR(20) NOT NULL, 
    [Email] NCHAR(10) NULL, 
    [Password] NCHAR(20) NOT NULL
)

GO

CREATE UNIQUE INDEX [IX_UserNameUnique] ON [dbo].[User] ([Username])
