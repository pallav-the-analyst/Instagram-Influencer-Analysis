--  Write a CTE that calculates the total number of 'likes’ for each 
-- 'post_category' during the month of 'July' and subsequently, arrange the 
-- 'post_category' values in descending order according to their total likes. 

WITH july_likes AS (SELECT c.post_category,
  sum(c.likes) AS Total_likes
FROM fact_content c 
JOIN dim_dates d 
  ON c.date = d.date
WHERE d.month_name = 'July'
GROUP BY c.post_category)
SELECT * 
FROM july_likes
ORDER BY Total_likes desc;
