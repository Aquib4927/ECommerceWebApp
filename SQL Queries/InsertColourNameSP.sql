alter proc uspInsertColourName
@ColourName Varchar(50)
as 
begin
begin try
insert into 
[Product.Colour]
(ColourName)
values
(@ColourName)
return 1
end try
begin catch
return -99
end catch
end
