Create table Stud(
id int,
fullname varchar(20),
)

--Add a new colum on table
alter table stud add city varchar(25)
--modify the size of data type
alter table stud alter column city varchar(35)
-- drop a column from a table
alter table stud drop column city

drop table stud




