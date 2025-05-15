
-- 1. Average delivery time per restaurant
SELECT r.name AS restaurant_name,
       ROUND(AVG(d.delivery_time_mins), 2) AS avg_delivery_time
FROM deliveries d
JOIN restaurant_dim r ON d.restaurant_id = r.restaurant_id
GROUP BY r.name
ORDER BY avg_delivery_time;

-- 2. Total deliveries by city
SELECT c.city,
       COUNT(d.delivery_id) AS total_deliveries
FROM deliveries d
JOIN customer_dim c ON d.customer_id = c.customer_id
GROUP BY c.city
ORDER BY total_deliveries DESC;

-- 3. Revenue per restaurant over time
SELECT r.name AS restaurant_name,
       d.delivery_date,
       SUM(d.total_amount) AS revenue
FROM deliveries d
JOIN restaurant_dim r ON d.restaurant_id = r.restaurant_id
GROUP BY r.name, d.delivery_date
ORDER BY d.delivery_date;

-- 4. Number of deliveries by gender
SELECT c.gender,
       COUNT(d.delivery_id) AS delivery_count
FROM deliveries d
JOIN customer_dim c ON d.customer_id = c.customer_id
GROUP BY c.gender;
