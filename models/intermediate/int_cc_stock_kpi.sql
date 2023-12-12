select *, round(stock * price, 2) as stock_value
from {{ ref("cc_stock_cat") }}
