--create database collegedb;
use collegedb;

--create table branch(branchid int primary key,branchname varchar(20),hod varchar(10));
--create table student(usn int primary key, name varchar(20),address varchar(20), bid int, FOREIGN KEY (bid) REFERENCES BRANCH(branchid));
--create table author(authorid int primary key,authername varchar(20),country varchar(10),age int);

--create table book(bookid int primary key,
--                  bookname varchar(20),
--				  authorid int,
--				  FOREIGN KEY (authorid) REFERENCES author(authorid),
--				  publisher varchar(20),
--				  branchid int,
--				  foreign key(branchid) references branch(branchid));
--create table borrow(usn int,
--                    foreign key(usn) references student(usn),
--					bookid int,
--					foreign key(bookid) references book(bookid),
--					borrowed_date date);

--insert into branch values(01,'mca','sudha');
--insert into branch values(02,'cs','ragu');
--insert into branch values(03,'maths','hari');
--insert into branch values(04,'pysics','hema');
--insert into branch values(05,'chemistry','aush');

--insert into student values(1002,'supritha','kopal','03');
--insert into student values(1003,'lalitha','kgf','03');
--insert into student values(1004,'ganashree','sira','01');
--insert into student values(1005,'pragna','mangalore','01');
--insert into student values(1001,'thanu','tumkur','01');

--insert into author values(101,'blm','indea',50);
--insert into author values(102,'jhon','america',40);
--insert into author values(103,'mery','londan',40);
--insert into author values(104,'harikrishna','INDEA',35);
--insert into author values(105,'sudha','INDEA',55);

--insert into book values(0101,'java',101,'thanish',01);
--insert into book values(0102,'c#',102,'sudha',02);
--insert into book values(0103,'gkranganath',103,'manish',03);
--insert into book values(0104,'mordernphysics',104,'sudha',04);
--insert into book values(0105,'chemistry',105,'manish',05);

--insert into borrow values(1001,0101,'2001-07-29');
--insert into borrow values(1002,0102,'2001-04-11');
--insert into borrow values(1003,0103,'2002-05-23');
--insert into borrow values(1004,0104,'2005-08-03');
--insert into borrow values(1005,0105,'2006-05-10');

select * from branch;
select * from student;
select * from book;
select * from borrow;
select * from author;
select distinct publisher from book;

select count(distinct publisher) as publisherCount from book;

select * from author where age>40;

select authername from author where age between 35 and 40;

select authername from author where country in('indea','america');

select * from author order by age;

select authername from author order by age desc;

select * from borrow where borrowed_date like '2001%';

select * from author where not country='indea';

select * from branch inner join student on student.bid=branch.branchid;

select * from branch b left outer join student s on s.bid=b.branchid;

select * from student s left outer join branch b on s.bid=b.branchid;

select * from student s right outer join branch b  on s.bid=b.branchid;

select * from branch b full outer join student s  on s.bid=b.branchid;

select * from branch cross join student;

select * from branch b,student s where b.branchid=s.bid; 

select * from branch b,student s where b.branchid>s.bid;

select * from author a1,author a2 where a1.country=a1.country and a1.authername='sudha';