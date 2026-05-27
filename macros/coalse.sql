{% macro coalse(column_name1,default) -%}
    coalesce({{ column_name1 }} , {{ default }})
{%- endmacro %}

coal(col,0)