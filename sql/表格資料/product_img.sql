CREATE DATABASE  IF NOT EXISTS `product_search`;
Use product_search;

DROP TABLE IF EXISTS product_img;
create table product_img(
	pdid varchar(4),
    imgurl varchar(40),
    class varchar(20)
);

insert into product_img value ("P001","images/yi/apple/i11/IMG_3458.png","i11");
insert into product_img value ("P002","images/yi/apple/i12/IMG_3446.png","i12");
insert into product_img value ("P003","images/yi/apple/i13/IMG_3451.png","i13");
insert into product_img value ("P004","images/yi/apple/i14/IMG_3446.png","i14");
insert into product_img value ("P005","","");
insert into product_img value ("P006","","");
insert into product_img value ("P007","","");
insert into product_img value ("P008","","");
insert into product_img value ("P009","","");
insert into product_img value ("P010","","");
insert into product_img value ("P011","","");
insert into product_img value ("P012","","");
insert into product_img value ("P013","","");
insert into product_img value ("P014","","");
insert into product_img value ("P015","","");
insert into product_img value ("P016","","");


DROP view IF EXISTS pro_detail;
CREATE view pro_detail as 
select products.pdid,products.pdkind,products.pdname,product_img.imgurl,product_img.class
from products,product_img
where (products.pdid=product_img.pdid);