USE db2;
CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);
INSERT INTO orders VALUES
(101, 'Arjun Kumar', 'Laptop', 2, 55000),
(102, 'Sneha Reddy', 'Mobile Phone', 1, 28000),
(103, 'Rahul Sharma', 'Headphones', 3, 4500),
(104, 'Priya Singh', 'Keyboard', 2, 3200),
(105, 'Vikram Rao', 'Monitor', 1, 18500),
(106, 'Ananya Das', 'Mouse', 4, 1200),
(107, 'Kiran Patel', 'Tablet', 1, 22000),
(108, 'Meghana Devi', 'Printer', 2, 9500),
(109, 'Rohit Verma', 'Webcam', 3, 2800),
(110, 'Divya Nair', 'USB Drive', 5, 900);
SELECT *
FROM orders
WHERE purch_amt > 2000;
SELECT *
FROM orders
WHERE ord_date='2012-09-10';
SELECT *
FROM orders
WHERE salesman_id=5001;
SELECT *
FROM orders
ORDER BY purch_amt DESC;
SELECT *
FROM orders
ORDER BY ord_date;
SELECT SUM(purch_amt) AS total_revenue
FROM orders;
SELECT AVG(purch_amt) AS average_order
FROM orders;
SELECT MAX(purch_amt) AS highest_order
FROM orders;
SELECT MIN(purch_amt) AS lowest_order
FROM orders;
SELECT COUNT(*) AS total_orders
FROM orders;
SELECT salesman_id,
       SUM(purch_amt) AS total_sales
FROM orders
GROUP BY salesman_id;
SELECT customer_id,
       SUM(purch_amt) AS total_purchase
FROM orders
GROUP BY customer_id;
SELECT customer_id,
       MAX(purch_amt) AS highest_purchase
FROM orders
GROUP BY customer_id;
SELECT salesman_id,
       SUM(purch_amt) AS total_sales
FROM orders
GROUP BY salesman_id
HAVING SUM(purch_amt) > 3000;
SELECT customer_id,
       SUM(purch_amt) AS total_purchase
FROM orders
GROUP BY customer_id
HAVING SUM(purch_amt) > 2500;
SELECT customer_id,
       SUM(purch_amt) AS total_purchase
FROM orders
GROUP BY customer_id
HAVING SUM(purch_amt) > 1000
ORDER BY total_purchase DESC;
SELECT customer_id,
       MAX(purch_amt) AS max_purchase
FROM orders
GROUP BY customer_id
HAVING MAX(purch_amt) BETWEEN 2000 AND 6000;
SELECT salesman_id,
       COUNT(*) AS total_orders
FROM orders
GROUP BY salesman_id
HAVING COUNT(*) >= 2;
SELECT ord_date,
       MAX(purch_amt) AS highest_purchase
FROM orders
GROUP BY ord_date
HAVING MAX(purch_amt) > 2000;