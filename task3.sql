-- 1. Select all users
SELECT * FROM Users;

-- 2. Select name and email from Users
SELECT name, email FROM Users;

-- 3. Find users where email IS NULL
SELECT * FROM Users
WHERE email IS NULL;

-- 4. Find users whose name starts with 'A'
SELECT * FROM Users
WHERE name LIKE 'A%';

-- 5. Find products priced between 500 and 2000
SELECT * FROM Products
WHERE price BETWEEN 500 AND 2000;

-- 6. Find products where category_id is NULL
SELECT * FROM Products
WHERE category_id IS NULL;

-- 7. List orders placed after June 1, 2024
SELECT * FROM Orders
WHERE order_date > '2024-06-01';

-- 8. Show order details for order_id = 1
SELECT * FROM OrderDetails
WHERE order_id = 1;

-- 9. List all distinct product_ids in OrderDetails
SELECT DISTINCT product_id FROM OrderDetails;

-- 10. Show product name and price, sorted by price descending
SELECT name, price FROM Products
ORDER BY price DESC;

-- 11. Show top 2 most expensive products
SELECT * FROM Products
ORDER BY price DESC
LIMIT 2;

-- 12. Show user names and their emails with aliasing
SELECT name AS 'Full Name', email AS 'Email Address' FROM Users;

-- 13. Find orders with total_amount > 50000 OR on/before 2024-06-01
SELECT * FROM Orders
WHERE total_amount > 50000 OR order_date <= '2024-06-01';

-- 14. Show all products that belong to category 1 or 2
SELECT * FROM Products
WHERE category_id IN (1, 2);

-- 15. Show all orders with user names using JOIN
SELECT Orders.order_id, Users.name, Orders.order_date, Orders.total_amount
FROM Orders
JOIN Users ON Orders.user_id = Users.user_id;