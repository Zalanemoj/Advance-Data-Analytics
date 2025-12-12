-- Customer by country
select 
country,
count([customer_key])
from [gold].[dim_customers]
group by [country]

-- Customers by gender
select
[gender],
count([customer_key])
from [gold].[dim_customers]
group by [gender]

--Product by Categarires
select 
[category],
avg([cost])
from [gold].[dim_products]
group by [category]
order by avg([cost]) desc 

--revenu by customer
select 
c.[customer_id],
sum(f.sales_amount) as total_revenu
from [gold].[dim_customers] c
left join [gold].[fact_sales] f
on c.customer_key=f.customer_key
group by c.[customer_id]
order by total_revenu desc