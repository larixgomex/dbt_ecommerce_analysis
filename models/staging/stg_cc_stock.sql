with source as (select * from {{ source("bq", "cc_stock") }})
select
    model,
    color,
    size,
    model || "_" || color || "_" || coalesce(size, "no-size") as product_id,
    -- name
    model_name,
    color_name,
    model_name
    || " "
    || color_name
    || " "
    || coalesce(
        case when size is null then "" else " - Taille " end, size
    ) as product_name,
    -- product info --
    source.new as pdt_new,
    price,
    -- stock metrics --
    forecast_stock,
    stock
from source
order by product_id
