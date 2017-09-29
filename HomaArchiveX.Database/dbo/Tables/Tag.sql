CREATE TABLE [dbo].[Tag] (
    [TagKey]        INT           IDENTITY (1, 1) NOT NULL,
    [TagTitle]      NCHAR (50)    NOT NULL,
    [ModififedDate] DATETIME2 (7) CONSTRAINT [DF_Tag_ModififedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([TagKey] ASC)
);


GO

CREATE UNIQUE INDEX [IX_Tag_TitleUnique] ON [dbo].[Tag] ([TagTitle])
