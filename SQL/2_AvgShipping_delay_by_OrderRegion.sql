-- 2. Average Shipping Delay by Order Region

SELECT
		Order_Region AS Region,
		ROUND(AVG(CAST(Days_For_Shipping_Real AS FLOAT)), 2) AS Avg_Actual_shipping_days,
		ROUND(AVG(CAST(Days_For_Shipment_Scheduled AS FLOAT)), 2) AS Avg_Scheduled_delivery_days,
		ROUND(AVG(CAST((Days_For_Shipping_Real - Days_For_Shipment_Scheduled) AS FLOAT)), 2) AS Avg_Delays_In_Days
FROM DataCoSupplyChain
GROUP BY Order_Region
ORDER BY Avg_Delays_In_Days DESC;