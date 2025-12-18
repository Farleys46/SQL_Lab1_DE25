SELECT
    staging.category.name,
    ROUND(SUM(payment.amount), 2) as total_revenue

FROM
    staging.category

JOIN staging.film_category on category.category_id = film_category.category_id
JOIN staging.film on film_category.film_id = film.film_id
JOIN staging.inventory on film.film_id = inventory.film_id
JOIN staging.rental on inventory.inventory_id = rental.inventory_id
JOIN staging.payment on rental.rental_id = payment.rental_id

GROUP BY
    staging.category.name

ORDER BY
    total_revenue DESC;