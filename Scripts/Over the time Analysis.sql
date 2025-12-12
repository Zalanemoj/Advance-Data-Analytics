--Over the time Analysis
select
year([order_date]),
sum([sales_amount])
from [gold].[fact_sales]
where year([order_date]) is not null
group by year([order_date])