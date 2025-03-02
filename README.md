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
This dataset is sourced from **kaggle**, which captures **2,838 customer transactions from a vending machine** and provides insights into **sales trend, purchase behaviour, product preferences, and revenue generation**.
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

⚪Checked for **duplicate transactions** (None found).

⚪Identified and handled **NULL value** (Present only in card column and was retained for anonymous purchases).

⚪Ensured **consistent coffee names**.

**2.   Sales Analyses (SQL & Excel)**

**⚪Sales performance overview**.

**⚪Time series analysis of sales trends**.

**⚪Top Selling Coffee types**.

**⚪Customer purchase behavior**.

**⚪Forecasting next months sales**.


### 📊Key Findings & Visuals

#### 🕐Time-Based Sales Trends

⚪**Busiest Sales Days**: Tuesdays have the highest sales volume, followed by Mondays.

⚪**Lowest Sales Day**: Sundays have the lowest number of transactions.

⚪**Peak Sales Hours by time of day**:
- **Morning (10 AM & 11 AM)** -  High sales due to office coffee breaks and employees purchasing coffee before starting work.
- **Afternoon (4 PM)** - A secondary peak, likely due to an afternoon energy boost for workers finishing tasks before the end of the day.
- **Evening (7 PM & 9 PM)** - Another notable demand surge, potentially linked to students, night-shift workers, or late-night relaxation routines.

⚪**Slowest Hours**: **7 AM & 10 PM** - Low customer traffik due to opening and closing times.

📌**Business insight**: ***Stock level should priotize peak office hours, with potential promotions in off-peak periods.***

📷**Visualization**:

#### 🗓️Weekend vs Weekday Sales Performance
Sales are generally higher on weekdays than weekends due to workplace coffee consumption.
- **Weekday Sales**: **$65,502**.
- **Weekend Sales**: **$24,994**

📌**Business insight**:
- ***Stock should be optimized for weekdays**, with enough supply for office workers*.
- ***Weekend discount strategies** could boosts sales outside workplace hours*.
- ***Exploring vending locations near residential areas** may help balance weekend performance*.

📷**Visualization**:

#### Best-Selling Coffee Types
⚪**Top Revenue-Generating Coffee**:
- ☕Latte - Highest revenue ($23,610).
- ☕Americano with milk - Second-highest revenue ($20,640).

⚪**Least Popular**:
- ☕Espresso - Lower sales suggesting customer preference for milk-based coffees.

📌**Business insight**: ***Focus on promoting best-selling drinks while optimizing stock for low-demand products.

📷**Visualization**:

#### Customer Purchase Behavior

⚪**Average Spending Per Customer**: Customers typically spend around **31.89** per purchase.

⚪**Repeat Customers**: Many anonymized customer IDs indicate multiple transactions, suggesting customer retention.
-  **Top 5 Loyal Customers**: The five most frequent customers account for a significant percentage of repeat purchases.
-  Each of these customers made at least **15 purchases**, showcasing strong loyalty.
-  High-frequency buyers prefer **Latte and Americano with Milk**, aligning with overall best-selling trends.

⚪**Payment Preference**: Majority of transactions are card-based.

📌**Business Insight**:
-  ***Enhancing Customer Loyalty**: Implementing a loyalty program (e.g., "**Buy 5, Get 1 Free**") could increase repeat purchases and strengthen customer retention.*
-  ***Personalized Promotions**: Tailored discounts and targeted marketing campaigns can boost engagement and revenue.*
-  ***Optimizing Payment Experience**: Ensuring seamless card transactions can prevent lost sales due to payment failures and improve customer satisfaction.*

📷**Visualization**:

#### Forecasting Next Month’s Sales

The forecast was generated using Excel’s built-in forecasting tool, which applies exponential smoothing to predict future sales trends based on historical data.

**⚪Historical Trends**: Sales have fluctuated between **6,720 - 9,063** per month.

**⚪Projected Sales for the Next Three Months**:
-  January: 10,403.86 (Confidence Interval: 6,921.66 - 13,886.06)
-  February: 10,739.28 (Confidence Interval: 7,257.07 - 14,221.50)
-  March: 11,074.71 (Confidence Interval: 7,592.47 - 14,556.95)

📌**Key Takeaways**:
-  Sales are expected to follow historical patterns, with peak sales during weekdays and slight declines on weekends.
-  The forecast suggests a steady upward trend, indicating growing demand.
-  Monitoring actual sales vs. forecasted sales will help refine future predictions.
-  Promotional campaigns could be strategically placed during predicted slow periods to maintain revenue consistency.


### Recommendations

#### 1. Stock Optimization & Inventory Planning
✔ Prioritize stocking for weekdays.

✔ Reduce stock of low-demand items (e.g., Espresso) to prevent wastage.

✔ Monitor sales trends monthly to adjust stock dynamically.

#### 2. Product Strategy & Promotions
✔ Focus marketing on best-selling coffee types (Latte & Americano).

✔ Introduce combo offers (e.g., buy 5, get 1 free) to increase volume sales.

✔ Offer loyalty rewards to top 5 repeat customers to enhance retention.

#### 3. Product Strategy & Promotions
✔ Focus marketing on best-selling coffee types (Latte & Americano).

✔ Introduce combo offers (e.g., buy 5, get 1 free) to increase volume sales.

✔ Offer loyalty rewards to top 5 repeat customers to enhance retention.

#### 4. Weekend Sales Boosting Strategy
✔ Offer discounted coffee prices on weekends to attract non-office customers.

✔ Introduce a “Happy Hour” discount (e.g., 6 PM - 8 PM) to increase evening sales.

✔ Explore alternative vending locations near residential areas for weekend foot traffic.

#### 5. Data-Driven Decision Making & Monitoring
✔ Track customer purchase frequency to refine loyalty incentives.

✔ Compare actual vs. forecasted sales for better inventory adjustments.

✔ Regularly analyze weekday vs. weekend performance to optimize operations.











