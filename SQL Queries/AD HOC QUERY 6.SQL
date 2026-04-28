-- Create a report that displays the unique post_category names alongside 
-- their respective counts for each month. The output should have three 
-- columns:  
-- • month_name 
-- • post_category_names  
-- • post_category_count 

SELECT d.month_name AS month_name,
  c.post_category AS post_category_names,
  COUNT(post_category) AS post_category_count
FROM fact_content c 
JOIN dim_dates d 
ON c.date = d.date
GROUP BY month_name, post_category_names;
