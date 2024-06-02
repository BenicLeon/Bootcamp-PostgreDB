ALTER TABLE Customer
ADD CONSTRAINT email_unique UNIQUE (email);

ALTER TABLE Product
ADD CONSTRAINT positive_price CHECK (price >= 0),
ADD CONSTRAINT positive_stock CHECK (stockQuantity >= 0);

ALTER TABLE OrderItem
ADD CONSTRAINT positive_quantity CHECK (quantity > 0),
ADD CONSTRAINT positive_price CHECK (price >= 0);

ALTER TABLE CartItem
ADD CONSTRAINT positive_quantity CHECK (quantity > 0),
ADD CONSTRAINT positive_price CHECK (price >= 0);

ALTER TABLE Payment
ADD CONSTRAINT positive_amount CHECK (amount >= 0);