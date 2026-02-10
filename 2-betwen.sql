--between
--normal şartlarda
select title,length from film
where length>=90 and length<=120;


--betweeen ile / verilen değerler otomatikmen dahil edilir yani 90 dahil 120 dahi demektir.
select title,length from film
where length between 90 and 120;

--between ile not ı kullanma / tüm verilerden 90 ve 120 arasındaki uzunlukta olanları çıkarıp diğerlerini getiriyor.
--yani 90 dan daha küçük 120 den büyükleri getirir
select title,length from film
where length not between 90 and 120; -- bunun normal karşılığı length < 90 or length >120 dir

select title,length,rental_rate,replacement_cost from film
where (rental_rate between 2 and 4) and (replacement_cost between 10 and 20) ;

---IN kullanımı
---Örneğin uzunluğu 40 dk olana 50 dk 60 dk oalna bakmak istiyoruz
select * from film
where length in(40,50,60);

--filmin replacement cost
select * from film
where replacement_cost in(10.99,12.99,16.99);

--NOT IN ile kullanımı / bunlar haricindekileri getir demek
select * from film
where replacement_cost not in(10.99,12.99,16.99);



