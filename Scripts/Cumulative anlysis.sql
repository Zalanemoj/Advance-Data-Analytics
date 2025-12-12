--Cumulative anlysis (Running total)
select 
order_date,
total_sales,
sum(total_sales) over(partition by year(order_date) order by order_date)
from(
select 
datetrunc(MONTH,[order_date]) as order_date,
sum([sales_amount]) total_sales
from [gold].[fact_sales]
where  [order_date] is not null
group by datetrunc(MONTH,[order_date])
)t