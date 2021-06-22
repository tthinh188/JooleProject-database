CREATE TABLE [dbo].[tblPropertyValue]
(
	[PropertyID] INT NOT NULL,
    [ProductID] INT NOT NULL, 
    [Value] NVARCHAR(50) NULL,
    CONSTRAINT [PK_PrpertyValue] PRIMARY KEY NONCLUSTERED ([PropertyID], [ProductID]),
    CONSTRAINT [FK_dbo.tblPropertyValue_dbo.tblProperty_PropertyID] FOREIGN KEY ([PropertyID]) 
        REFERENCES [dbo].[tblProperty] ([PropertyID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.tblPropertyValue_dbo.tblProduct_ProductID] FOREIGN KEY ([ProductID]) 
        REFERENCES [dbo].[tblProduct] ([ProductID]) ON DELETE CASCADE
)
