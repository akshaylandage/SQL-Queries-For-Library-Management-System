USE [TrainingDBAkshayL]
GO

/****** Object:  StoredProcedure [dbo].[BooksInsert]    Script Date: 19-03-2022 18:10:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[BooksInsert]
	@BookId INT OUTPUT,
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
	INSERT [Books]
	(
		[BookName],
		[BookCategoryId],
		[BookPublisherId],
		[BookQuantity],
		[IsActive],
		[CreatedBy],
		[CreatedOn],
		[ModifiedBy],
		[ModifiedOn]
	)
	VALUES
	(
		@BookName,
		@BookCategoryId,
		@BookPublisherId,
		@BookQuantity,
		@IsActive,
		@CreatedBy,
		GETDATE(),
		@ModifiedBy,
		@ModifiedOn
	)
	SET @BookId = @@IDENTITY;
END
GO


