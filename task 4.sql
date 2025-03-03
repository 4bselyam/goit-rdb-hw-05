WITH temp AS (
    SELECT 
        order_id,
        quantity
    FROM 
        order_details
    WHERE 
        quantity > 10
)
SELECT 
    temp.order_id,
    AVG(temp.quantity) AS average_quantity
FROM 
    temp
GROUP BY 
    temp.order_id
ORDER BY 
    temp.order_id;
