USE [TrainingDBAkshayL]
GO

/****** Object:  StoredProcedure [dbo].[BooksGetList]    Script Date: 19-03-2022 18:09:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BooksGetList] 
	@BookName nvarchar(200) = null,
	@BookCategoryId int = NULL,
	@BookPublisherId int = NULL,
	@PageLength int = null,
	@PageNumber int= null
AS
BEGIN
	DECLARE  @StartRow int= 1
	DECLARE  @EndRow int =1

	set @StartRow = ((@PageNumber - 1) * @PageLength ) +  1;
	Set @EndRow = (@PageNumber * @PageLength);

	SELECT 
		ROW_NUMBER() OVER(ORDER BY BookId) AS BookNumber,
		ISNULL([BookId], '') AS [BookId],
		ISNULL([BookName], '') AS [BookName],
		ISNULL([BookCategory], '') AS [BookCategoryName],
		ISNULL([BookPublisher], '') AS [BookPublisherName],
		ISNULL([BookQuantity],'') AS [BookQuantity],
		ISNULL(Books.[IsActive], '') AS [IsActive],
		ISNULL(Books.[CreatedBy], '') AS [CreatedBy],
		ISNULL(Books.[CreatedOn], '') AS [CreatedOn],
		ISNULL(Books.[ModifiedBy], '') AS [ModifiedBy],
		ISNULL(Books.[ModifiedOn], '') AS [ModifiedOn]
	INTO #temp
		FROM Books
			inner join Categories on Books.BookCategoryId = Categories.BookCategoryId
			inner join Publishers on Books.BookPublisherId = Publishers.BookPublisherId
		where 
			(Books.BookName like '%' + @BookName + '%' OR @BookName IS NULL) AND
			(@BookCategoryId IS NULL or Books.BookCategoryId = @BookCategoryId) AND
			(@BookPublisherId IS NULL or Books.BookPublisherId = @BookPublisherId)
	SELECT
		*
	FROM
		#temp
	Where
		BookNumber between @StartRow and @EndRow

	SELECT
		MAX(BookNumber) as TotalCount
	FROM
		#temp

	drop table #temp
END
GO


