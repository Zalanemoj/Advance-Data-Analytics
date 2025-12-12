--Top 5 Product by revenue
select top 5 
[product_name],
sum([sales_amount]) as toatal_revenue
from [gold].[dim_products] p
left join [gold].[fact_sales] f
on p.product_key=f.product_key
group by [product_name]
order by toatal_revenue desc

--worst 5 Product by revenue
select top 5 
[product_name],
sum([sales_amount]) as toatal_revenue
from [gold].[fact_sales] f
left join [gold].[dim_products] p
on p.product_key=f.product_key
group by p.[product_name]
order by toatal_revenue 

--top 10 Customers by revenu
select top 10 c.[customer_id],
c.[first_name],c.[last_name],
sum(f.[sales_amount]) total_revenue
from [gold].[fact_sales] f
left join [gold].[dim_customers] c
on f.customer_key=c.customer_key
group by [customer_id],[first_name],[last_name]
order by total_revenue desc

--worst 3 customers
select top 3 c.[customer_id],
c.[first_name],c.[last_name],
sum(f.[sales_amount]) total_revenue
from [gold].[fact_sales] f
left join [gold].[dim_customers] c
on f.customer_key=c.customer_key
group by [customer_id],[first_name],[last_name]
order by total_revenue 
