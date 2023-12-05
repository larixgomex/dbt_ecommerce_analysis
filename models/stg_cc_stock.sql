SELECT
  model
  ,color
  ,size
  ,model || "_" || color || "_" || coalesce(size,"no-size") AS product_id 
  -- name
  ,model_name
  ,color_name
  ,model_name || " " || color_name || " " || coalesce(CASE WHEN 
         size is null
         THEN "" 
         ELSE " - Taille " 
         END, 
      size) as product_name
  -- product info --
  ,t.new AS pdt_new
  ,price
  -- stock metrics --
  ,forecast_stock
  ,stock
FROM `deft-station-407208.circle.cc_stock`t
ORDER BY product_id