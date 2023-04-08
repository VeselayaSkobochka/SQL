DROP DATABASE IF EXISTS devilery;
CREATE DATABASE devilery;
USE devilery;

DROP TABLE IF EXISTS courier;
CREATE TABLE courier
(courier_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(35) NOT NULL,
phone VARCHAR(20) NOT null);

INSERT INTO courier(courier_id,firstname, lastname, phone) VALUES
(1,'John', 'Rython', '894086550954'),
(2,'Kate', 'Looran', '894087430146'),
(3,'Bob', 'Kolaris', '894081077798'),
(4,'Michael', 'Frontal', '894085665516'),
(5,'John', 'Rython', '894086550954'),
(6,'Kate', 'Looran', '894087430146'),
(7,'Bob', 'Kolaris', '894081077798'),
(8,'Michael', 'Frontal', '894085665516'),
(9,'John', 'Rython', '894086550954'),
(10,'Kate', 'Looran', '894087430146'),
(11,'Bob', 'Kolaris', '894081077798'),
(12,'Michael', 'Frontal', '894085665516'),
(13,'John', 'Rython', '894086550954'),
(14,'Kate', 'Looran', '894087430146'),
(15,'Bob', 'Kolaris', '894081077798');

DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(35) NOT NULL,
phone VARCHAR(20) NOT NULL,
street VARCHAR(25) NOT NULL,
house INT NOT NULL,
apartment INT NOT NULL);

INSERT INTO customers(firstname, lastname, phone, street, house, apartment) VALUES
('Penny', 'Smith', '+ 1 416 572 3771',  'First Avenue', 1, 10),
('Randy', 'Brown', '+ 1 416 568 8452',  'Spring St', 2, 35),
('Oliver', 'Thompson', '+ 1 416 782 5648',  'Five Avenue', 77, 14),
('James', 'Twist', '+ 1 416 752 1224',  'Corn St', 24, 89),
('Hellen', 'Bellora', '+ 1 416 555 4568',  'First Avenue', 11, 85),
('Kate', 'Evans', '+ 1 416 321 3211',  'Spring St', 123, 52),
('Jennifer', 'Radriges', '+ 1 416 321 1232', 'Roll St', 76, 44),
('Mario', 'Gordon', '+ 1 416 122 4554',  'Five Avenue', 21, 91),
('Bella', 'Lorenson', '+ 1 416 758 1667',  'Green Avenue', 23, 67),
('Erica', 'Visputchu', '+ 1 416 765 8582',  'First Avenue', 62, 44),
('Henry', 'Smith', '+ 1 416 657 5528',  'Brown St', 15, 56),
('Oscar', 'Rild', '+ 1 416 624 3643',  'First Avenue', 5, 13),
('William', 'Frankston', '+ 1 416 303 8181',  'Cascade Rd', 18, 88),
('Peter', 'Hall', '+ 1 416 466 7562', 'Cascade Rd', 17, 7),
('Ada', 'Watson', '+ 1 416 114 7812',  'Elma St', 18, 9);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
customer_id INT NOT NULL,
date_get TIMESTAMP NOT NULL,  
FOREIGN KEY (customer_id) REFERENCES customers (customer_id));

INSERT INTO orders(customer_id, date_get) VALUES
(1, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(2, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(3, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(4, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(5, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(6, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(7, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(8, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(9, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(10, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(11, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(12, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(13, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(14, NOW());
INSERT INTO orders(customer_id, date_get) VALUES
(15, NOW());

DROP TABLE IF EXISTS delivery;
CREATE TABLE delivery
(delivery_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_id INT UNIQUE NOT NULL,
courier_id INT NOT NULL,
arrived TIMESTAMP NOT NULL,  
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (courier_id) REFERENCES courier(courier_id));

INSERT INTO delivery(delivery_id,order_id,courier_id,arrived) VALUES
(1, 1, 1, NOW()),
(2, 2, 2, NOW()),
(3, 3, 3, NOW()),
(4, 4, 4, NOW()),
(5, 5, 5, NOW()),
(6, 6, 6, NOW()),
(7, 7, 7, NOW()), 
(8, 8, 8, NOW()),
(9, 9, 9, NOW()),  
(10, 10, 10, NOW()),
(11, 11, 11, NOW()),
(12, 12, 12, NOW()), 
(13, 13, 13, NOW()),
(14, 14, 13, NOW()),
(15, 15, 15, NOW());

DROP TABLE IF EXISTS products;
CREATE TABLE products
(product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(80) NOT NULL,
price FLOAT NOT NULL);

INSERT INTO products(name, price) VALUES
('GOJIRA ROLL', 12.6),
('VIVA LAS VEGAS ROLL', 15.7),
('FUTOMAKI', 14.4),
('TOOTSY MAKI', 14.1),
('ZONIE ROLL', 15.5),
('NUTTY GRILLED SALAD', 10.5),
('SASHIMI SALAD', 12.0),
('SUNNY TEA', 3.75),
('COFFEE', 4.1),
('MINERAL WATER', 2.0);

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products
(order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id));

INSERT INTO orders_products VALUES
(1, 1, 2), (1, 4, 1), (1, 10, 1),
(2, 4, 1), (2, 5, 1),
(3, 3, 1),
(4, 7, 2), 
(5, 2, 1), (5, 3, 1),
(6, 8, 3),
(7, 1, 1), (7, 6, 4),
(8, 1, 2),
(9, 2, 1), (9, 3, 1),
(10, 1, 2), (10, 2, 1),
(12, 5, 2), (12, 10, 1),
(13, 4, 2),
(14, 5, 1),
(15, 8, 1), (15, 7, 2);

