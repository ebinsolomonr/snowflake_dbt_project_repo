
select 
    CR.customerid,
    CR.FULL_NAME,
    {{ customer_classification('CR.Revenue') }} as customer_type
    from {{ ref('customerrevenue') }} as CR
