{% macro multiply_columns_and_round(col1, col2, decimels) -%}
    round({{col1}} * {{col2}}, {{decimels}})
{% endmacro -%}