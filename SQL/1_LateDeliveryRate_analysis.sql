-- 1. Overall Late Delivery Rate by Shipping Mode

SELECT
		Shipping_Mode,
		COUNT(Order_Id) AS Total_Orders,
		SUM(Late_Delivery_Risk) AS Late_Deliveries,
		ROUND(CAST(SUM(Late_Delivery_Risk) AS FLOAT) * 100 / COUNT(Order_Id) , 2) AS Late_Deliveries_Rate_Percentage
FROM DataCoSupplyChain
GROUP BY Shipping_Mode
ORDER BY Late_Deliveries_Rate_Percentage DESC;