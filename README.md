# LITA_DataAnalysis_Project-Sales-Performance-Analysis-for-a-Retail-Store

## Outline Guide

### Project Overview
---
This Data Analysis aims at extracting, exploring,  visualizing and Prediction on the Sales Data of a Retail Store.

### Data Sources
---
The Primary Souce of this data was provided by the Incubator Hub ann be gotten [here](https://docs.google.com/spreadsheets/d/1urd2IUb7pRdGq8uHZ1njgDbtaCh4GCwF/edit?usp=drive_link&ouid=114961730859133220198&rtpof=true&sd=true)

### Tools Used
---
- Microsoft Excel [Download here](https://www.microsoft.com/en/microsoft-365/microsoft-office)

	1. For Data Cleaning
	2. For Analysis
	3. For Visualization

- SQL- Structured Query Language for Querying of Data,
  mainly SSMS (SQL Server Management System) [Download here](https://aka.ms/ssmsfullsetup)
  and SQL Server [Download here](https://www.microsoft.com/sql-server/sql-server-downloads)
  
- PowerBi for Analysis Visualization [Download here](https://www.microsoft.com/en-us/download/details.aspx?id=58494)
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
2. What are the Total Sales by Product, Region and Months.
3. What is the Average Sale per Product?
4. Which Region, Product and Year has the highest Sales?
5. Who are the Top Five customers and what Region are they from?
6. Are there any Products that were not sold at all?


### Data Analysis
---

1. To find out the total Sales by Product,region and Months, Pivot tables was used in Excel.

![excel pivot tables](https://github.com/user-attachments/assets/e172d77e-8ec3-48f3-8e92-d333c90d260b)

2. To find out the Average Sales per product the excel formular AverageIf was used:
   ``` =AVERAGEIF(SalesData!C2:C50001, "Shirt", SalesData!H2:H50001) ```

   |S/N|	Product|	Average Sales|
   |---|---------------|---------------------|
|1|	|Shirt|	|326.6666667|
3	Shoes	308.75
4	Gloves	200
2	Hat	158.75
5	Jacket	140
6	Socks	121.6666667

   
