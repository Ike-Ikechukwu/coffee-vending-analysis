# ☕ coffee Vending Machine Sales Analysis



### 📖 Overview
This project analyzes **sales transactions from a coffee vending machine**, focusing on.

🔳**Sales Trends**- Understanding daily, hourly, and seasonal demand patterns.

🔳**Customer Behavior**- identifying frequent buyers, preferred coffee-types and  preferred payment methods.

🔳**Forecasting**- Predicting future sales to optimize inventory and promotions.

The goal is to provide **data-driven strategies for optimizing stock, pricing and promotions.


### ✅Key Objectives
-  Analyze **hourly, daily, and weekly sales trends**
-  Identify top-selling coffee types and revenue contribution
-  Understand **customer purchase behavior and frequency**
-  Forecast **future sales trends** to improve inventory management


### 📂 Project Structure
📂**coffee-vending-analysis**
- **📂`data/`** ➡ Contains raw dataset used for analysis.
- **📂`images/`** ➡ Stores images used in the documentation.
- **📂`queries/`** ➡ Stores all SQL queries for data processing.
- **📂`reports/`** ➡ Holds charts, Excel dashboards, and insights.
- **🗒️`README.md/`** ➡ This file! Provides an overview of the project.
- **🗒️`analysis_summary.md/` ➡** Detailed reports of key insights.


### 📁Dataset Overview
This dataset is sourced from **kaggle**, which captures **2,838 customer transactions from a vending machine** and provides insights into **purchase behaviour, product preferences, and revenue generation**.
|Column Name|Description|Data Type|
|-----------|-----------|---------|
|date|Transaction date|Date|
|datetime|Exact purchase timestamp|Datetime|
|cash-type|Payment method (Card/Cash)|String|
|card|Customer identifier (some nulls)|String|
|money|Transaction amount($)|Flloat|
|coffee_name|Type of coffee purchased|String|


### Methodology
**1.  Data Cleaning (SQL)**

✅Checked for **duplicate transactions** (None found).

✅Identified and handled **NULL value** (Present only in card column and was retained for anonymous purchases).

✅Ensured **consistent coffee names**.

**2.   Sales Analyses (SQL & Excel)**

**✅Peak Sales Hour: 10 AM - 11AM**.

**✅Top Selling Coffees**:
-  ☕ **Latte** - Highest revenue generator ($23,610).
-  ☕ **Americano with Milk** - Second best-selling coffee ($20,640).
 
✅**96% of revenue comes from card payments -** Indicating a strong preference for cashless transactions.  

✅**Customer Purchase Frequency: Top 5 Loyal Customers**


### 📊Key Findings & Visuals
#### 🕐Time-Based Sales Trends

✅**Peak Sales Hour**:**10 AM - 11 AM** -Highest transaction volume and revenue.

✅**Slowest Hours**: **7 AM & 10 PM** - Low customer traffik due to opening and closing times.

✅**Sales Distribution By Time of Day**:
-   **Morning (8 AM - 11 AM)** - High sales due to office coffee breaks.
-   **Afternoon (2 PM - 4 PM)** - Secondary peak from workplace consumption.
-   **Evening (6 PM - 10 PM)** - Decline in demand, aligning with post-office hours.

📌**Business Impact**: ***Stock level should priotize peak office hours, with potential promotions in off-peak periods.***

📷**Visualisation**:









