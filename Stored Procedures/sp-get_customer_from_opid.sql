USE [Opportunity]
GO

/****** Object:  StoredProcedure [dbo].[get_customer_from_opid]    Script Date: 5/22/2017 3:45:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create procedure [dbo].[get_customer_from_opid]
@op_meta_id int,
@customer varchar(50) OUTPUT
as
begin
SET NOCOUNT ON;     
      SELECT @customer = CUSTOMER
      FROM Opportunities
      WHERE [OPP NO] = @op_meta_id
END



GO


