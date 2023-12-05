with kpi_top as (select * from {{ ref("int_cc_stock_kpi_top") }})
select *
from kpi_top
