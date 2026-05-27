{{ config(
    materialized="incremental",
    incremental_strategy="append",
       pre_hook="TRUNCATE TABLE {{ this }}", 
    post_hook="TRUNCATE TABLE {{ref('order_append')}} "
) }}

select * from {{ref('order_append')}}  limit 5