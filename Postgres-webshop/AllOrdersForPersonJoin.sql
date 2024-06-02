SELECT o.orderId, o.orderDate, o.status, o.totalAmount
FROM "Order" o
JOIN Customer c ON o.customerId = c.customerId
WHERE c.customerId = 1;