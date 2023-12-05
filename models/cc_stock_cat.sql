with
    category as (select * from {{ ref("int_cc_category") }})
SELECT * FROM category