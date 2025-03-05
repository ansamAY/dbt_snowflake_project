SELECT
id AS item_id,
order_id,
product_id,
quantity,
unit_price, 
(quantity * unit_price) AS total_price 
FROM {{ source('raw_data', 'order_items') }}
