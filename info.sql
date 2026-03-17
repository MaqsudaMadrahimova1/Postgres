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



create database Fruit;

create table if not exists Fruit (
    id serial primary key,
    fruit_name varchar (50),
    origin_country varchar (50),
    expiry_date date,
    price int (10)
);

alter table Fruit rename column price to price1;

alter table Fruit add column weight int(100);

alter table Fruit alter column weight type bigint;

alter table Fruit drop column weight;

alter table Fruit rename to Fruit1;


insert into  Fruit1 (fruit_name, origin_country1, expiry_date, price) 
values ('Anor', 'Uzbekistan', '2026-05-20', 15000);

select * from Fruit1;

select * from Fruit1 where price > 10000;

UPDATE Fruit1 
SET price = 12000 
WHERE fruit_name = 'Anor';

DELETE FROM Fruit1 
WHERE fruit_name = 'Anor';



create database Animal;

create table if  not exists Animal (
    id serial primary key,
    animal_name varchar(50),
    species varchar(50),
    age int(200),
    price int
);


alter table animal rename column species to animal_type;


alter table animal add column weight int;


alter table animal alter column weight type bigint;


alter table animal drop column weight;


alter table animal rename to animal1;

insert into animal1 (animal_name, animal_type, age, price) 
values ('Ot', 'Sutemizuvchi', 3, 12000000);

select * from animal1;

select * from animal1 where price > 5000000;

update animal1 
set age = 4 
where animal_name = 'Ot';

delete from animal1 
where animal_name = 'Ot';