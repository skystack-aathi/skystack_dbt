{{
    config(
        severity="warn"
    )
}}
select 
1
from
{{ source("landing","orders") }}
where unit_price <= 0 or quantity <= 0