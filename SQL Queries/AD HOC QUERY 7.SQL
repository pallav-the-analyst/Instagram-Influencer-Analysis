--  What is the percentage breakdown of total reach by post type?  The final 
-- output includes the following fields: 
-- • post_type 
-- • total_reach 
-- • reach_percentage 

WITH cte AS (
SELECT
  SUM(reach) AS Total_reach_all
FROM fact_content)
SELECT post_type,
  SUM(reach) AS Total_reach,
  ROUND(SUM(reach)/(SELECT Total_reach_all FROM cte)*100,2) AS reach_percentage
FROM fact_content
GROUP BY post_type;
