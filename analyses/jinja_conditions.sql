{% set temp = -10 %}

{%- if temp > 20 -%}
{{"It is Hot"}}
{%- elif temp <0 -%}
{{"It is Freezing"}}
{%- else -%}
{{"It is Not Hot"}}
{%endif%}