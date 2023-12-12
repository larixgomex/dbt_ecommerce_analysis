with stock as (select * from {{ ref("stg_cc_stock") }})
select *
from stock