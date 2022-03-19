USE [TrainingDBAkshayL]
GO

/****** Object:  StoredProcedure [dbo].[BooksPublisherList]    Script Date: 19-03-2022 18:10:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BooksPublisherList]
AS
BEGIN
	SELECT 
		ISNULL(Publishers.[BookPublisherId], '') AS [BookPublisherId],
		ISNULL([BookPublisher], '') AS [BookPublisher],
		ISNULL(Publishers.[IsActive], '') AS [IsActive],
		ISNULL(Publishers.[CreatedBy], '') AS [CreatedBy],
		ISNULL(Publishers.[CreatedOn], '') AS [CreatedOn],
		ISNULL(Publishers.[ModifiedBy], '') AS [ModifiedBy],
		ISNULL(Publishers.[ModifiedOn], '') AS [ModifiedOn]
	FROM
		Publishers
END
GO


