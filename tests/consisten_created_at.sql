select a.listing_id, created_at, review_date
from {{ ref('dim_listings_cleansed') }} a
left join {{ ref('fct_reviews') }} b
on a.listing_id = b.listing_id
where review_date <= created_at

-- make sure that every review_date in fct_reviews is more recent than the associated created_at in dim_listings_cleansed