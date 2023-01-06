CREATE TABLE dbo.SKU (
    ID INT IDENTITY PRIMARY KEY, 
    Code AS ('s' + CONVERT(varchar(255), ID)) UNIQUE, 
    Name VARCHAR(255)
    );

CREATE TABLE dbo.Basket (
    ID INT IDENTITY PRIMARY KEY, 
    ID_SKU INT REFERENCES dbo.SKU (ID),
    Quantity DECIMAL CHECK ( Quantity > 0 ), 
    Value DECIMAL CHECK ( Value > 0 ), 
    PurchaseDate DATETIME DEFAULT GETDATE(), 
    DiscountValue DECIMAL 
    );

CREATE TABLE dbo.Family (
    ID INT IDENTITY PRIMARY KEY, 
    SurName VARCHAR(255), 
    BudgetValue DECIMAL
    );