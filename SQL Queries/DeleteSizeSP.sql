USE [ECommerceApp]
GO
/****** Object:  StoredProcedure [dbo].[uspDeleteSize]    Script Date: 07-09-2021 03:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[uspDeleteSize]
@Size float
as begin 
begin try
delete [Product.Dimension]
where [Product.Dimension].Size = @Size
return 1
end try
begin catch
return -99
end catch
end