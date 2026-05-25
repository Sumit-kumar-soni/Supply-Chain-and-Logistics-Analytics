-- 5. Customer Segmentation: Average Order Vaue(AOV)

SELECT
		Customer_Segment,
		COUNT(DISTINCT Customer_Id) AS Unique_Customers,
		COUNT(Order_Id) AS Total_Orders,
		CONCAT(ROUND(SUM(Sales) / 1000000 , 2), ' M') AS Total_Revnue_In_Millions,
		ROUND(SUM(Sales) / COUNT(Order_Id), 2) AS AOV
FROM DataCoSupplyChain
GROUP BY Customer_Segment
ORDER BY AOV DESC;