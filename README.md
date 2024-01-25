A medium-sized International Retail Company Data Analysis Power BI Report

Project Description:

In this project the first phase was focused on data loading and preparation. I connected to a range of sources in order to acquire the relevant datasets- this included:

. Azure SQL Database (Source of the Orders Table)

. A file of .CSV file (Source of the Products Table)

. Azure Blob Storage (Source of the Stores table)

. A folder of .CSV files (Source of the Customers table)

Milestone 2: Importing the Data into Power BI

Before starting any data analysis project , it is very important to carefully load and clean the data to ensure relevant and concise analysis. Therefore, the project started with loading and transforming various tables namely; 'Orders', 'Products', 'Stores' and 'Customers'. These tables were loaded ad transformed using a variety of Get Data Options including Azure SQL Database, CSV file, Azure Blob Storage and a folder.
To ensure that all the data was relevant and of value, key transformations were made to the data. To begin with, any columns which compromised privacy were removed. The Column named [Card Number] was removed from the 'Orders' table. The split column feature was used to seperate the [order Date] and [Shipping Date] columns into two distinct columns, one for date and another for time.
Duplicates, missing and null values were removed from the necessary columns, eg duplicates were removed from [Product Code] in the 'Products' table to ensure each product code was unique. Calculated columns were created to convert columns necessary values so that all the units were consistent, eg conversion of grams to kg in the 'Products' table.
Columns were combined to make for clear data with columns [First Name] and [Last Name] combining to make a new [Full Name] column. Lastly all unsued columns in the tables were removed aswell as a few columns being renamed in line with Power BI naming conventions.

Milestone 3: Create the Data Model

Next, i was tasked with constructing the data model for the project. This consisted of creating a Date Table, a star based schema, creating key measures to incorporate important metrics and establishing date and geographic hierachies.

Creating a Date Table:

A new date table was formed using the calender function which consisted of a continuous list of dates running from the earliest order date to the latest shipping date. The columns included in the date table were:

Day of Week

Month Number

Month Name

Quarter

Year

Start of Year

Start of Quarter

Start of Month

Start of Week

Building a Star Schema Data Model:

A Schema was created to connect each data table with their unique keys. Product Codes, Store codes, User ID's, Order Dates/Shipping Dates. A Measures table was also added in this step, with the steps for this this table being created shown below.

Creating Key Measures:

The following key measure were added:

Total Orders = 

Total Revenue = 

Total Profit = 

Total Customers = 

Total Quantity = 

Profit YTD = 

Revenue YTD = 

Creating Date and Geography Hierachies:

Hierachies were created as this allowed for drill downs on the report and better analysis.

Milestone 4: Set up the Report:

At this stage i created four report pages, these were named Executive Summary, Customer Detail, Product Detail and Stores Map.

Milestone 5: Build The Customer Detail Page

I was tasked with creating the following visuals:

Headline Card Visuals - Used the 'card' visual to create visuals for Total Customers and Revenue Per Customer which was a new measure i created.

Summary Chart Visual - Used the 'donut' visual with Unique Customers in the values secton and Country in the details section.

Line Chart - Used the 'Line Chart' visual and had the Date Hierarchy as the x value and Unique Customers as the y value.

Top 20 Customers Table - new table created which displays the top 20 customers, filtered by revenue.

Top Customer Cards - 3 card visuals providing insights into the top customer by revenue, name and number of orders.

Date Slicer - Slicer added to allow users to filter ther page by year using the between slicer style.












