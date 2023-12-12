select
    model_type,
    model_name,
    count(in_stock) as nb_products,
    sum(in_stock) as nb_products_in_stock,
    round(avg(1 - in_stock), 3) as shortage_rate,
    sum(stock_value) as stock_value,
    sum(stock) as stock
from {{ ref("cc_stock_kpi") }}
group by model_type, model_name
order by stock_value desc
