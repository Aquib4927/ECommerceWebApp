alter proc uspDeleteColourName
@ColourName varchar(50)
as begin 
begin try
delete [Product.Colour]
where [Product.Colour].ColourName = @ColourName
return 1
end try
begin catch
return -99
end catch
end