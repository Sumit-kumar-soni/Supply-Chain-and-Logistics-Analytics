-- 9. Web Traffic: Peak Browsing Hours

SELECT
		Hour,
		COUNT(DISTINCT IP) AS Unique_Vistors,
		COUNT(URL) AS Total_Page_View
FROM TokenizedAccessLogs
GROUP BY Hour
ORDER BY Total_Page_View DESC;