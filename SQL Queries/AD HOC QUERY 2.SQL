# What are the highest and lowest recorded impressions for each post type? 

SELECT post_type,
  MAX(impressions) AS Highest_impression ,
  MIN(impressions) AS Lowest_impression
FROM fact_content
GROUP BY post_type;
