alter proc uspInsertCategoryName
@CategoryName Varchar(50)
as 
begin
begin try
insert into 
[Product.Category]
(CategoryName)
values
(@CategoryName)
return 1
end try
begin catch
return -99
end catch
end
