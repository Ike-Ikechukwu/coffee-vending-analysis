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
