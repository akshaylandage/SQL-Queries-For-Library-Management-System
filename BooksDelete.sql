USE [TrainingDBAkshayL]
GO

/****** Object:  StoredProcedure [dbo].[BooksDelete]    Script Date: 19-03-2022 18:09:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BooksDelete]
	@BookId INT
AS
BEGIN
	UPDATE [Books]
	SET IsActive = 0 
	WHERE
		[BookId] = @BookId
END
GO


