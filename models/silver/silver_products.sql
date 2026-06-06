select
    id as product_id,
    title as product_name,
    category,
    ean,
    vendor,
    price,
    date(date_format(created_at, "yyyy-MM-dd")) as product_date
from
{{ ref("bronze_products") }}