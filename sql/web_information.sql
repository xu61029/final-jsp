DROP DATABASE IF EXISTS dbphone;

CREATE DATABASE dbphone CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE dbphone;

create table members(
	mid int(8) not null unique,
    username text not null,
    passwords text not null,
    name_ text not null,
    tel text not null,
    addr text not null,
    email text not null,
    gender text,
    birth date,
    primary key (mid)
);

create table products(
	pid int(8) not null unique,
    product_name text not null,
    product_note text not null,
    product_price int(6) not null,
    primary key (pid)
);

create table order_from(
	oid int(8) not null unique,
    mid int(8) not null unique,
    pid int(8) not null unique,
    many integer ,
    payway text not null,
    primary key (oid)
);

create table message(
	msgid int(8) not null unique,
    mid int(8) not null unique,
    msg_title text not null,
    msg_content text not null,
    msg_date text not null,
    primary key (msgid)
);

DROP VIEW IF EXISTS orderdetail_view;
CREATE VIEW orderdetail_view AS 
select oid,members.mid,products.pid,
sum(order_from.many*products.product_price) as price,
order_from.payway,
members.name_,members.tel,members.addr 
from order_from
join members on (order_from.mid=members.mid)
join products on (order_from.pid=products.pid)
group by oid;