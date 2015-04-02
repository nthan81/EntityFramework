USE [LearnEF]
GO

/****** Object:  StoredProcedure [dbo].[AddEmployee]    Script Date: 4/2/2015 3:05:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddEmployee]
(
	@HREmpId			varchar(30),
	@FirstName			varchar(30),
	@LastName			varchar(30),
	@Address			varchar(30),
	@City				varchar(30)
)
AS
BEGIN
    Insert Into Employee (HREmpId,FirstName,LastName,Address,City) 
	Values (@HREmpId,@FirstName,@LastName,@Address,@City)
END

GO

