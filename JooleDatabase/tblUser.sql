CREATE TABLE [dbo].[tblUser]
(
    [UserID] INT IDENTITY (1, 1) NOT NULL,
    [UserName] NCHAR(20) NOT NULL, 
    [UserEmail] NCHAR(50) NOT NULL, 
    [UserImage] NCHAR(500) NULL, 
    [UserPassword] NCHAR(20) NOT NULL
    PRIMARY KEY CLUSTERED ([UserID] ASC)
)
