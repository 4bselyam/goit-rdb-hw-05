SELECT 
    od.id,
    od.order_id,
    od.product_id,
    od.quantity,
    (SELECT customer_id 
     FROM orders 
     WHERE id = od.order_id) AS customer_id
FROM 
    order_details od;
