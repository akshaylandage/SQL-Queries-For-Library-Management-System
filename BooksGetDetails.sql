USE [TrainingDBAkshayL]
GO

/****** Object:  StoredProcedure [dbo].[BooksGetDetails]    Script Date: 19-03-2022 18:09:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BooksGetDetails]
	@BookId INT
AS
BEGIN
	SELECT
		ISNULL([BookId], '') AS [BookId],
		ISNULL([BookName], '') AS [BookName],
		ISNULL([BookCategoryId], '') AS [BookCategoryId],
		ISNULL([BookPublisherId], '') AS [BookPublisherId],
		ISNULL([BookQuantity],'') AS [BookQuantity],
		ISNULL([IsActive], '') AS [IsActive],
		ISNULL([CreatedBy], '') AS [CreatedBy],
		ISNULL([CreatedOn], '') AS [CreatedOn],
		ISNULL([ModifiedBy], '') AS [ModifiedBy],
		ISNULL([ModifiedOn], '') AS [ModifiedOn]
	FROM
		[Books]
	WHERE
		[BookId] = @BookId
END
GO


