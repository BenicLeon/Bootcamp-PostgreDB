SELECT p.paymentId, p.paymentDate, p.amount, p.paymentMethod, 
       o.orderId, o.orderDate, o.totalAmount
FROM Payment p
JOIN "Order" o ON p.orderId = o.orderId
WHERE p.orderId = 1; 