		--Data cleaning--

--checking for duplicate records
SELECT date, datetime, cash_type, card, money, 
	coffee_name, COUNT(*) AS duplicate_count
FROM coffee_sales
GROUP BY date, datetime, cash_type, card, money, 
	coffee_name
HAVING COUNT(*) >1;

--checking for inconsistent coffee name entries

SELECT DISTINCT coffee_name
FROM coffee_sales;


-- looking for null Values
SELECT
	COUNT(CASE WHEN date IS NULL THEN 1 END) AS date_nulls,
	COUNT(CASE WHEN datetime IS NULL THEN 1 END) AS datetime_nulls,
	COUNT(CASE WHEN cash_type IS NULL THEN 1 END) AS cash_type_nulls,
	COUNT(CASE WHEN card IS NULL THEN 1 END) AS card_nulls,
	COUNT(CASE WHEN money IS NULL THEN 1 END) AS money_nulls,
	COUNT(CASE WHEN coffee_name IS NULL THEN 1 END) AS coffee_name_nulls
FROM coffee_sales;


		--	KPI's	--
--Total sales revenue
SELECT ROUND(SUM(money), 2) AS "Total_sales_revenue" 
FROM coffee_sales;

--Total cups of coffee sold
SELECT COUNT(money) AS Total_coffees_sold
FROM coffee_sales;

--Average price of coffee
SELECT ROUND(AVG(money), 2) AS Average_coffee_price
FROM coffee_sales;

		--	Time series Analysis	--
--Daily trend for total orders
SELECT DATENAME(WEEKDAY, Date) AS Day_of_week,
	COUNT(*) AS Sales_volume
FROM coffee_sales
GROUP BY DATENAME(WEEKDAY, Date), DATEPART(WEEKDAY, Date)
ORDER BY 	DATEPART(WEEKDAY, Date);

--Hourly trend for sales revenue and volume
SELECT DATEPART(HOUR, Datetime) AS Hour, COUNT(money) AS Sales_volume,
	ROUND(SUM(money), 0) AS "Sales_revenue"
FROM coffee_sales
GROUP BY DATEPART(HOUR, Datetime)
ORDER BY Hour;

--Sales by time of the day (morning, afternoon, evening)
WITH Time_of_day_cte AS (
	SELECT DATEPART(HOUR, Datetime) AS Hour,
		CASE
			WHEN DATEPART(HOUR, Datetime) <= 11 THEN 'Morning'
			WHEN DATEPART(HOUR, Datetime) <= 16 THEN 'Afternoon'
			WHEN DATEPART(HOUR, Datetime) <= 22 THEN 'Evening'
		END AS "Time_of_day", money
	FROM coffee_sales
)
SELECT  time_of_day, ROUND(SUM(money),0) AS Total_revenue 
FROM Time_of_day_cte
GROUP BY Time_of_day
ORDER BY Total_revenue DESC;

--weektype by revenue
WITH week_type_cte AS (
	SELECT 
		CASE
			WHEN DATENAME(WEEKDAY, Date) IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday') THEN 'Weekday'
			WHEN DATENAME(WEEKDAY, Date) IN ('Saturday', 'Sunday') THEN 'Weekend'
		END AS Week_type, money
	FROM coffee_sales
)
SELECT week_type, ROUND(SUM(money), 0) AS Sales_revenue
FROM week_type_cte
GROUP BY Week_type
ORDER BY Sales_revenue;

		--	Customer behaviour analysis	--

-- Coffee type by sales revenue
SELECT coffee_name AS Coffee_type, ROUND(SUM(money), 0) AS Sales_revenue
FROM coffee_sales
GROUP BY coffee_name
ORDER BY Sales_revenue DESC;

--Sales by payment method
SELECT cash_type AS Payment_preference, 
	ROUND((SUM(money))*100/(SELECT (SUM(money))
		FROM coffee_sales),0) AS "Percentage"
FROM coffee_sales
GROUP BY cash_type
ORDER BY Percentage DESC;

--Customer purchase frequency
SELECT TOP 5 Card AS "Customer_id", 
	COUNT(Card) AS Purchase_Frequency
FROM coffee_sales
WHERE card IS NOT NULL
GROUP BY card
ORDER BY Purchase_Frequency DESC;



--checking for inconsistent coffee name entries

SELECT DISTINCT coffee_name
FROM coffee_sales;


-- looking for null Values
SELECT
	COUNT(CASE WHEN date IS NULL THEN 1 END) AS date_nulls,
	COUNT(CASE WHEN datetime IS NULL THEN 1 END) AS datetime_nulls,
	COUNT(CASE WHEN cash_type IS NULL THEN 1 END) AS cash_type_nulls,
	COUNT(CASE WHEN card IS NULL THEN 1 END) AS card_nulls,
	COUNT(CASE WHEN money IS NULL THEN 1 END) AS money_nulls,
	COUNT(CASE WHEN coffee_name IS NULL THEN 1 END) AS coffee_name_nulls
FROM coffee_sales;





select * from coffee_sales;