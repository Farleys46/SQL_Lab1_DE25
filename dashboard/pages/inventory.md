## Inventory Overview

#### Number of Inventory Copies per Film
```sql inventory
FROM sakila.inventory
```

```sql total_films_inventory
FROM sakila.total_films_inventory
```

<BigValue 
    data={total_films_inventory} 
    value=total_inventory
    title="Total Inventory Copies" 
/> 

### Categories that generate the most revenue

```sql revenue_per_category
FROM sakila.revenue_per_category
```
<BarChart
    data={revenue_per_category}
    x="name"
    y="total_revenue"
    title="Revenue by Category"
    series=name
/>