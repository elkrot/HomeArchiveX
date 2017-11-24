CREATE TABLE [dbo].[Role]
(
	[RoleId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [RoleTitle] NVARCHAR(30) NOT NULL
)

GO

CREATE UNIQUE INDEX [IX_RoleTitleUnique_Column] ON [dbo].[Role] ([RoleTitle])
