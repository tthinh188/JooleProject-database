CREATE TABLE [dbo].[tblSubCategory]
(
	[SubCategoryID] INT NOT NULL PRIMARY KEY, 
	[CategoryID] INT NOT NULL,
    [CategoryName] NCHAR(20) NOT NULL,
	CONSTRAINT [FK_dbo.tblSubCategory_dbo.tblCategory_CategoryID] FOREIGN KEY ([CategoryID]) 
        REFERENCES [dbo].[tblCategory] ([CategoryID]) ON DELETE CASCADE
)
