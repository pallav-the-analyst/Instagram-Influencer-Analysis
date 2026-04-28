--  Create a stored procedure that takes the 'Week_no' as input and 
-- generates a report displaying the total shares for each 'Post_type'. The 
-- output of the procedure should consist of two columns: 
-- • post_type 
-- • total_shares 

SELECT c.post_type,
  SUM(shares) AS Total_shares
FROM fact_content c 
JOIN dim_dates d 
  ON d.date = c.date
WHERE d.week_no = 'W15'
GROUP BY c.post_type
ORDER BY Total_shares DESC;
