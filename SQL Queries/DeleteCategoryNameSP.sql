alter proc uspDeleteCategoryName
@CategoryName varchar(50)
as begin 
begin try
delete [Product.Category]
where [Product.Category].CategoryName = @CategoryName
return 1
end try
begin catch
return -99
end catch
end