-- 4. Order Cancellation & Return Rate By Market

SELECT
		Market,
		COUNT(Order_Id) AS Total_Orders,
		SUM(CASE WHEN Order_Status IN ('Suspected Fraud', 'Canceled', ' Returned', 'On Hold', 'Closed') THEN 1 ELSE 0 END) AS Bad_Orders,
		ROUND(CAST(SUM(CASE WHEN Order_Status IN ('Suspected Fraud', 'Canceled', ' Returned', 'On Hold', 'Closed') THEN 1 ELSE 0 END) AS FLOAT) / COUNT(Order_Id) * 100 , 2) AS Cancellation_Return_Rate
FROM DataCoSupplyChain
GROUP BY Market
ORDER BY Cancellation_Return_Rate DESC;