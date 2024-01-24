SELECT SUM(orders.product_quantity * dim_product.sale_price) AS total_revenue,
       EXTRACT(MONTH FROM orders.order_date::date)
FROM orders
JOIN dim_product
ON orders.product_code = dim_product.product_code
WHERE EXTRACT(YEAR FROM orders.order_date::date) = 2022
GROUP BY EXTRACT (MONTH FROM orders.order_date::date)
ORDER BY total_revenue DESC
LIMIT 1;



