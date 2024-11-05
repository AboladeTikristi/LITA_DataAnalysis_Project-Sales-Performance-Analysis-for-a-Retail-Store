# LITA_DataAnalysis_Project-Sales-Performance-Analysis-for-a-Retail-Store

## Outline Guide

### Project Overview
---
This Data Analysis aims at extracting, exploring,  visualizing and Prediction on the Sales Data of a Retail Store. After the data analysis and visualization process, it is shown that the store is at a loss and if not stopped early the store would fold up inthe next four years. Preventive measures have also been suggested with assurance of positive results.

### Data Sources
---
The Primary Source of this data was provided by the Incubator Hub ann be gotten [here](https://docs.google.com/spreadsheets/d/1urd2IUb7pRdGq8uHZ1njgDbtaCh4GCwF/edit?usp=drive_link&ouid=114961730859133220198&rtpof=true&sd=true)

### Tools Used
---
- Microsoft Excel [Download here](https://www.microsoft.com/en/microsoft-365/microsoft-office)

	1. For Data Cleaning
	2. For Analysis
	3. For Visualization

- SQL- Structured Query Language for Querying of Data,
  mainly SSMS (SQL Server Management System) [Download here](https://aka.ms/ssmsfullsetup)
  and SQL Server [Download here](https://www.microsoft.com/sql-server/sql-server-downloads)
  
- Microsoft PowerBi for Analysis Visualization [Download here](https://www.microsoft.com/en-us/download/details.aspx?id=58494)
- GitHub for Portfolio Building


  ### Data Cleaning and Preparation
---
In the initial phase of the Data Cleaning and Preparation

1. Data loading and Inspection
2. Checking for missing variables
3. Confirmation of Data Types.

### Exploratoration of Sales Data Table
---
The Columns in this Table includes the:
- OrderId
- Customer Id
- Product
- Region
- OrderDate
- Quantity
- UnitPrice
- Sales (This was included manually in Excel by, multiplying the quntity column by UnitPrice Column)
  
Here are some of the questions to answered in this Writeup:

1. How many Products were Sold and how many Customers do they have?
   From the excel table, there are six Catgories of Product sold in the retail Shop with a total of 500 Customers
2. What is the total Revenue per Year?
3. What are the Total Sales by Product, Region and Months.
4. What is the Average Sale per Product?
5. Which Region, Product and Year has the highest Sales?
6. Who are the Top Five customers and what Region are they from?
7. Are there any Products that were not sold at all?


### Data Analysis
---

1. To find out the total Sales by Product,region and Months, Pivot tables was used in Excel.

![excel pivot tables](https://github.com/user-attachments/assets/e172d77e-8ec3-48f3-8e92-d333c90d260b)

2. To find out the Average Sales per product the excel formular AverageIf was used:
   ``` =AVERAGEIF(SalesData!C2:C50001, "Shirt", SalesData!H2:H50001) ```

   |S/N|	Product|	Average Sales|
   |---|---------------|---------------------|
   |1|Shirt|326.6666667|
   |2|Shoes|308.75|
   |3|Gloves|200|
   |4|Hat|158.75|
   |5|Jacket|140|
   |6|Socks|121.6666667|
   
4.  To identify Product with no sales in last quarter using sql
	   ``` Select Product,OrderDate,Sales from Sales_Data
	where DATENAME(MONTH,OrderDate) in ('September','October','November','December') 
	and YEAR(OrderDate)=2024
	and Sales=0 ```


### Data Visualization
---

There are some Visualizations in the excel file also but will be showing visualixation using the Ms PowerBi

1. The Second Sales Overview Dashboard showing:
   - the product category
   - Regional Product category Sales,
   - the total sales per year,
   - total sales per product,
   - the total sales oer month,
   - and total revenue by region.
     
![Company overview](https://github.com/user-attachments/assets/b7607d32-8791-4386-a987-048c38d7ffed)

     
2. The Second Sales Overview Dashboard showing:
   - the top customers
   - Quantity of Product category sold per year,
   - the count of customers per year
   - and Quantity of Product sold by Region.

   ![Sales overview2](https://github.com/user-attachments/assets/534e7081-eed5-4b5b-920b-69c409a9d62b)

 ### Drawing Inference
 ---

 From the exploratory result and visualization the inferences drawn are:

1. The Total Revenue earned and total orders in year 2024 is less than the total revenue earned in year 2023.
2. The top three region with maximun sales are South, East and North with same number of customers.
3. The top five Customers are all from the south region with purchase of shoes, gloves in both 2023 and 2024.
4. In 2024, sales of the south and East reduced while sales in North and west increased.

### Data Conclusion and Predictions
---
Conclusively, It can be said that the sales of the retail company reduced in 2024 and also in the region of highest cumulative total sales.
Hence,
1. The Store needs to increase their advertisement game especially in the North and west game nore and also produce more of the goods consistent in purchase per region.
2. The Store can also appreciate customers yearly to retain them for the next year sales.
3. The Store can also implement Next Year Preoreders.
4.. The Store can also work on pairing the products that complement each other to increase sales.
