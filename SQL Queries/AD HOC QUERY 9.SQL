-- List the top three dates in each month with the highest number of new 
-- followers. The final output should include the following columns: 
-- • month 
-- • date 
-- • new_followers 

WITH cte AS (select d.month_name as month,
  d.date AS date,
  a.new_followers AS new_followers,
  RANK() OVER(PARTITION BY d.month_name ORDER BY new_followers DESC) AS rnk 
FROM fact_account a 
JOIN dim_dates d 
  ON d.date = a.date)
SELECT
  month,
  date,
  new_followers
FROM cte
WHERE rnk <=3
ORDER BY month,new_followers DESC;
