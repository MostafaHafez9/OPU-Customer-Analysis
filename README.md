📁 OPU-Customer-Analysis
│
├── 📊 PowerBI
│   └── OPU Dashboard - Customer Analysis.pbix
│
├── 📄 Dataset
│   └── online_retail_II.csv
│
├── 🧪 SQL
│   ├── 1_EDA.sql
│   ├── 2_Transformation.sql
│   └── 3_The_Last_Layer.sql  (Fact & Dimension Tables)
│
├── 🖼 Images
│   ├── 1_OPU Dashboard - Customer Analysis.png
│   ├── 2_Insights & Recommendations.png
│   ├── 3_EDA Sample.png
│   ├── 4_Transformation Sample.png
│   └── 5_The Last Layer Sample.png

1. Project Overview

This project aims to understand customer purchasing behavior, product performance, and revenue trends by analyzing an e-commerce retail dataset containing 1 million+ records.

The analysis focuses on answering key business questions:

How active are customers?

How much revenue does each customer generate?

Which products drive the most orders and revenue?

Which countries show the strongest purchasing behavior?

How do customer segments (Champion, Loyal, Potential, etc.) differ?

To answer these questions, the project uses 3 core KPIs:

🔸 OPU (Orders Per User) – Customer activity
🔸 ARPU (Avg Revenue Per User) – Customer financial value
🔸 AOV (Avg Order Value) – Spending behavior per order

These KPIs are calculated through a cleaned & modeled dataset and visualized in an interactive Power BI dashboard.

🧹 2. Data Cleaning & Preparation (SQL)

All processing was performed in SQL Server using the raw file:
online_retail_II.csv

✔ Key cleaning steps:

Removed invalid quantities and negative values

Handled missing values (CustomerID, InvoiceDate…)

Standardized product descriptions

Converted data types

Removed duplicates

Filtered out cancelled transactions

✔ Feature Engineering:

Added Year and Month columns

Calculated Revenue

Assigned Product Segments

Built Customer Segments (RFM-inspired)

📌 Sample code available inside:
1_EDA.sql
2_Transformation.sql

🏗 3. Data Modeling (Star Schema)

A complete Star Schema was designed consisting of:

📌 Fact Table

FactSales

InvoiceNo

CustomerID

StockCode

Quantity

Revenue

Year

Month

Product Segment

Customer Segment

📌 Dimension Tables

DimCustomer

DimProduct

DimDate

DimGeography

This layer is available in:
3_The_Last_Layer.sql

🖼 See image: 5_The Last Layer Sample

📊 4. Power BI Dashboard
The dashboard focuses on 4 main analytical areas:
🟧 A. Key Metrics

OPU = 6.1

ARPU = 2.1K

AOV = 345.3

Revenue = 12.2M

Customers = 5786

Orders = 35.3K

🖼 Image: 1_OPU Dashboard - Customer Analysis

🟦 B. Customer Insights

Champion customers place the highest number of orders

Potential customers are the largest group but underperform in orders & revenue

ARPU is highest for Champions (7.6K+)

At-Risk segment has very low activity

🟩 C. Product Insights

Best Seller products have the highest OPU (5.9)

Rarely Sold products exceed 1,000+ items but with very low demand

Significant opportunity to optimize product catalog

🟨 D. Seasonal Trends

November & December show the highest customer activity

Slight performance decline in 2011 vs. 2010

Monthly OPU shows consistent upward trend toward Q4

💡 5. Key Insights
1️⃣ Business ramp-up in 2009

Only 1 month of data → lower performance.

2️⃣ Slight decrease from 2010 → 2011

OPU dropped

Revenue slightly decreased

Customer count decreased

Indicating a mild decline in customer activity.

3️⃣ Q4 is the strongest season

November & December peak in OPU

Consistent spending increases

4️⃣ Customer Segments

Champions bring the highest value

Potential customers need targeted campaigns

At-Risk customers require retention attention

🖼 Image: 2_Insights & Recommendations

🧭 6. Recommendations
✔ 1. Retain & grow Champion customers

Loyalty programs

Exclusive offers

Early access to new collections

✔ 2. Convert Potential → Loyal / Champion

Personalized campaigns

Bundles & discounts

Product education

✔ 3. Maximize Q4 performance

Strong marketing before October

Product bundles for holidays

✔ 4. Optimize the product catalog

Reduce Rarely Sold items

Promote Best Sellers

Improve inventory planning

🚀 7. Tools & Technologies
Tool	Usage
SQL Server	Cleaning, transformations, fact/dimension model
Power BI	Dashboard, DAX, data modeling
Excel	Quick checks, validation
GitHub	Version control
Dataset: Online Retail II	1M+ rows

🙌 8. About the Analyst

This project was completed as part of a full Data Analysis workflow including:

Data cleaning (1M+ rows)

SQL query optimization

Data modeling (Star Schema)

KPI design

Dashboard building in Power BI

Business insights & actionable recommendations

📎 Screenshots
Section	Image
Dashboard	1_OPU Dashboard - Customer Analysis
Insights	2_Insights & Recommendations
EDA Sample	3_EDA Sample
Transformations	4_Transformation Sample
Data Model	5_The last layer sample
⭐ Feel free to explore the files and reach out for any feedback or collaboration!
