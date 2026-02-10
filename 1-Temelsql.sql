select title from film;

select * from film;

select first_name, last_name from actor;

select * from film where replacement_cost=14.99;

select * 
from film 
where rental_rate=0.99;

select title, length 
from film 
where rental_rate=0.99;

select * from actor
where first_name='Penelope';

select * from film
where length>90;

select * from film
where rental_rate<=1;

select * from film
where rental_rate<>0.99;

select * from film
where rental_rate!=4.99;

--Çoğul koşul and or operatörleri
select first_name,last_name from actor
where first_name='Penelope' and last_name='Monroe';

--or
select first_name,last_name from actor
where first_name='Penelope' or last_name='Monroex'; -- koşullardan biri doğru olduğu için gelir

select f.rental_rate, f.length, f.title from film f
where rental_rate =4.99 and length>90;

select f.rental_rate, f.length, f.title,f.rental_duration, f.replacement_cost from film f
where rental_rate =4.99 and rental_duration=3 and replacement_cost>3;

--not anahtar kelimesi koşuld abelirtilen olmayanları listelemek için
select * from film
where not rental_rate=4.99;

--not operatörünü bu şekilde tüm and koşullarada not uygularız
select * from film
where not (rental_rate=4.99 and replacement_cost=20.99); --and dediğimiz için bu iki koşuluda sağlayanları alma dedik

select * from film
where not(not (rental_rate=4.99 and replacement_cost=20.99)); -- bu şekilde de koşulun tam tersini yapmış olduk. Yani değilin değili ilk koşulun tam tersi oluyor

select * from film
where not length>110; --length i 110 dan küçük olanlar

select * from film
where not not length>110; -- burada iki not operatörü olunca yine yuka	rıdaki gibi ikisi birbirini götürüyor ve uzunluğu 110 da yukarıdaolanları getiriyor.

--and or birlikte kullanımı
select * from actor
where first_name='Penelope' and last_name='Monroe' or first_name='Joe' and last_name='Swankx';
--or dan sonra yeni bir şart koşar ve onlarıda getirir, sonra and deyip or a bir şart daha verirsek ve veri tutarsa onuda getirir

--başka bir örnek
select * from actor
where first_name='Penelope' and last_name='Monroe' and last_name='Swankx' or first_name='Joe';
--and ler doğru olmadığı için false döner or dan sonra yeni bir query başlıyor gibi ordan sonraki koşullar auyan veriler gelir


















