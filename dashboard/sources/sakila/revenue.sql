SELECT
    film.title,
    film.film_id,
    SUM(payment.amount) AS total_revenue,
    SUM(total_revenue) OVER () AS overall_revenue

FROM
    staging.film AS film


JOIN staging.inventory AS inventory ON film.film_id = inventory.film_id
JOIN staging.rental AS rental ON inventory.inventory_id = rental.inventory_id
JOIN staging.payment AS payment ON rental.rental_id = payment.rental_id

GROUP BY
    film.title,
    film.film_id

ORDER BY
    total_revenue DESC;