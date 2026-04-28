-- 8. Create a report that includes the quarter, total comments, and total 
-- saves recorded for each post category. Assign the following quarter 
-- groupings: 
-- (January, February, March) → “Q1” 
-- (April, May, June) → “Q2” 
-- (July, August, September) → “Q3” 
-- The final output columns should consist of: 
-- • post_category 
-- • quarter 
-- • total_comments 
-- • total_saves 

SELECT post_category,
CASE 
  WHEN month(date) BETWEEN 1 AND 3 THEN 'Q1'
  WHEN month(date) BETWEEN 4 AND 6 THEN 'Q2'
  WHEN month(date) BETWEEN 7 AND 9 THEN 'Q3'
AND AS Quarter,
  SUM(comments) AS Total_comments,
  SUM(saves) AS Total_saves
FROM fact_content
GROUP BY post_category,Quarter;
