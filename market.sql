create table promos (
	id serial primary key,
	name varchar(50) not null,
	discount int not null
);

create table product (
	id serial primary key,
	created_at timestamp default current_timestamp not null,
	update_at timestamp,
	name varchar(100) not null,
	promo_id int references promos(id),
	price int not null
);

insert into promos(name,discount) values 
('Soft Opening',10000), ('Gajian', 5000), ('Lebaran Haji', 15000);

insert into product(name,promo_id,price) values 
('Tea', null, 10000),('Coffe',1,12000),('Cake',1,22000),('Fried Rice',2,15000);

--join
select prd.name, prd.price, pro.name, pro.discount 
from product prd
join promos pro on prd.promo_id  = pro.id;

--left
select prd.name, prd.price, pro.name, pro.discount 
from product prd
left join promos pro on prd.promo_id  = pro.id;

--Right
select prd.name, prd.price, pro.name, pro.discount 
from product prd
right join promos pro on prd.promo_id  = pro.id;

--coalesce
select prd.name, (prd.price - coalesce(pro.discount,0)) as "sale price"
from product prd
left join promos pro on prd.promo_id  = pro.id;


select sum(price) as "total harga" from product;
select sum(price) as "total harga" from product 
where promo_id is not null;
-- agregate
select promo_id, sum(price) as "total harga" 
from product(pricet group by promo_id;
-- average
select promo_id, avg(price) as "rata-rata harga" 
from product 
group by promo_id;
-- having
select promo_id, avg(price) as "rata-rata harga" 
from product 
group by promo_id 
having avg(price) < 15000;
-- where, group, having
select promo_id, avg(price) as "rata-rata harga" 
from product 
where promo_id is not null 
group by promo_id 
having avg(price) < 16000;

-- laso meanmpilkan harga terkecil
select promo_id, min(price) as "minimal harga"
from product
where promo_id is not null
group by promo_id order by promo_id asc

-- laso menampilkan harga terbesar
select promo_id, max(price) as "Maksimal harga"
from product 
where promo_id is not null
group by promo_id order by promo_id desc


select pro.name as "promo_code", min(prd.price) as "harga_rendah"
from product prd
join promos pro on prd.promo_id = pro.id
group by pro.name



