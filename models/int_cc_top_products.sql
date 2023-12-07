SELECT
  product_id
  ,SUM(qty) AS qty
from {{ ref("cc_sales") }}
GROUP BY product_id
ORDER BY qty DESC
LIMIT 10