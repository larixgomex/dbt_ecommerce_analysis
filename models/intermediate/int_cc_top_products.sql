select product_id, sum(qty) as qty
from {{ ref("_cc_sales") }}
group by product_id
order by qty desc
limit 10
