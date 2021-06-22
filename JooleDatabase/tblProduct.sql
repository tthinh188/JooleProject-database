CREATE TABLE [dbo].[tblProduct]
(
	[ProductID] INT NOT NULL PRIMARY KEY, 
    [ManufacturerID] INT NOT NULL, 
    [SubCategoryID] INT NOT NULL, 
    [ProductName] NCHAR(50) NOT NULL, 
    [ProductImage] NCHAR(500) NOT NULL, 
    [Series] NCHAR(30) NOT NULL, 
    [Model] NCHAR(10) NOT NULL, 
    [ModelYear] INT NOT NULL
    CONSTRAINT [FK_dbo.tblManufacturer.tblManufacturer_ManufacturerID] FOREIGN KEY ([ManufacturerID]) 
        REFERENCES [dbo].[tblManufacturer] ([ManufacturerID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.tblManufacturer.tblSubCategory_SubCategoryID] FOREIGN KEY ([SubCategoryID]) 
        REFERENCES [dbo].[tblSubCategory] ([SubCategoryID]) ON DELETE CASCADE,
)
