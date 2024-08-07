-- USE THE'REF' FUNCTION TO SELECT FROM OTHER MODELS-

SELECT 
    o.order_id,
    c.CUSTOMER_ID,
    c.CUSTOMER_NAME,
    p.product_id,
    p.product_name,
    o.order_date

FROM
    raw.Orders o
JOIN
	{{ ref("STG_CUSTOMERS") }} c on o.customer_id = c.customer_id
        
JOIN
	raw.products p on o.product_id = p.product_id