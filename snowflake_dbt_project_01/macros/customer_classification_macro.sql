{%- macro customer_classification(Revenue) -%}
    case
        when {{ Revenue }} > 15000 then 'Prime Customer'
        when {{ Revenue }} >= 10000 and {{ Revenue }} < 15000 then 'Loyal Customer'
        when {{ Revenue }} >= 5000 and {{ Revenue }} < 10000 then 'Regular Customer'
        when {{ Revenue }} >= 1000 and {{ Revenue }} < 5000 then 'Occasional Customer'
        when {{ Revenue }} >1 and {{ Revenue }} < 1000 then 'New Customer'
        when {{ Revenue }} = 0 then 'No Revenue'
        else 'others'
    end
{%-endmacro-%}