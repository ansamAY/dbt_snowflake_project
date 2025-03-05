SELECT 
id AS order_id, 
customer_id, 
order_date, 
status AS order_status
FROM {{ source('raw_data', 'orders') }}
