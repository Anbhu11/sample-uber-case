select * from uber;
SELECT
    DATE("Request timestamp") AS requested_date,
    COUNT(*) AS total_rides
FROM uber
GROUP BY requested_date
ORDER BY requested_date;
SELECT 
    "Pickup point" AS pickup_point,
    SUM(CASE WHEN Status = 'Cancelled' OR Status = 'No Cars Available' THEN 1 ELSE 0 END) AS demand_gap,
    COUNT(*) AS total_requests
FROM uber
GROUP BY "Pickup point";




