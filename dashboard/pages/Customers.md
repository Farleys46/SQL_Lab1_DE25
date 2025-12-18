---
title: Customers Dashboard
---
# Top Customers by Total Spend

```sql top_customers
FROM sakila.top_customers
```

```sql top_10_customers
SELECT * FROM sakila.top_customers
ORDER BY total_spent DESC
LIMIT 10
```
<BarChart
    data={top_10_customers}
    x="full_name"
    y="total_spent"
    title="Top 10 Customers by Total Spend"
    series=full_name
/>


```sql c_active
FROM sakila.c_active
```
<Grid cols=2>
    <BigValue
        data={c_active}
        value=active_customers
        title="Active Customers"
    />
    <BigValue
        data={c_active}
        value=inactive_customers
        title="Inactive Customers"
/>
</Grid>