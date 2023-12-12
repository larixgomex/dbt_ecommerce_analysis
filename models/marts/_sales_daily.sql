select product_id, sum(qty) as qty_91, round(sum(qty) / 91, 2) as avg_daily_qty_91
from {{ ref('_cc_sales') }}
where date_date >= date_sub('2021-10-01', interval 91 day)
group by product_id
