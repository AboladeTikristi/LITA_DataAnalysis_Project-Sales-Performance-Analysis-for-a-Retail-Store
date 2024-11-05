CREATE DATABASE CAPSTONE_PROJECT_DB

SELECT * from dbo.Sales_Data

ALTER Table Sales_Data
Drop Column [column 9]

--- Total Sales for each Product Category

SELECT [Product] as ProductCategory, sum(Sales) as TotalSales from Sales_Data
Group by [Product]

--- Numbers of Sales Transactions in each Region 

SELECT Region, COUNT(Sales) as [Number of Sales Transaction] from Sales_Data
Group by [Region]

--- Highest Selling Product by total sales

SELECT [Product] as ProductCategory, sum(Sales) as TotalSales from Sales_Data
Group by [Product]
ORDER by TotalSales desc

--- Total Revenue Per Product

SELECT [Product] as ProductCategory, sum(Sales) as TotalRevenue from Sales_Data
Group by [Product]

--- monthly sales total for the current year

Select DATENAME(MONTH,OrderDate) as Months, SUM(Sales) as TotalSales from Sales_Data
Where YEAR(OrderDate) ='2024'
Group by DATENAME(MONTH,OrderDate)

--- Top five customers by total purchase

Select Customer_Id,TotalSales from 
(Select ROW_NUMBER() OVER(
Order by SUM(Sales) desc )  as rowNo, Customer_Id, SUM(Sales) as TotalSales from Sales_Data
Group by Customer_Id
)t
where rowNo <=5

--- Calculate Percentage of total sales contributed by each region

Select Region, keepSales*100/10587500 as 'Percentage of Total Sales ' from
(Select Region, SUM(Sales) as keepSales from Sales_Data
Group by Region)t
order by Region

--- Identify Products with no sales in the last quarter

Select Product,OrderDate,Sales from Sales_Data
where DATENAME(MONTH,OrderDate) in ('September','October','November','December') 
and YEAR(OrderDate)=2024
and Sales=0








