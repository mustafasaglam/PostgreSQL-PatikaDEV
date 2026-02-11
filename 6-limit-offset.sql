--LIMIT-OFFSET
select * from film
limit 20;

select * from film
where rental_rate=4.99
order by length desc
limit 10; -- limit anahtar kelimesi en son yazılır. Mantığı koşullara göre verile aınır sonra koşullara göre sıralanır sonra limir ile beirli sayı belrilenir

select * from film
where replacement_cost=14.99 and rental_rate=0.99
order by length desc
limit 5;

--Offsett : belirli sayıda veriyi pass geç

select * from country;

select * from country limit 10;

--ilk 5 veriyi geçip sonrasını göster senarryosunda kullanılır. Yine limit ile  5 ten sonra 10 adet göster diyebilirz

select * from country
offset 5
limit 10;

