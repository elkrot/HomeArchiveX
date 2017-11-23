CREATE TABLE [dbo].[UserToRole]
(
	[UserId] INT NOT NULL , 
    [RoleId] INT NOT NULL, 
    PRIMARY KEY ([RoleId], [UserId]), 
    CONSTRAINT [FK_UserToRole_ToUser] FOREIGN KEY ([UserId]) REFERENCES [User]([UserId]), 
    CONSTRAINT [FK_UserToRole_ToRole] FOREIGN KEY ([RoleId]) REFERENCES [Role]([RoleId])
)
