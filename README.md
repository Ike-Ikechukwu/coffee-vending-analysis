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
   



