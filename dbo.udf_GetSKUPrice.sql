CREATE FUNCTION udf_GetSKUPrice(
        @ID_SKU INT)
RETURNS DECIMAL(18, 2)
AS
BEGIN
RETURN (
  SELECT SUM(dbo.Basket.Value) / SUM(dbo.Basket.Quantity)
  FROM dbo.Basket 
  WHERE dbo.Basket.ID_SKU = @ID_SKU 
  )
 END;