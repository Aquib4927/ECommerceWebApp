alter procedure uspInsertCartDetails
as
begin 
begin try
INSERT INTO DBO.CartTable
(ProductID,
ColourID,
BrandID,
ProductPrice,
Quantity)

(SELECT [Product.Details].ProductID,
		[Product.Details].ColourID,
		[Product.Details].BrandID,
		[Product.Details].ProductPrice,
		[Product.Details].Quantity
		from 
		dbo.[Product.Details]
)
return 1
end try
begin catch
return -99
end catch
end