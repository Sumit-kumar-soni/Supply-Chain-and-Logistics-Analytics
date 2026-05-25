-- 10. Web Traffic: Most Viewed vs. Most Bought Categories

SELECT	TOP 10
		Category,
		COUNT(DISTINCT IP) AS Unique_Vsitors,
		COUNT(URL) AS Total_Page_View
FROM TokenizedAccessLogs
GROUP BY Category
ORDER BY Total_Page_View DESC;