select
o.order_date, 
O.order_id,
sum(total_price) AS total_price 
from 
{{ref('stg_orders')}} O 
LEFT JOIN {{ref('stg_order_items')}} OI
ON O.ORDER_ID=OI.ORDER_ID
GROUP BY 1,2
