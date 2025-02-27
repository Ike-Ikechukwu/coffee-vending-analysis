/*   Data cleaning  */


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


-- checking for null Values

SELECT
	COUNT(CASE WHEN date IS NULL THEN 1 END) AS date_nulls,
	COUNT(CASE WHEN datetime IS NULL THEN 1 END) AS datetime_nulls,
	COUNT(CASE WHEN cash_type IS NULL THEN 1 END) AS cash_type_nulls,
	COUNT(CASE WHEN card IS NULL THEN 1 END) AS card_nulls,
	COUNT(CASE WHEN money IS NULL THEN 1 END) AS money_nulls,
	COUNT(CASE WHEN coffee_name IS NULL THEN 1 END) AS coffee_name_nulls
FROM coffee_sales;
