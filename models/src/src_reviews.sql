-- use a cte to reference the AIRBNB.RAW.RAW_REVIEWS table 
-- select every column and every record, and rename the following columns
-- date to review_date
-- comments to review_text 
-- sentiment to review_sentiment 
-- execute 'dbt run' and verify your model has been created 


with raw_reviews as (
    select * from airbnb.raw.raw_reviews
)

select
    listing_id,
    date as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
from raw_reviews

