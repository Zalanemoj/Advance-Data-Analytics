--Performance Analysis
select
oder_date,
total_sales,
product_name,
Avg(total_sales) over(partition by product_name) as avg_sales,
total_sales-Avg(total_sales) over(partition by product_name) as Compare_to_avg,
lag(total_sales) over(partition by product_name order by oder_date) as py_sales,
total_sales-lag(total_sales) over(partition by product_name order by oder_date) as Comparision_to_py
from(
select
DATETRUNC(YEAR,[order_date]) as oder_date,
[product_name] as product_name,
sum([sales_amount]) as total_sales
from [gold].[fact_sales] f
left join [gold].[dim_products] p
on f.product_key=p.product_key
where order_date is not null
group by DATETRUNC(YEAR,[order_date]),product_name
)t
order by product_name,oder_date