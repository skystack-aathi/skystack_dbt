select
    id as user_id,
    name as user_name,
    city,
    state,
    year(birth_date) as birth_year,
    source as sales_channel,
    date(date_format(created_at, "yyyy-MM-dd")) as user_date
from
{{ ref("bronze_users") }}