with stock_kpi as (select * from {{ ref("cc_stock_kpi") }}),
avg_daily as (select * from {{ ref("avg_daily_qty_91_days") }})

select
    s.product_id,
    s.product_name,
    s.stock,
    s.forecast_stock,
   round( (s.stock) / (avg_daily_qty_91),2) as nb_day_estimated
from stock_kpi s
inner join avg_daily a on s.product_id = a.product_id
where forecast_stock < 50
order by product_id
