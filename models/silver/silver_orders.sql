select
    id as order_id,
    user_id,
    product_id,
    quantity,
    unit_price,
    (quantity * unit_price) as order_amount,
    date(date_format(created_at,"yyyy-MM-dd")) as order_date
from
{{ ref("bronze_orders") }}