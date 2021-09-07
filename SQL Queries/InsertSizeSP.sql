alter proc uspInsertSize
@Size float
as 
begin
begin try
insert into 
[Product.Dimension]
(Size)
values
(@Size)
return 1
end try
begin catch
return -99
end catch
end
