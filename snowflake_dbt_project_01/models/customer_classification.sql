with customer_classification as (
select
    customerid,
    revenue as total_spent
from {{ref ('orderfact')}}
)

select 
    FO.customerid,
    C.FULL_NAME,
    customer_classification.total_spent,
    {{ customer_classification_macro('total_spent') }} as customer_type
    from {{ ref('orderfact') }} as FO
    left join {{ref('customer_stg')}} as C
    on FO.customerid = C.customerid
