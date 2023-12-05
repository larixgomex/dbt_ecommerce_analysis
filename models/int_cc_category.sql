select
    *,,
    -- category
    case
        when regexp_contains(lower(model_name), 't-shirt')
        then 'T-shirt'
        when regexp_contains(lower(model_name), 'short')
        then 'Short'
        when regexp_contains(lower(model_name), 'legging')
        then 'Legging'
        when regexp_contains(lower(model_name), 'brassi.re|crop-top')
        then 'Crop-top'
        when regexp_contains(lower(model_name), 'débardeur|haut')
        then 'Top'
        when regexp_contains(lower(model_name), 'tour de cou|tapis|gourde')
        then 'Accessories'
        else null
    end as model_type
from {{ ref("cc_stock") }}
