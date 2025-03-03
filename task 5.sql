DROP FUNCTION IF EXISTS divide_values;

DELIMITER //
CREATE FUNCTION divide_values(numerator FLOAT, denominator FLOAT) 
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF denominator = 0 THEN
        RETURN NULL;
    ELSE
        RETURN numerator / denominator;
    END IF;
END//
DELIMITER ;

SELECT 
    id,
    order_id,
    product_id,
    quantity,
    divide_values(quantity, 2.5) AS divided_quantity
FROM 
    order_details
ORDER BY 
    order_id, id
LIMIT 20;
