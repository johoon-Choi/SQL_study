SELECT u.user_id AS 'buyer_id', u.join_date, 
       COUNT(IF(YEAR(o.order_date) = 2019, 1, NULL))
       AS 'orders_in_2019'
FROM users AS u
LEFT JOIN orders AS o ON u.user_id = o.buyer_id
GROUP BY u.user_id, u.join_date;
