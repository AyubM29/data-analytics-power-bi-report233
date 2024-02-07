# A medium-sized International Retail Company Data Analysis Power BI Report

 ## Data Sources

In this project the first phase was focused on data loading and preparation. I connected to a range of sources in order to acquire the relevant datasets, this included:

- Azure SQL Database (Source of the Orders Table)
- A file of .CSV file (Source of the Products Table)
- Azure Blob Storage (Source of the Stores table)
- A folder of .CSV files (Source of the Customers table)

 ### Data Cleaning and Transformation

Before starting any data analysis project , it is very important to carefully load and clean the data to ensure relevant and concise analysis. Therefore, the project started with loading and transforming various tables namely; 'Orders', 'Products', 'Stores' and 'Customers'. These tables were loaded and transformed using a variety of Get Data Options including Azure SQL Database, CSV file, Azure Blob Storage and a folder.
To ensure that all the data was relevant and of value, key transformations were made to the data. To begin with, any columns which compromised privacy were removed. The Column named [Card Number] was removed from the 'Orders' table. The split column feature was used to seperate the [order Date] and [Shipping Date] columns into two distinct columns, one for date and another for time.
Duplicates, missing and null values were removed from the necessary columns, eg duplicates were removed from [Product Code] in the 'Products' table to ensure each product code was unique. Calculated columns were created to convert columns necessary values so that all the units were consistent, eg conversion of grams to kg in the 'Products' table.
Columns were combined to make for clear data with columns [First Name] and [Last Name] combining to make a new [Full Name] column. Lastly all unsued columns in the tables were removed aswell as a few columns being renamed in line with Power BI naming conventions.

### Data Model

Next, i went on to construct the data model for the project. This consisted of creating a Date Table, a star based schema, creating key measures to incorporate important metrics and establishing date and geographic hierachies.

Creating a Date Table:

A new date table was formed using the calender function which consisted of a continuous list of dates running from the earliest order date to the latest shipping date. The columns included in the date table were:

- Day of Week
- Month Number
- Month Name
- Quarter
- Year
- Start of Year
- Start of Quarter
- Start of Month
- Start of Week

Building a Star Schema Data Model:

A Schema was created to connect each data table with their unique keys. Product Codes, Store codes, User ID's, Order Dates/Shipping Dates. A Measures table was also added in this step, with the steps for this this table being created shown below.

Creating Key Measures - The following key measures were added:

- Total Orders  
- Total Revenue  
- Total Profit 
- Total Customers  
- Total Quantity 
- Profit YTD 
- Revenue YTD 

Creating Date and Geography Hierachies:

Hierachies were created as this allowed for drill downs on the report and better analysis.

### Report Set Up

At this stage i created four report pages, these were named Executive Summary, Customer Detail, Product Detail and Stores Map.

### Customer Detail Page

In this section, the following visuals were created:

- Headline Card Visuals - Used the 'card' visual to create visuals for Total Customers and Revenue Per Customer which was a new measure i created.
- Summary Chart Visual - Used the 'donut' visual with Unique Customers in the values secton and Country in the details section.
- Line Chart - Used the 'Line Chart' visual and had the Date Hierarchy as the x value and Unique Customers as the y value.
- Top 20 Customers Table - New table created which displays the top 20 customers, filtered by revenue.
- Top Customer Cards - Created 3 card visuals providing insights into the top customer by revenue, name and number of orders.
- Date Slicer - Slicer added to allow users to filter ther page by year using the between slicer style.

### Executive Summary Page

The following visuals were created for this page:

- Card Visuals - 3 cards showing Total Revenue, Total Orders and Total Profit.
- Line Chart - Showing Total Profit.
- Donut Charts - 2 charts showing Total Revenue broken down by country and store type.
- Bar Chart - Showing Total Orders by Category
- KPI Visuals - For this i needed to create three measures, these being Previous Quarter Profit, Previous Quarter Revenue and Previous Quarter Orders.

### Product Detail Page

The purpose of this page was to provide an in-depth look at which productswithin the inventory were performing well, with the option to filter by product and region.
To achieve this i built a report page that provides insights for all products and regions combined. Additonally to allow for users of the report to filter data easily, i created a pop-up banner using bookmarks and a slicer toolbar which can be accessed from the navigation pane. The Product Detail Page i created contains the following visuals:

- Gauge Visuals - Showing how the selected category's revenue, profit and number of orders are performing against a quarterly target.
- Area Chart - Shwoing the relative revenue performance of each category over time.
- Table - Showing the Top 10 Products by revenue in the selected context.
- Scatter Graph - Showing quantity ordered against profit per item for products. This was a new measure created using a DAX formula.

Lastly a Slicer Toolbar was also created to provide clarity and reduce cluttering on the page. Using a button that links to a bookmark, a menu is opened which allows for slicing on the page for product catergory and country. This menu can be closed again with the back button linking to a bookmark of the original page, which also keeping the changes of the data.

### Stores Map Page

Stores Map:

In this section, i added a Stores Map Page which led to also creating a Stores Drillthrough and Tooltip Page to allow for easier navigation through the map visual. 
I began by adding a Map Visual. Above this Map, i added a Country Slicer to the top of the page.
Next i created a Drillthrough Page which summarises each stores performance. It is important to note here add the country column to the drillthrough option on the drillthrough page as this will allow you to right-click  on the map visual to drillthrough.
Finally i also created a tooltip page with a Profit YTD Guage visual.

Map:

Using a map visual is ideal for understanding geographical data. It allows the user to visually see the distribution of the stores.

Slicer Tile:

The slicer visual allows the map visualisation to change depending on the geographical location selected. This allows for the user to focus the visualisation to the locations that they want to see.
For the location, a hierarchy has been used which menas the user is able to drill up and down the map to see 'World Region', 'Country Region' and 'Country'.

Stores Drillthrough Page:

I created a Stores Drillthrough Page for the purpose of summarising each stores performance. The contents of this page are as follows:

- Table - Showing Top 5 Products, highlighting Profit YTD, Total Orders and Total Revenue.
- Column Chart - Showing Total Orders by Products.
- Gauge - Showing Profit YTD and Revenue YTD against Target.
- Card - Showing current store the gauge visual compares against the current YTD against the previous YTD at the point in the year where the target is a 20% increase.

Tooltip Page:

The aim of this was for users to be able to see each stores year-to-date profit performance against the profit target just by hovering the mouse over a store on the map. To do this, i created a custom tooltip page with a profit gauge visual, and then set the tooltip of the visual to the tooltip page which i created. to reveal the tooltip, simply hover over the data of concern in the 'stores map' visual page.

### Cross-filtering and Navigation

Cross-filtering and creating a navigation pane help in creating structure to the report aswell as making the pages easier to navigate and analyse.

Cross-filtering:

This is an interaction between visuals on a report page. It causes visuals to change based on filters applied to visuals. There however comes times where we would not want for cross filtering to occur as this may cause confusion and is more harm than good. For this task i needed to alter the cross-filtering for the report pages as seen below.

Executive Summary:

For this page i altered the cross-filtering so the 'Orders by Category' chart and the 'Top 10 Products' table would not filter the card visuals or the KPI's.

Customer Detail:

For this page, i made sure the 'Top 20 Customers' table did not filter any of the other visuals. Moreover, i also altered the interaction between the 'Total Customers by Category' chart and the 'Total Customers' line graph to make sure the chart does not affect the line graph. Lastly, the 'Total Customers by Country' donut chart was altered to ensure it cross-filtered the 'Total Customers by Category' chart.

Product Detail:

Only one visual on this page was altered, that being the 'Quantity Sold vs Profit Per Item scatter graph to ensure the scatter graph does not affect any of the other visuals.

Naviagtion Bar:

On each of the four report pages you will find a navigation pane. The 4 buttons on each pane allow for you to navigate between the pages. Each icon button on the pane relates to one of the pages and clicking on them will direct you to the relevant page.

### Create Metrics for Users Outside the Comapny Using SQL

I ended off the project by creating metrics for users outside the company using SQL. I did this by using VisualStudio and SQLTools extension. I began by creating a connection to the Postgres database server hosted on Microsoft Azure through the following steps:

Connected to the SQL Server through VSCode.

- Connection Name: OrdersDB
- Connect Using: Server and Port
- Server address: powerbi-data-analytics-server.postgres.database.azure.com
- Port: 5432
- Database: orders-db
- Username: ****
- Password: Ask on connect

This was done using SQLTools extension which can be found in the extensions tab, and i used the PostgresSQL connection.

Check the Table and Column names:

I first began by printing a list of the tables in the database and saving the results to a csv file. This can be found in the 'table_name.csv' file.

Next i printed a list of the columns in all the tables seperately and saved each of their results in their csv files. This can be found by the files named 'dim_customers.csv', 'dim_date.csv', 'dim_store.csv', 'dim_products.csv and 'Orders_columns.csv'.

Query the Database:

Finally, i went onto write SQL queries to answer five questions. In each case once i got my desired result, i exported the results to csv files along with saving the query itself as sql files.

Q1 - "How many staff are there in all of the UK stores?

The sql queries and the result can be found in 'question_1.sql' and 'question_1.csv'.

Q2 - "Which Month in 2022 has had the highest revenue in 2022"?

The sql queries and the result can be found in 'question_2.sql' and 'question_2.csv'.

Q3 - " Which German Sstore type had the highest revenue for 2022"?

The sql queries and the result can be found in 'question_3.sql' and 'question_3.csv'.

Q4 - "Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders".

The sql queries and the result can be found in 'question_4.sql' and 'question_4.csv'.

Q5 - "Which product category generated the most profit for the "Wiltshire, UK" region in 2021"?

The sql queries and the result can be found in 'question_5.sql' and 'question_5.csv'.


























