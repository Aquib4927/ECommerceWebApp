alter proc uspInsertProductDetails
@ProductID varchar(50),
@ProductName varchar(50),
@ProductDescription varchar(200),
@CategoryID int,
@DimensionID int,
@ColourID int, 
@BrandID int,
@ProductPrice float,
@ProductImage image,
@Quantity int
as
begin 
begin try
IF ( NOT EXISTS
(SELECT [Product.Details].ProductID FROM [Product.Details]
WHERE [Product.Details].ProductID = @ProductID) )
    BEGIN 
          INSERT INTO [Product.Details]
		  (
		  ProductID, 
		  ProductName,
		  ProductDescription,
		  CategoryID,
		  DimensionID,
		  ColourID,
		  BrandID,
		  ProductPrice,
		  ProductImage,
		  Quantity
		  )
		  VALUES
		  (
		  @ProductID,
		  @ProductName,
		  @ProductDescription,
		  @CategoryID,
		  @DimensionID,
		  @ColourID,
		  @BrandID,
		  @ProductPrice,
		  @ProductImage,
		  @Quantity
		  )
  		  RETURN 1
		  end
 ELSE IF (( @ProductID IS NULL ) 
		OR (@ProductName IS NULL) 
		OR( @ProductDescription IS Null ) 
		OR (@ProductPrice!=0))
    BEGIN 
        return -3 
    END 
END TRY
BEGIN CATCH
RETURN -99
END CATCH
END