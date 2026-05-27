{{ config(
    materialized="incremental",
    incremental_strategy="append",
    
) }}

select * from {{source('datafeed_schema','raw_order')}}  limit 10