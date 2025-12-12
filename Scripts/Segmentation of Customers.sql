--Segmentation of Customers

with segmentation as (
select 
[customer_id] as customer_id,
sum([sales_amount]) as total_spending,
min([order_date]) as first_oder,
Max([order_date]) as Last_oder
from [gold].[fact_sales] f
left join [gold].[dim_customers] c
on f.customer_key=c.customer_key
group by [customer_id]
)

select segment,
count(customer_id) as total_customers
from(
select
customer_id,total_spending,
case when total_spending>5000 and Time_period>12 then'VIP'
	when total_spending<5000 and Time_period>=12 then 'Regular'
	else 'New'
end as segment
from(
select 
customer_id,
total_spending,
first_oder,Last_oder,
datediff(month,first_oder,Last_oder) as Time_period
from segmentation
)t
)t
group by segment
order by total_customers desc