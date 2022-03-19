USE [TrainingDBAkshayL]
GO

/****** Object:  StoredProcedure [dbo].[BooksUpdate]    Script Date: 19-03-2022 18:10:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BooksUpdate]
	@BookId INT,
	@BookName VARCHAR (200),
	@BookCategoryId INT,
	@BookPublisherId INT,
	@BookQuantity INT,
	@IsActive BIT,
	@CreatedBy INT,
	@CreatedOn DATETIME,
	@ModifiedBy INT,
	@ModifiedOn DATETIME
AS
BEGIN
	UPDATE
		[Books]
	SET
		[BookName] = @BookName,
		[IsActive] = @IsActive,
		[ModifiedBy] = @ModifiedBy,
		[ModifiedOn] = GETDATE()
	WHERE
		[BookId] = @BookId
END
GO


