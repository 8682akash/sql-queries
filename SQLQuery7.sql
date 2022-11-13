--joins


--select * from employee

create table dept(
deptid int primary key identity(1,1),
deptname varchar(20)
)


create table employee(
id int primary key identity(1,1),
empname varchar(20),
city varchar(20),
salary decimal,
deptid int,
constraint fk_employee_dept foreign key(deptid) references dept(deptid) 
)
insert into dept values('HR')
insert into dept values('Development')
insert into dept values('Testing')
insert into dept values('Sales')

insert into employee values('Amol','Mumbai',75000,4)
insert into employee values('Chetan','Pune',35000,1)
insert into employee values('Pratik','Mumbai',32000,2)
insert into employee values('Rahul','Pune',45000,3)
insert into employee values('Rohan','Nagpur',25000,1)
insert into employee values('Suraj','Nagpur',37000,2)
insert into employee values('Rajesh','Nashik',23000,3)
insert into employee values('Kishor','Mumbai',78000,2)
insert into employee values('Ajay','Pune',21000,4)
insert into employee values('Tushar','Delhi',56000,4)

alter table employee add managerid int
update employee set managerid=1 where id in(2,3)
update employee set managerid=6 where id in(4,5)
update employee set managerid=8 where id in(7,9,10)
update employee set deptid=null where id=10

select e.*,d.deptname  from employee e
inner join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employee e
left join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employee e
right join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employee e
full join dept d on d.deptid=e.deptid


Select * from employee where deptid =(select deptid from dept where deptname='HR')

select * from employee where salary=
(select max(salary) from employee)

select * from employee where salary=(
select max(salary) from employee where salary <>
(
select max(salary) from employee
)
)

--display emp details whose salary is > avg salary of all emps
select * from employee where salary>(select AVG(salary) from employee)

-- display the emp who is taking higher salary than empid =5
select * from employee where salary>(select salary from employee where id=5)

-- display emp who have salary > avg salary of sales dept




select * from employee