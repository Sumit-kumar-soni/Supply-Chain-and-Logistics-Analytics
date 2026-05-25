-- 7. Monthly Sales and Volume Trend

SELECT
		YEAR(Order_Date) AS Sales_Year,
		MONTH(Order_Date) AS Sales_Month,
		COUNT(Order_Id) AS Monthly_Volumne,
		CONCAT(ROUND(SUM(Sales) / 100000, 2), ' M') AS Monthly_Revenue_In_Millions
FROM DataCoSupplyChain
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Sales_Year, Sales_Month;