create procedure uspUpdateCartColour
@ProductID varchar(50),
@ColourID int
as
begin 
begin try
update CartTable 
set CartTable.ColourID = @ColourID
where CartTable.ProductID = @ProductID
return 1
end try
begin catch
return -99
end catch
end