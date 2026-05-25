-- 3. Top 10 Most Profitable Product Categories

SELECT TOP 10
		Category_Name,
		COUNT(Order_Id) AS Total_Item_Sold,
		CONCAT(ROUND(SUM(Sales) / 1000000, 2), ' M') AS Total_Revenue_In_Millions,
		CONCAT(ROUND(SUM(Order_Profit_Per_Order / 1000000), 2), ' M') AS Total_Profit_In_Millions,
		ROUND(SUM(Order_Profit_Per_Order) / SUM(Sales) * 100, 2) AS Profit_Margin_Percentage
FROM DataCoSupplyChain
GROUP BY Category_Name
ORDER BY Total_Profit_In_Millions DESC;