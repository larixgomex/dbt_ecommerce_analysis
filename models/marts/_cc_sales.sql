with sales as (select * from {{ ref("stg_cc_sales") }})
select *
from sales