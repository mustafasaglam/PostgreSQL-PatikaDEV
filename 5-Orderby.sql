--ORDER BY
select * from film
order by title asc;

select * from film
order by title desc;

select * from film
order by length asc;

select * from film
order by release_year asc;

select title, release_year  from film
order by release_year desc;

select title, release_year,rental_rate  from film
order by release_year desc, rental_rate;

--order by her zaman where koşulundan sonra yazılır
select title, release_year,rental_rate  from film
where title like 'A%'
order by release_year desc, rental_rate; -- yani order sıralama olduğu için verileri belirli şartlarda seçip sonra sıralanacağı için order by where den sonra gelir

select rating, title from film
where rating='G'
order by length desc;

select distinct rating from film;




