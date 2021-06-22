CREATE TABLE [dbo].[tblProperty]
(
	[PropertyID] INT NOT NULL PRIMARY KEY, 
    [PropertyName] NCHAR(30) NOT NULL, 
    [IsType] BIT NOT NULL, 
    [IsTechSpec] BIT NOT NULL
)
