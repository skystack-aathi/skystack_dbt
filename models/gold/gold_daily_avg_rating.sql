select 
    r.product_id,
    p.product_name,
    avg(r.rating) as avg_rating,
    date(date_format(r.created_at,'yyyy-MM-dd')) as review_date
from {{ ref("bronze_reviews") }} r 
left join {{ ref("silver_products") }} p on r.product_id = p.product_id
group by all