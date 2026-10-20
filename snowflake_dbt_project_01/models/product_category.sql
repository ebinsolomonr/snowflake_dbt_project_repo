select
    productid,
    category,
    case when retailprice > 01 and retailprice <= 50 then 'Medium'
    when retailprice > 50 then 'High' 
    else 'others' 
    end as price_category
from db1.l1_landing.products