{% set names = ['John','Doe','James'] -%}

SELECT
{% for name in names -%}
    {{name}}
    {%- if not loop.last -%}
    ,
    {%- endif %}
{% endfor -%}
FROM employee;