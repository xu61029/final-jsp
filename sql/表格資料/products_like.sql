CREATE DATABASE  IF NOT EXISTS `product_search`;
Use product_search;

DROP TABLE IF EXISTS products_like;
create table products_like(
	mid int not null,
    pdid varchar(5)
);

insert into products_like value(2,"P005");
insert into products_like value(2,"P015");