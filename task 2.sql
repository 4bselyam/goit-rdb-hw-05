SELECT 
    od.id,
    od.order_id,
    od.product_id,
    od.quantity
FROM 
    order_details od
WHERE 
    od.order_id IN (
        SELECT id 
        FROM orders 
        WHERE shipper_id = 3
    );
