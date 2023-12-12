with

source as (

    select * from {{ source('bq', 'cc_sales') }}

)
select * from source
