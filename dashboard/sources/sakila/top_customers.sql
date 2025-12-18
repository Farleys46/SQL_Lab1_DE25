--Who are our top 5 customers by total spent

SELECT
    customer.customer_id,
    customer.first_name || ' ' || customer.last_name AS full_name,
    ROUND(SUM(payment.amount), 2) AS total_spent,
    customer.active
    
FROM
    staging.customer


LEFT JOIN staging.payment ON customer.customer_id = payment.customer_id

GROUP BY
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    customer.active
    
    
ORDER BY 
    SUM(payment.amount) DESC


