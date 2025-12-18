SELECT
    COUNT(*) AS total_rentals,
    COUNT(DISTINCT rental.customer_id) AS total_customers

FROM
    staging.rental

JOIN staging.customer ON rental.customer_id = customer.customer_id;
