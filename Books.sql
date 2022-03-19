USE [TrainingDBAkshayL]
GO

/****** Object:  Table [dbo].[Books]    Script Date: 19-03-2022 18:13:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [varchar](200) NULL,
	[BookCategoryId] [int] NULL,
	[BookPublisherId] [int] NULL,
	[BookQuantity] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK] FOREIGN KEY([BookCategoryId])
REFERENCES [dbo].[Categories] ([BookCategoryId])
GO

ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK]
GO

ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([BookPublisherId])
REFERENCES [dbo].[Publishers] ([BookPublisherId])
GO

ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK1]
GO


