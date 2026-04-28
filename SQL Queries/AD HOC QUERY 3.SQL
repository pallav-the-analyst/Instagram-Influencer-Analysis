# Filter all the posts that were published on a weekend in the month of March and April and export them to a separate csv file.

SELECT * FROM fact_content 
WHERE month(date) IN (3,4)
AND dayname(date) IN ('saturday','sunday');
