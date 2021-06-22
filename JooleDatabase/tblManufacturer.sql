CREATE TABLE [dbo].[tblManufacturer]
(
	[ManufacturerID] INT NOT NULL,
    [ManufacturerName] NCHAR(50) NOT NULL, 
    [UserID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ManufacturerID] ASC),
    CONSTRAINT [FK_dbo.tblManufacturer.User_UserID] FOREIGN KEY ([UserID])
        REFERENCES [dbo].[tblUser] ([UserID]) ON DELETE CASCADE,
)
