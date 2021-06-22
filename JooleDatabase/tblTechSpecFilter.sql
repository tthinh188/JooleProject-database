CREATE TABLE [dbo].[tblTechSpecFilter]
(
	[PropertyID] INT NOT NULL,
    [SubCategoryID] INT NOT NULL, 
    [MinValue] INT NOT NULL, 
    [MaxValue] INT NOT NULL,
    CONSTRAINT [FK_dbo.tblTechSpecFilter_dbo.tblProperty_PropertyID] FOREIGN KEY ([PropertyID]) 
        REFERENCES [dbo].[tblProperty] ([PropertyID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.tblTechSpecFilter_dbo.tblSubCategory_SubCategoryID] FOREIGN KEY ([SubCategoryID]) 
        REFERENCES [dbo].[tblSubCategory] ([SubCategoryID]) ON DELETE CASCADE,
)
