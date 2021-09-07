alter proc uspDeleteCartDetails
@ProductID varchar(50)
as
begin 
begin try
delete CartTable 
where CartTable.ProductID = @ProductID
return 1
end try
begin catch
return -99
end catch
end