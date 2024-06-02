SELECT oi.orderItemId, oi.quantity, oi.price, 
       p.name AS productName, p.description AS productDescription, p.price AS productPrice
FROM OrderItem oi
JOIN Product p ON oi.productId = p.productId
WHERE oi.orderId = 1;