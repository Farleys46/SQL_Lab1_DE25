SELECT
    staff.staff_id,
    staff.first_name || ' ' || staff.last_name AS full_name,
    COUNT(payment.payment_id) AS number_of_payments,
    ROUND(SUM(payment.amount), 2) AS total_revenue,
    ROUND(AVG(payment.amount), 2) AS average_revenue_per_payment

FROM
    staging.staff
    
JOIN staging.payment ON staff.staff_id = payment.staff_id


GROUP BY
    staff.staff_id,
    staff.first_name,
    staff.last_name

ORDER BY total_revenue DESC;