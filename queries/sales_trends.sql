--	SALES TREND ANALYSIS USING MSSQL	--


--Daily Trend for Total Orders

SELECT DATENAME(WEEKDAY, Date) AS Day_of_week,
	COUNT(*) AS Sales_volume
FROM coffee_sales
GROUP BY DATENAME(WEEKDAY, Date), DATEPART(WEEKDAY, Date)
ORDER BY 	DATEPART(WEEKDAY, Date);

--Hourly Trend for Sales Revenue and Volume

SELECT DATEPART(HOUR, Datetime) AS Hour, COUNT(money) AS Sales_volume,
	ROUND(SUM(money), 0) AS "Sales_revenue"
FROM coffee_sales
GROUP BY DATEPART(HOUR, Datetime)
ORDER BY Hour;

--Sales by Time of The Day (morning, afternoon, evening)

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

--Weektype by Revenue

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

