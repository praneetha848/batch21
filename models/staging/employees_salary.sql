
{{ config(
    materialized='table') 
    }}

with
emp_data as (
     select 
     {{datatype_changes('empid', 'int') }} as emp_id,
     firstname, 
     ({{coalse('salary','0')}}) as sal,
     tax_amount,
    ({{calculate_amount('salary','tax_amount')}}) as total_amount
   from 
 {{source('datafeed_schema','emp_sal')}}
)
select * from emp_data