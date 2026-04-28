--  Create a report to get the statistics for the account. The final output includes the following fields: 
-- • month_name 
-- • total_profile_visits 
-- • total_new_followers 

SELECT d.month_name,
  SUM(a.profile_visits) AS Total_profile_visits,
  SUM(a.new_followers) AS Total_new_followers
FROM dim_dates d 
JOIN fact_account a 
  ON d.date = a.date
GROUP BY d.month_name;
