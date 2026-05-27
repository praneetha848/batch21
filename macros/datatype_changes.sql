{% macro datatype_changes(column_name1,datatype) -%}
    cast ({{ column_name1 }} as {{ datatype }})
{%- endmacro %}