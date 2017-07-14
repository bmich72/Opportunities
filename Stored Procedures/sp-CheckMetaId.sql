USE [Opportunity]
GO

/****** Object:  StoredProcedure [dbo].[CheckMetaId]    Script Date: 5/22/2017 3:45:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CheckMetaId]
      (@op_meta_id INT,
	  @Exists BIT OUTPUT)
AS
BEGIN
      SET NOCOUNT ON;
  
      IF EXISTS(SELECT op_meta_id
                        FROM dbo.Opportunities_Meta
                        WHERE op_meta_id = @op_meta_id)
      BEGIN
            SET @Exists = 1
      END
      ELSE
      BEGIN
            SET @Exists = 0
      END
 
      RETURN @Exists
END

GO


