SELECT o.orderId, o.orderDate, o.status, o.totalAmount, 
       c.name AS customerName, c.email, c.address, c.phoneNumber
FROM "Order" o
JOIN Customer c ON o.customerId = c.customerId
WHERE o.orderId = 1;