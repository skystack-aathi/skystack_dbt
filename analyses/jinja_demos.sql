{% set var1 = "Hello Aathi" -%}
{{var1}}

{#- Try with blocks -#}
{%- set var2 -%}
    Hello Sarah
{% endset %}
{{ var2 }}

{%- set var3 = ['Hello World!','Hello Aathi'] -%}

{{var3[1]}}