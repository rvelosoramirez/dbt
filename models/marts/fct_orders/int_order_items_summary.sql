--Utilizando como una dimension agrupadora "order_key", se generan las agregaciones de la tabla fact.

select 
    order_key,
    sum(extended_price) as gross_item_sales_amount,
    sum(item_discount_amount) as item_discount_amount
from
    {{ ref('int_order_items') }}
group by
    order_key
