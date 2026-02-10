--DISTINCT - COUNT
-- DISTINCT : Bir sütundaki tekil, unique ifadeleri görmek için disting kullanılır. Yani fiyatı 12.99 olan kaç film var gibi mesela
select * from film;

-- rental_rate alanına göre distinc yaptığımızda kaç adet veriye göre içerede veri barındırdığını görürüz
select distinct rental_rate from film;

--film tablomuzdaki filmler kaç adet fiyata göre var 
select distinct replacement_cost,rental_rate from film;

--farklı örnek
select distinct country from country;

--**DISTINT anahtar kelimesi çoğunlukla COUNT ile kullanılır. ** Count iise distinct ile aldığımız verilerin sayısını döner
--örnek : il ismi penelope olan kullanıcımız var
select * from actor
where first_name ='Penelope';

-- şimdi bu verilerin sayısını almak istersek. Count bir fonksiyondur ve parantez açılır içine * koymak yerine kolon da yazarız
select count(*) from actor
where first_name ='Penelope';
-- örnek devam : Baş harfi A ile başlayanların sayısını alalım
select count(*) from actor
where first_name like 'A%';

--kolon kullanımı
select count(first_name) from actor
where first_name like 'A%';

--tüm actor tablosunda kaç veri avr
select * from actor;
select count(*) from actor;
--şimdi distinc ile unie olan verilerins ayını görelim
select  distinct first_name from actor; -- burada birbirnden farkklı kaç isim var dedik
--şimdi bunu distinc ile yakalayalım ve sayı olarak versin
select  count(distinct first_name) from actor; -- bu şekilde distinct i count fonksiyonu içine alırız

--bir örnek daha
select distinct length from film;
select count(distinct length) from film;








