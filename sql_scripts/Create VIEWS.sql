-- Create VIEW Calendar
Create VIEW gold.calendar 
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalake13.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) as query1


-- Create VIEW AdventureWorks_Customers
Create VIEW gold.customers 
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalake13.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) as query2

-- Create VIEW AdventureWorks_Product_Categories
Create VIEW gold.procategories 
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalake13.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
) as query3

-- Create VIEW AdventureWorks_Products
Create VIEW gold.products 
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalake13.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) as query4

-- Create VIEW AdventureWorks_Returns
Create VIEW gold.returnss 
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalake13.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) as query5

-- Create VIEW AdventureWorks_Sales
Create VIEW gold.sales 
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalake13.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) as query6

-- Create VIEW AdventureWorks_Territories
Create VIEW gold.territories 
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalake13.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) as query7

-- Create VIEW Product_Subcategories
Create VIEW gold.subcategory 
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awstoragedatalake13.blob.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
) as query8
