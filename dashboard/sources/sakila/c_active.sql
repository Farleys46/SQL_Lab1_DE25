SELECT
    COUNT(CASE WHEN customer.active = 1 THEN 1 END) AS active_customers,
    COUNT(CASE WHEN customer.active = 0 THEN 1 END) AS inactive_customers

FROM staging.customer
