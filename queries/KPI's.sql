--	KPI's	--


--Total Sales Revenue

SELECT ROUND(SUM(money), 2) AS "Total_sales_revenue" 
FROM coffee_sales;

--Total Cups of Coffee Sold

SELECT COUNT(money) AS Total_coffees_sold
FROM coffee_sales;

--Average Price of Coffee

SELECT ROUND(AVG(money), 2) AS Average_coffee_price
FROM coffee_sales;
