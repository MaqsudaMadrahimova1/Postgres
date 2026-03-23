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

select birth_date AS tugilgan_kun
from talabalar;

select shahar, count(*) AS user_count
from talabalar
GROUP BY shahar
HAVING count(*) > 1;


SELECT name FROM talabalar
UNION
SELECT name FROM kurslar;


SELECT *
FROM talabalar
WHERE score BETWEEN 70 AND 90 OR city = 'Tashkent';

SELECT *FROM students
WHERE name ILIKE 'sh%' OR name ILIKE '%sh';

SELECT * FROM talabalar ORDER BY grade DESC;

SELECT * FROM talabalar ORDER BY grade ASC;

create table if not exists kurslar(
    id serial primary key,
    kurs_nomi varchar not null,
    davomiyligi int not null,
    narxi int not null
);
