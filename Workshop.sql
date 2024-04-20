--create database Workshop;

use Workshop;

create table Customers(
	customerId int primary key,
	customerName varchar(20),
	email varchar(30)
);

create table Products(
	productID int primary key, 
	productName varchar(20),
	price int
);

create table Orders(
	orderId int primary key,
	customerId int Foreign key(customerId) references Customers(customerId),
	productId int Foreign key(productId) references Products(productId),
	Quantity int 
);

insert into Customers 
values(1,'Thanay','thanaykumaryr@gmail.com'),
(2,'Lakshmi','lakshmi@gmail.com'),
(3,'Yashwant','yash@gmail.com'),
(4,'Saikat','saikat@gmail.com');

insert into Products values (1,'mobile',15000),(2,'soap',30),(3,'biscut',10),(4,'keybord',1500);

insert into Orders values (1,1,3,2),(2,2,null,0),(3,null,4,34),(4,null,null,74);

select * from Customers;
select * from Products;
select * from Orders;

insert into Orders values (5,2,5,90),(6,6,1,78),(7,8,9,89);

select o1.orderID, customerName, productName, o1.Quantity from Orders as o1
full outer join Orders as o2 on o1.orderId = o2.orderId
full outer join Customers on o1.customerId = Customers.customerId
full outer join Products on o1.productId = Products.productID

use EmployeeDB1;

select * from employee;