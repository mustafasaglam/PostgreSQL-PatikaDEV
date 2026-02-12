--Group by - HAVINNG
select * from film;

--her bir uniqe rental_rate e değere karşılık gelen kaç tane  film var bulalım
select rental_rate,count(*) from film
group by rental_rate;

--rental rate e göre süresi en uzun filmi bulalım
select rental_rate,max(length) from film
group by rental_rate;

--rating e göre karşılık gelen kaç filmim var
select rating,count(*) from film
group by rating;

--replacement cost a karşılık gelen en kısa film, yani uzunluk değeri length
select replacement_cost,min(length) from film
group by replacement_cost;

--*** Bu sorgularda select alanına kolonu yazmasakda veri gelir ama mantığı hangi ne karşılık gelen değer ne diye yazıyoruz.

---Birden fazla sütüna göre gruplama
select replacement_cost,rental_rate,min(length) from film
group by replacement_cost, rental_rate;
--bu sorgu sonunda değerler group by de geçilen kolonların uniqe olan değerlerinin çarpımı kadardır. Örneğin replacement cost 21 tane gruplanmış hali rental rate de 3 21*3 63 olarak gelir

---Sıralama
select replacement_cost,rental_rate,min(length) from film
group by replacement_cost, rental_rate
order by replacement_cost;

-- birden fazla sütüna görede sıralayabilirz
select replacement_cost,rental_rate,min(length) from film
group by replacement_cost, rental_rate
order by replacement_cost,rental_rate desc;

--aggregate fonsiyona görede yapabilirz
select replacement_cost,rental_rate,min(length) from film
group by replacement_cost, rental_rate
order by min(length);

--Belirli sayıda veri almak için limit ile istediğimiz kadar veri alırız
--işlem sırası verileri listeliyoruz, sonra grupluyoruz, sonra sıralıyoruz, sonrada limit ile istediğimiz kadarını getir diyoruz
select replacement_cost,rental_rate,min(length) from film
group by replacement_cost, rental_rate
order by min(length)
limit 8;

--HAVING
-- Having anahtar kelimesi sayesinde gruplanmış verilerimize koşullar uygulayabilirz.
-- rental ratelere göre fimleri gruplayalım
select rental_rate, count(*) from film
group by rental_rate;
--bu sorguya where ile koşul yazamıyoruz. Aggregate fonksiyon kulanılan sorgularda koşul için having kullanmamız gerekir
--select rental_rate, count(*) from film
--group by rental_rate -- verileri önce grupladık
--where count(*)>325; -- bu şekilde syntax hatası alırız çünkü having kullanmalıyız

--having kullanımı
select rental_rate, count(*) from film
group by rental_rate -- verileri önce grupladık
having count(*)>325; -- sonra koşulumuzu yazdık


--payment tablosu

select * from payment;
--kaç tane satış yapılmış
select count(*) from payment;
--staff id ye göre kaç satışş yapılmış
select staff_id, count(*) from payment
group by staff_id;
--üstteki çalışana göre satış sorgusuna bir koşul koyalım toplam satışı 7300 den büyük olanı getir dedik
select staff_id, count(*) from payment
group by staff_id
having count(*) >7300;
--Payment toplosunda 100 den daha fazla satış yapılan müşterileri görelim / satışı 100 den büyük olsun / sırala ve 15 tanesiini al
select customer_id,sum(amount) from payment
group by customer_id
having sum(amount)>100
order by sum(amount) desc
limit 15;

-- Satır bazlı kşşullarda where anahtar kelimesi grup bazlı koşullarda having anahtar kelimesi kullanılır








