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


-- add columns in table
alter table CustomerTable add Country varchar(200),
Salary money,
Pincode int

-- update values
update CustomerTable set Country='Canada' where Customer_Name='Shivani'
update CustomerTable set Country='India' where Customer_ID in (2,3,4)
update CustomerTable set Salary=50000 where Customer_ID in (1,3)
update CustomerTable set Salary=30000 where Customer_ID in(2,4)
update CustomerTable set Pincode=892341 where Customer_Name='Rohit'
update CustomerTable set Pincode=440321 where Customer_Name='Prajakta'

-- Show number of customers in each country 
select Count(*) as NoOfCustomers,Country from CustomerTable group by Country

--Show Max salary from table
select Max(Salary) as MaximumSalary from CustomerTable
--or with showing all columns
select * from CustomerTable where Salary=(select Max(salary) as MaximumSalary from CustomerTable )

--Show Min salary
select Min(Salary) as Minimumsalary from CustomerTable
select * from CustomerTable where Salary=(select Min(Salary) as Minimumsalary from CustomerTable)

-- show Total salary
select Sum(Salary) as TotalSalary from CustomerTable

-- Show Avg salary
select Avg(Salary) as AverageSalary from CustomerTable