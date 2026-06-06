{{
    config(
        tags= "contains_aii"
    )
}}

select 
*
from 
{{ source('landing','users') }}