USE leetcode;
CREATE TABLE IF NOT EXISTS orders
(
    order_number    int,
    customer_number int
)
TRUNCATE TABLE orders
INSERT INTO orders (order_number, customer_number)
VALUES ('1', '1')
INSERT INTO orders (order_number, customer_number)
VALUES ('2', '2')
INSERT INTO orders (order_number, customer_number)
VALUES ('3', '3')
INSERT INTO orders (order_number, customer_number)
VALUES ('4', '3');

SELECT customer_number
FROM orders
GROUP BY customer_number
ORDER BY count(*) DESC
LIMIT 1