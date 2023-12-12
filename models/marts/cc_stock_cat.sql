with category as (select * from {{ ref("int_cc_category") }})
select *
from category
order by product_id
