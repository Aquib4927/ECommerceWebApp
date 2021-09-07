alter proc uspDeleteBrandName
@BrandName varchar(50)
as begin 
begin try
delete [Product.Brand]
where [Product.Brand].BrandName = @BrandName
return 1
end try
begin catch
return -99
end catch
end