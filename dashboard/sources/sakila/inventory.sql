SELECT
    film.title,
    COUNT(inventory.inventory_id) AS number_of_copies
    
FROM staging.film

JOIN staging.inventory ON film.film_id = inventory.film_id

GROUP BY
    film.title
    
ORDER BY
    number_of_copies DESC