CREATE TABLE [dbo].[ImageToEntity] (
    [TargetEntityKey] INT           NOT NULL,
    [ImageKey]        INT           NOT NULL,
    [CreatedDate]     DATETIME2 (7) CONSTRAINT [DF_ImageToEntity_CreatedDate] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_ImageToEntity] PRIMARY KEY CLUSTERED ([TargetEntityKey] ASC, [ImageKey] ASC),
    CONSTRAINT [FK_ImageToEntity_ArchiveEntity] FOREIGN KEY ([TargetEntityKey]) REFERENCES [dbo].[ArchiveEntity] ([ArchiveEntityKey]),
    CONSTRAINT [FK_ImageToEntity_Image] FOREIGN KEY ([ImageKey]) REFERENCES [dbo].[Image] ([ImageKey])
);

