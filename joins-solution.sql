--Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON addresses.customer_id = customers.id;


--Get all orders and their line items.
SELECT * FROM orders JOIN line_items ON line_items.order_id = orders.id;


--Which warehouses have cheetos?
SELECT warehouse.warehouse FROM products JOIN warehouse_product ON products.id = product_id 
JOIN warehouse ON warehouse_id = warehouse.id WHERE products.description ILIKE '%cheetos%';


--Which warehouses have diet pepsi?
SELECT warehouse.warehouse FROM products JOIN warehouse_product ON products.id = product_id 
JOIN warehouse ON warehouse_id = warehouse.id WHERE products.description ILIKE '%diet pepsi%';


--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT first_name,count(addresses.customer_id) 
FROM customers 
JOIN addresses ON customers.id= addresses.customer_id 
JOIN orders ON address_id = addresses.id 
GROUP BY customers.id;

--How many customers do we have?
SELECT count(id) FROM customers;


--How many products do we carry?
SELECT count(id) FROM products;


--What is the total available on-hand quantity of diet pepsi?
SELECT warehouse.warehouse FROM products JOIN warehouse_product ON products.id = product_id 
JOIN warehouse ON warehouse_id = warehouse.id WHERE products.description ILIKE '%diet pepsi%';