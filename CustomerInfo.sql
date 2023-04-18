 create database CustomerInfo
use CustomerInfo

-- create customer table  
create table CustomerTable(
Customer_ID int identity(1,1) primary key,
Customer_Name varchar(200),
PhoneNumber bigint,
Address varchar(200)
);
