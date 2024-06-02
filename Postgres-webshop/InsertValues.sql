
INSERT INTO Customer (name, email, password, address, phoneNumber)
VALUES 
('Marko Marić', 'marko.maric@gmail.com', 'password123', '123 Elm Street', '091-723-4311'),
('Luka Lukić', 'luka.lukic@gmail.com', 'password456', '456 Oak Avenue', '098-765-4321');


INSERT INTO Category (name, description)
VALUES 
('Laptops', 'Portable computers'),
('Smartphones', 'Mobile phones with advanced features'),
('Accessories', 'Electronic accessories');


INSERT INTO Product (name, description, price, stockQuantity, categoryId)
VALUES 
('MacBook Pro', 'Apple 13-inch laptop', 1299.99, 10, 1),
('Dell XPS 13', 'Dell 13-inch laptop', 999.99, 20, 1),
('iPhone 13', 'Apple smartphone', 799.99, 30, 2),
('Samsung Galaxy S21', 'Samsung smartphone', 699.99, 25, 2),
('Wireless Mouse', 'Logitech wireless mouse', 29.99, 50, 3);

INSERT INTO ShoppingCart (customerId)
VALUES 
(1),
(2);


INSERT INTO CartItem (quantity, price, cartId, productId)
VALUES 
(2, 1299.99, 1, 1),
(1, 799.99, 1, 3),
(3, 29.99, 2, 5);


INSERT INTO "Order" (orderDate, status, totalAmount, customerId)
VALUES 
(CURRENT_TIMESTAMP, 'Processing', 2599.98, 1),
(CURRENT_TIMESTAMP, 'Shipped', 29.99, 2);


INSERT INTO OrderItem (quantity, price, orderId, productId)
VALUES 
(2, 1299.99, 1, 1),
(1, 799.99, 1, 3),
(1, 29.99, 2, 5);

INSERT INTO Payment (paymentDate, amount, paymentMethod, orderId)
VALUES 
(CURRENT_TIMESTAMP, 2599.98, 'Credit Card', 1),
(CURRENT_TIMESTAMP, 29.99, 'PayPal', 2);