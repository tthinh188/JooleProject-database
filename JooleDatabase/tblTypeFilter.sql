CREATE TABLE [dbo].[tblTypeFilter]
(
	[PropertyID] INT NOT NULL,
    [SubCategoryID] INT NOT NULL, 
    [TypeName] VARCHAR(50) NOT NULL, 
    [TypeOptions] NCHAR(50) NOT NULL,
    CONSTRAINT [FK_dbo.tblTypeFilter_dbo.tblProperty_PropertyID] FOREIGN KEY ([PropertyID]) 
        REFERENCES [dbo].[tblProperty] ([PropertyID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.tblTypeFilter_dbo.tblSubCategory_SubCategoryID] FOREIGN KEY ([SubCategoryID]) 
        REFERENCES [dbo].[tblSubCategory] ([SubCategoryID]) ON DELETE CASCADE,
)
