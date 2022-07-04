USE leetcode;

START TRANSACTION;
SELECT product_id FROM Products
WHERE low_fats='Y' AND recyclable='Y';