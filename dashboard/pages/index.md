---
title: Company Overview
--- 

### Total Revenue
```sql revenue
FROM sakila.revenue
```  
<BigValue 
    data={revenue} 
    value=overall_revenue 
    title="Total Revenue" 
    icon="dollar-sign" 
    color="green" />


### Total Rentals and Customers

```sql total_rentals_and_customers
FROM sakila.total_rentals_and_customers
```

<Grid cols=2>
<BigValue 
    data={total_rentals_and_customers} 
    value=total_rentals 
    title="Total Rentals" 
/>
<BigValue 
    data={total_rentals_and_customers} 
    value=total_customers 
    title="Total Customers" 
/> 
</Grid>