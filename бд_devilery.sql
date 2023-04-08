DROP DATABASE IF EXISTS devilery;
CREATE DATABASE devilery;
USE devilery;

DROP TABLE IF EXISTS courier;
CREATE TABLE courier
(courier_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(35) NOT NULL,
phone VARCHAR(20) NOT null);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(35) NOT NULL,
phone VARCHAR(20) NOT NULL,
street VARCHAR(25) NOT NULL,
house INT NOT NULL,
apartment INT NOT NULL);


DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
customer_id INT NOT NULL,
date_get TIMESTAMP NOT NULL,  
FOREIGN KEY (customer_id) REFERENCES customers (customer_id));


DROP TABLE IF EXISTS delivery;
CREATE TABLE delivery
(delivery_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_id INT UNIQUE NOT NULL,
courier_id INT NOT NULL,
arrived TIMESTAMP UNIQUE,  
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (courier_id) REFERENCES courier(courier_id));

DROP TABLE IF EXISTS products;
CREATE TABLE products
(product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(80) NOT NULL,
price FLOAT NOT NULL);

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products
(order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id));

