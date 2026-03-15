create database Car;

create table if not exists Car (
    id serial primary key,
    car_name varchar (50),
    brend varchar (50),
    color varchar (50),
    price int (10)
);

alter table Car rename column brend to brend1;

alter table Car add column speed int;

alter table Car alter column speed type bigint;

alter table Car drop column speed;

alter table Car rename to Car1;

insert into Car (car_name, brend, color, price) 
values ('L9', 'Li Auto', 'Purple', 65000);

select*from Car;

select*from Car Where price > 20000;

update Car 
set price = 62000 
where car_name = 'L8';

delete from  Car 
where car_name = 'L9';