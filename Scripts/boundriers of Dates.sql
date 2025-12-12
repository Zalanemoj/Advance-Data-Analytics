-- boundriers of Dates
select 
min([order_date]),
max([order_date]),
DATEDIFF(year,min([order_date]),max([order_date]))
from [gold].[fact_sales]
--where [order_date] is not null
--order by [order_date] desc