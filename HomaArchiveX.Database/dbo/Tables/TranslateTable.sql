CREATE TABLE [dbo].[TranslateTable]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [LanguageCode] NCHAR(5) NOT NULL, 
    [Title] NVARCHAR(500) NULL, 
    [Translate] NVARCHAR(500) NULL
)
