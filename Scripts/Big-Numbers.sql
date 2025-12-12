select 
sum([sales_amount]) as total_sales,
sum([quantity]) as total_quantity,
avg([price]) as Price_avg,
count(distinct [order_number])
from [gold].[fact_sales]

select 
count(distinct[product_key])
from [gold].[dim_products]

select 
count(distinct c.[customer_id])
from [gold].[dim_customers] as c
join [gold].[fact_sales] as f
on c.[customer_key]=f.[customer_key]