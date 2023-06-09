CREATE DATABASE  IF NOT EXISTS `product_search` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `product_search`;

DROP TABLE IF EXISTS orders;
create table orders (
	oid int not null AUTO_INCREMENT,
    mid int,
    primary key (oid)
);

DROP TABLE IF EXISTS orders_detail;
create table orders_detail (
	oid varchar(6) ,
    pdid varchar(4),
    numbers int
);

insert into orders value (1,2);

insert into orders_detail value (1,"P002",2);
insert into orders_detail value (1,"P003",1);