alter proc uspInsertBrandName
@BrandName Varchar(50)
as 
begin
begin try
insert into 
[Product.Brand] 
(BrandName)
values
(@BrandName)
return 1
end try
begin catch
return -99
end catch
end
