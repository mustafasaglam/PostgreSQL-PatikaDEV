 --AGGREGATE Fonksiyonlar
--Örneğin fil tablomuzdaki filmlerin ortalama uzunluğu nedir?
-- Veya bu filmlerin ortalmaa satış fiyarı nedir gibi sorgular yapılabilir.
---en yüksek rental rate değeri veya en düşüğü nedir gibi
--- yani bu verileri bir araya getirip oradan veri agregate ediyoruz

select * from film;

select count(*) from film; --örneğğin film tablosunda kaç veri var. Yani bir çok veriden 1 sonuç çıkardık

--en yüksek replacement cost
select max(replacement_cost) from film;
--min rep cost
select min(replacement_cost) from film;
--rentalrate için
select max(rental_rate) from film;
select min(rental_rate) from film;

--filmlerin ortalması
select avg(length) from film;
-- virgülden sonrasını yuvarlamak için
select round(avg(length),3) from film;

--sum toplam
select sum(rental_rate) from film;

-- birden fazla sütun üzerinde egrrgate kullanma
select max(length), min(length),sum(replacement_cost) from film;
--en dakikaya sahip film rantel rate oranı 0.99 olan en uzun film
select  max(length) from film
where rental_rate=0.99;

select  max(length) from film
where rental_rate=2.99;

select  max(length) from film
where rental_rate in (0.99,2.99);

--rental rate sütununu da gösterelim :  aggregate fonksiyonlarda Birden fazla stün getirmek için sorgu sonunda o stünu grup by ile geçmek gerekir. Çünkü aggregate fonksiyonlar tek bir sonuç dönerken ilgili sonucu gruplar ama ekstra sütun göstermek istersek onu biz grup by a ekleriz
select  max(length),rental_rate from film
where rental_rate=0.99
group by rental_rate;

--her farklı rental rate değeri için o rental rate için en uzun film nedir deseydik

