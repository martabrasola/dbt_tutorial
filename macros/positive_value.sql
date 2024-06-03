{% test positive_value(model, column_name) %}

select *
from {{ model }}
where {{ column_name }} < 1
limit 10 

{% endtest %}