 create database CustomerInfo
use CustomerInfo

-- create customer table  
create table CustomerTable(
Customer_ID int identity(1,1) primary key,
Customer_Name varchar(200),
PhoneNumber bigint,
Address varchar(200)
);

--insert values
insert into Customertable values
('Shivani',8456203491,'Pune'),
('Rohit',9301295824,'Mumbai'),
('Shubham',8604832194,'Nagpur'),
('Prajakta',9482104732,'Pune')


