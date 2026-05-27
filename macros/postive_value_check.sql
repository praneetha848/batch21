{% test postive_value_check(model,column_name2) -%}
   select * from {{model}} where {{column_name2}} < 0
{%-endtest %}