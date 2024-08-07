
SELECT 
    o.order_id,
    c.CUSTOMER_ID,
    c.CUSTOMER_NAME,
    p.product_id,
    p.product_name,
    o.order_date,
    {{ get_date_parts('order_date') }} as date_extract

FROM
    raw.Orders o
JOIN
	{{ ref("STG_CUSTOMERS") }} c on o.customer_id = c.customer_id
        
JOIN
	raw.products p on o.product_id = p.product_id