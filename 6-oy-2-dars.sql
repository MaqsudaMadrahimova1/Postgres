create database talabalar;

create table if not exists talabalar(
    id serial primary key,
    name varchar not null,
    birth_date date not null,
    gender varchar(10) not null,
    grade int not null,
    shahar varchar(50) not null,
    address text not null
);
select * from talabalar
LIMIT 10 OFFSET 5;


SELECT * FROM talabalar ORDER BY grade DESC;

SELECT * FROM talabalar ORDER BY grade ASC;

create table if not exists kurslar(
    id serial primary key,
    kurs_nomi varchar not null,
    davomiyligi int not null,
    narxi int not null
);
