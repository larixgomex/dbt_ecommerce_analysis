with
    stock as (select * from {{ ref("stg_cc_stock") }})
SELECT * FROM stock 