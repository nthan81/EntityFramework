USE [LearnEF]
GO

/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 4/2/2015 3:06:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEmployee]
(
	@EmpId			int,
	@HREmpId		varchar(30),
    @FirstName        varchar(30),
	@LastName		varchar(30),
	@Address		varchar(30),
    @City            varchar(30)
)
AS
BEGIN
    Update Employee Set HREmpId=@HREmpId, FirstName=@FirstName, LastName=@LastName, Address=@Address, City=@City
	where EmpId=@EmpId
END

GO

