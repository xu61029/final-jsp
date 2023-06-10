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
insert into orders value (2,3);
insert into orders value (3,2);

insert into orders_detail value (1,"P002",2);
insert into orders_detail value (1,"P003",1);
insert into orders_detail value (2,"P004",1);
insert into orders_detail value (3,"P006",1);
insert into orders_detail value (3,"P014",1);