--DML

create table Person1(
personid int primary key identity(1,1),
name varchar(20)not null,
city varchar(20)not null
)

insert into person1 values ('amol','mumbai')
insert into person1 values ('ajay','pune')
insert into person1 (name,city) values('tushar','delhi')

update person1 set city='bhopal' where personid=1
update person1 set city='goa' where personid=2


select * from person1

select name,city from person1
select * from person1 where name like'a%'

