USE [TrainingDBAkshayL]
GO

/****** Object:  StoredProcedure [dbo].[BookSearch]    Script Date: 19-03-2022 18:09:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[BookSearch]
	@BookName nvarchar(200)
As
Begin
	select
		ISNULL([BookId], '') AS [BookId],
		ISNULL([BookName], '') AS [BookName],
		ISNULL([BookCategory], '') AS [BookCategoryName],
		ISNULL([BookPublisher], '') AS [BookPublisherName],
		ISNULL([BookQuantity],'') AS [BookQuantity]
	from
		[Books] inner join Categories on Books.BookCategoryId = Categories.BookCategoryId
		inner join Publishers on Books.BookPublisherId = Publishers.BookPublisherId
	where
		BookName like '%'+ @BookName +'%';
end
GO


