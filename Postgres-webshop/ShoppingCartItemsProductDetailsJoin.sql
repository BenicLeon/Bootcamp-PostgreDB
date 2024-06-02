SELECT ci.cartItemId, ci.quantity, ci.price, 
       p.name AS productName, p.description AS productDescription, p.price AS productPrice
FROM CartItem ci
JOIN Product p ON ci.productId = p.productId
WHERE ci.cartId = 1;