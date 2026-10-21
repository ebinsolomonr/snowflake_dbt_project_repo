{%- macro customer_classification(revenue) -%}
    case
        when {{ revenue }} > 15000 then 'Prime Customer'
        when {{ revenue }} >= 10000 and {{ revenue }} < 15000 then 'Loyal Customer'
        when {{ revenue }} >= 5000 and {{ revenue }} < 10000 then 'Regular Customer'
        when {{ revenue }} >= 1000 and {{ revenue }} < 5000 then 'Occasional Customer'
        when {{ revenue }} >1 and {{ revenue }} < 1000 then 'New Customer'
        when {{ revenue }} = 0 then 'No Revenue'
        else 'others'
    end
{%-endmacro-%}