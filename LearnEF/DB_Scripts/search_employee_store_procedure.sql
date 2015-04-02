USE [LearnEF]
GO

/****** Object:  StoredProcedure [dbo].[SearchEmployee]    Script Date: 4/2/2015 3:06:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 
--SearchEmployee '', ''
CREATE PROCEDURE [dbo].[SearchEmployee]
(
    @FirstName        varchar(30),
    @City            varchar(30)
)
AS
BEGIN
    DECLARE @query    nvarchar(1000)
 
    SET @query = 'SELECT * FROM Employee e'
    SET @query = @query + ' WHERE 1=1'
 
    IF @FirstName != ''
        SET @query = @query + ' AND FirstName LIKE ''' + @FirstName + '%'''
 
    IF @City != ''
        SET @query = @query + ' AND City LIKE ''' + @City + '%'''
 
 
    EXEC (@query)
END

GO

