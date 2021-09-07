alter procedure uspUpdateCartQuantity
@ProductID varchar(50),
@Quantity int
as
begin 
begin try
update CartTable 
set Quantity = @Quantity
where CartTable.ProductID = @ProductID
return 1
end try
begin catch
return -99
end catch
end