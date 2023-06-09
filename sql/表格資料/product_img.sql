CREATE DATABASE  IF NOT EXISTS `product_search`;
Use product_search;

DROP TABLE IF EXISTS product_img;
create table product_img(
	pdid varchar(4),
    imgurl varchar(100),
    class varchar(20)
);

insert into product_img value ("P001","images/yi/apple/i11/IMG_3458.png","i11");
insert into product_img value ("P002","images/yi/apple/i12/IMG_3446.png","i12");
insert into product_img value ("P003","images/yi/apple/i13/IMG_3451.png","i13");
insert into product_img value ("P004","images/yi/apple/i14/IMG_3446.png","i14");
insert into product_img value ("P005","images/yi/OPPO/Find N2 flip/000-removebg-preview.png","Find_N2_flip");
insert into product_img value ("P006","images/yi/OPPO/Reno8/IMG_3471-removebg-preview.png","Reno8");
insert into product_img value ("P007","images/yi/OPPO/Reno8 T/IMG_3473-removebg-preview.png","Reno8t");
insert into product_img value ("P008","images/yi/OPPO/Reno8 Z/IMG_3477-removebg-preview.png","Reno8z");
insert into product_img value ("P009","images/yi/Sony/1IV/IMG_3491-removebg-preview.png","1IV");
insert into product_img value ("P010","images/yi/Sony/1V/IMG_3482-removebg-preview.png","1V");
insert into product_img value ("P011","images/yi/Sony/10III/IMG_3488-removebg-preview.png","10III");
insert into product_img value ("P012","images/yi/Sony/10V/IMG_3484-removebg-preview.png","10V");
insert into product_img value ("P013","images/yi/Pixel/6a/IMG_3511-removebg-preview.png","6a");
insert into product_img value ("P014","images/yi/Pixel/7/003-removebg-preview.png","7");
insert into product_img value ("P015","images/yi/Pixel/7 pro/002-removebg-preview.png","7pro");
insert into product_img value ("P016","images/yi/Pixel/7a/001-removebg-preview.png","7a");


DROP view IF EXISTS pro_detail;
CREATE view pro_detail as 
select products.pdid,products.pdkind,sum(products_color.stock) as total,products.pdname,MIN(product_img.imgurl),min(product_img.class)
from products,product_img,products_color
where (products.pdid=product_img.pdid)
and (product_img.pdid=products_color.pdid)
group by pdid;

drop view if exists product_name;
CREATE VIEW product_name AS
SELECT products.pdname AS phone,product_img.class AS p_name FROM products,product_img WHERE products.pdid = product_img.pdid ;