--	CUSTOMER BEHAVIOUR ANALYSIS	--


-- Coffee Type by Sales Revenue

SELECT coffee_name AS Coffee_type, ROUND(SUM(money), 0) AS Sales_revenue
FROM coffee_sales
GROUP BY coffee_name
ORDER BY Sales_revenue DESC;

--Sales by Payment Method

SELECT cash_type AS Payment_preference, 
	ROUND((SUM(money))*100/(SELECT (SUM(money))
		FROM coffee_sales),0) AS "Percentage"
FROM coffee_sales
GROUP BY cash_type
ORDER BY Percentage DESC;

--Customer Purchase Frequency

SELECT TOP 5 Card AS "Customer_id", 
	COUNT(Card) AS Purchase_Frequency
FROM coffee_sales
WHERE card IS NOT NULL
GROUP BY card
ORDER BY Purchase_Frequency DESC;
