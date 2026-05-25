-- 6. Fraud Detection: High Discounts Yielding Negative Profit

SELECT
		Order_Id,
		CONCAT(Customer_First_Name, ' ', Customer_Last_Name) AS Customer_Name,
		Product_Name,
		ROUND(Order_Item_Discount_Rate, 2) AS Order_Item_Discount_Rate,
		ROUND(Sales, 2) AS Sales,
		ROUND(Order_Profit_Per_Order, 2) AS Order_Profit_Per_Order
FROM DataCoSupplyChain
WHERE  Order_Profit_Per_Order < 0 AND Order_Item_Discount_Rate > 0.2
ORDER BY Order_Profit_Per_Order ASC;