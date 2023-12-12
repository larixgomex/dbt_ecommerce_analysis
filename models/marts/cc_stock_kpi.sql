with stock_kpi as (select * from {{ ref("int_cc_stock_kpi") }})
select *
from stock_kpi
order by product_id
