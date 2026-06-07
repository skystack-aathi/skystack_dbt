select
    id as order_id,
    user_id,
    product_id,
    quantity,
    unit_price,
    {{multiply_columns_and_round('quantity','unit_price',2) }} as order_amount,
    date(date_format(created_at,"yyyy-MM-dd")) as order_date
from
{{ ref("bronze_orders") }}