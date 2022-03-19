USE [TrainingDBAkshayL]
GO

/****** Object:  StoredProcedure [dbo].[BooksCategoryList]    Script Date: 19-03-2022 18:09:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BooksCategoryList]
AS
BEGIN
	SELECT 
		ISNULL(Categories.[BookCategoryId], '') AS [BookCategoryId],
		ISNULL([BookCategory], '') AS [BookCategory],
		ISNULL(Categories.[IsActive], '') AS [IsActive],
		ISNULL(Categories.[CreatedBy], '') AS [CreatedBy],
		ISNULL(Categories.[CreatedOn], '') AS [CreatedOn],
		ISNULL(Categories.[ModifiedBy], '') AS [ModifiedBy],
		ISNULL(Categories.[ModifiedOn], '') AS [ModifiedOn]
	FROM
		Categories
END
GO


