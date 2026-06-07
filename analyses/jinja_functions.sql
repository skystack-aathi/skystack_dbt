Datetime: {{ modules.datetime.datetime.now() }}
Date: {{ modules.datetime.date.today()}}

{% set columns = adapter.get_columns_in_relation(ref("bronze_orders")) -%}

Select
{% for col in columns -%}
    {{ col.name }}
    {%- if not loop.last -%}
    ,
    {%- endif %}
{% endfor -%}
from {{ref("bronze_orders")}}