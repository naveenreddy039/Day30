--#UC1
create database payroll_service
go

--#UC2
create table employee_payroll
(
	Id int Not null identity,
	Name varchar(Max),
	startDate datetime ,
	salary Money
)

--#UC3 CRUD Operation
insert into employee_payroll(name,startDate,salary)
values('naveen',GETDate(),20000)

insert into employee_payroll(name,startDate,salary)
values('dinesh',GETDate(),35000)

insert into employee_payroll(name,startDate,salary)
values('Ravi',GETDate(),45000)

--#UC4
select * from employee_payroll

--#UC5
select salary from employee_payroll
where name='dinesh'

--#UC6
Alter table employee_payroll 
ADD Gender varchar(Max)

update employee_payroll
set Gender='M'
where Id=3

--#UC7
select SUM(salary) as SumOfSalary from employee_payroll

select AVG(salary) as AVGOfSalary from employee_payroll

select MIN(salary) as MinSalary from employee_payroll

select MAX(salary) as MaxSalary from employee_payroll

select count(Id) from employee_payroll where Gender='M'

select count(Id),Gender from employee_payroll GROUP BY Gender

select * from employee_payroll
