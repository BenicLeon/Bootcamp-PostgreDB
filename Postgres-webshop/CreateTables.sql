
CREATE TABLE Customer (
    customerId SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    address TEXT,
    phoneNumber VARCHAR(20)
);

CREATE TABLE Category (
    categoryId SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE Product (
    productId SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stockQuantity INT NOT NULL,
    categoryId INT,
    FOREIGN KEY (categoryId) REFERENCES Category(categoryId)
);

CREATE TABLE ShoppingCart (
    cartId SERIAL PRIMARY KEY,
    createdDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES Customer(customerId)
);

CREATE TABLE CartItem (
    cartItemId SERIAL PRIMARY KEY,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    cartId INT,
    productId INT,
    FOREIGN KEY (cartId) REFERENCES ShoppingCart(cartId),
    FOREIGN KEY (productId) REFERENCES Product(productId)
);

CREATE TABLE "Order" (
    orderId SERIAL PRIMARY KEY,
    orderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    totalAmount DECIMAL(10, 2),
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES Customer(customerId)
);

CREATE TABLE OrderItem (
    orderItemId SERIAL PRIMARY KEY,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    orderId INT,
    productId INT,
    FOREIGN KEY (orderId) REFERENCES "Order"(orderId),
    FOREIGN KEY (productId) REFERENCES Product(productId)
);

CREATE TABLE Payment (
    paymentId SERIAL PRIMARY KEY,
    paymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10, 2) NOT NULL,
    paymentMethod VARCHAR(50),
    orderId INT,
    FOREIGN KEY (orderId) REFERENCES "Order"(orderId)
);
