create database Customers;

create table customars(
    id serial primary key,
    name varchar not null,
    phone varchar(20) not null
);
create table products(
    id serial primary key,
    product_name varchar not null,
    price varchar(20) not null,
);
create table orders(
    id serial primary key,
    customar_id int,
    products_id int,
    quantity int not null,
    constraint fk_customar foreign key(customar_id) references customers(id) on delete cascade on update cascade,
    constraint fk_product foreign key(products_id) references products(id) on delete cascade on update cascade
);
 
