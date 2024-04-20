--create database CustomerOrderDB;
use CustomerOrderDB;

--create table customers(
--	customerID int primary key,
--	customerName varchar(20),
--	email varchar(20)
--);

--create table products(
--	productID int primary key,
--	productName varchar(20),
--	price int
--);
--create table orders(
--	orderID int primary key,
--	customerID int foreign key(customerID) references customers(customerID),
--	productID int foreign key(productID) references products(productID),
--	quanity int
-- );

--INSERT INTO customers (customerID, customerName, email) 
--VALUES 
--(1, 'John Doe', 'john@example.com'),
--(2, 'Jane Smith', 'jane@example.com'),
--(3, 'Michael Johnson', 'michael@example.com');

--INSERT INTO products (productID, productName, price) 
--VALUES 
--(1, 'Widget', 10),
--(2, 'Gadget', 20),
--(3, 'Thingamajig', 15);


--INSERT INTO orders (orderID, customerID, productID, quanity) 
--VALUES 
--(101, 1, 1, 2),
--(102, 2, 3, 1),
--(103, 3, 2, 3),
--(104, 3, null, 3),
--(105, 3, 1, 3),
--(106, null, 2, 3),
--(107, 1, 3, 4),
--(108, 3, null, 3),
--(109, null, null, 9),
--(110, null, 2, 3);

--select * from customers;
--select * from products;
--select * from orders;

select o1.orderID, customerName, productName, o1.quanity as quantity
from orders as o1 full join orders as o2 on o1.orderID = o2.orderID
full outer join customers on o1.customerID = customers.customerID
full outer join products on o1.productID = products.productID;