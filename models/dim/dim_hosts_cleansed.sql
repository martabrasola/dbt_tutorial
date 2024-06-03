-- use a CTE to reference the src_hosts model 
-- select every column and every record, and add a cleansing step 
-- to host_name:
-- if host_name is not null, keep the original value
-- if host_name is null, replcae it with the value 'Anonumous'
-- use the NVL(column_name, default_null_value) function 
-- execute dbt run and verify that your model has been created 
{{
  config(
    materialized = 'view',
    )
}}

with src_hosts as (
    select * from {{ ref('src_hosts') }}
)

select 
    hosts_id as host_id,
    NVL(hosts_name, 'Anonymous') as host_name,
    is_superhost,
    created_at,
    updated_at
from 
    src_hosts
