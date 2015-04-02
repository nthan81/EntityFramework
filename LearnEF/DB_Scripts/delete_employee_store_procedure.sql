USE [LearnEF]
GO

/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 4/2/2015 3:05:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEmployee]
(
	@EmpId			int
)
AS
BEGIN
    Delete From Employee Where EmpId=@EmpId;
END

GO

