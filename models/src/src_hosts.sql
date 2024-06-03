with raw_hosts as (
    select * from {{ source('airbnb', 'hosts') }}
)

select 
    id as hosts_id,
    name as hosts_name,
    is_superhost,
    created_at,
    updated_at

from 
    raw_hosts