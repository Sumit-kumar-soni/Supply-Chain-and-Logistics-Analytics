-- 8. Delivery Status Breakdown by Department

SELECT
		Department_Name,
		SUM(CASE WHEN Delivery_Status = 'Advance shipping' THEN 1 ELSE 0 END) AS 'Shipped_Early',
		SUM(CASE WHEN Delivery_Status = 'Shipping on time' THEN 1 ELSE 0 END) AS 'Shipped_On_Time',
		SUM(CASE WHEN Delivery_Status = 'Late delivery' THEN 1 ELSE 0 END) AS 'Shipped_Late',
		SUM(CASE WHEN Delivery_Status = 'Shipping canceled' THEN 1 ELSE 0 END) AS 'Canceled'
FROM DataCoSupplyChain
GROUP BY Department_Name
ORDER BY Shipped_Late DESC;