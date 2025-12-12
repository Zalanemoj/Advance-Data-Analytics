-- Part to Whole
with Categories_sales as (
select 
p.[category] as Categories,
sum(f.[sales_amount]) as Total_sales
from [gold].[fact_sales] f
left join [gold].[dim_products] p
on p.product_key=f.product_key
group by p.[category])

select Categories,Total_sales,overall_sales,
concat(round((cast(Total_sales as float)/overall_sales)*100,2),'%') as Part_to_whole
from(
select
Categories,Total_sales,
sum(Total_sales) over() as overall_sales
from Categories_sales
)_t