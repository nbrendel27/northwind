1. SELECT * FROM customers;

2. SELECT DISTINCT country FROM customers;

3. SELECT * FROM customers WHERE customer_id LIKE 'BL%';

4. SELECT * FROM orders LIMIT 100;

5. SELECT * FROM customers WHERE postal_code IN ('1010', '3012', '12209', '05023');

6. SELECT * FROM orders WHERE ship_region <> 'null';

7. SELECT * FROM customers ORDER BY country, city;

8. INSERT INTO customers VALUES ('GRMCC', 'Grandmas Cookies', 'Grandma', 'Baker', '5677 Chocolate ln', 'Sweetston', NULL, '12209', 'Candyland', '(781) 222-2222', NULL);

9. UPDATE orders SET ship_region = 'EuroZone' WHERE ship_country = 'France'

10. SELECT * FROM order_details WHERE quantity = 1

11. SELECT AVG(quantity) FROM order_details;
SELECT MAX(quantity) FROM order_details;
SELECT MIN(quantity) FROM order_details;

12. SELECT AVG(quantity) FROM order_details GROUP BY order_id;
SELECT MAX(quantity) FROM order_details GROUP BY order_id;
SELECT MIN(quantity) FROM order_details GROUP BY order_id;

13. SELECT customer_id FROM orders WHERE order_id = '10290'

14. SELECT * FROM orders JOIN customers ON orders.customer_id = customers.customer_id;
SELECT * FROM orders LEFT JOIN customers ON orders.customer_id = customers.customer_id;
SELECT * FROM orders RIGHT JOIN customers ON orders.customer_id = customers.customer_id;

15. SELECT ship_city, ship_country FROM (SELECT * FROM orders JOIN customers ON orders.customer_id = customers.customer_id) WHERE city = 'London';

16.SELECT * FROM order_details 
	JOIN orders ON order_details.order_id = orders.order_id 
	JOIN products ON order_details.product_id = products.product_id 
	WHERE discontinued = 1;

17. SELECT * FROM employees WHERE reports_to IS null;

18. SELECT first_name, last_name FROM employees where reports_to = (SELECT employee_id FROM employees WHERE first_name = 'Andrew');

19. CREATE INDEX index_name ON customers (customer_id);



