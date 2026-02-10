select * from customer;

select * from customer
where first_name='Mary';

--like ile // isminin başı Ma ile başlayanlar, yani burada tam olarak bilmeyebilirz. Başı Ma ile başlasın sonu ne olursa
select * from customer
where first_name like 'Ma%';

select * from customer
where first_name like 'Mari%';

--sonu ia ile bitsin başı önemli değil
select * from customer
where first_name like '%ia';

--içeriisnde gi geçen
select * from customer
where first_name like '%gi%';

-- başı A sonu Y ile biten
select * from customer
where first_name like 'A%y';

--ismin ilk harfi a ve soy ismin ilk harfi a aolan
select * from customer
where first_name like 'A%' and last_name like 'A%';

--Küçük a dersek ilk harfe db de küçük a ile başlayan isim yok ise veri gelmez. Yani case sensetive olarak bakar Like
select * from customer
where first_name like 'a%';

--Eğer büyük küçük bakmak istemezsek ILIKE ile bakarız
select * from customer
where first_name ilike 'a%';

--NOT LIKE kullanımı
-- başında a ile başlayanların haricindekileri getirir.
select * from customer
where first_name not like 'A%';

select * from customer
where first_name not ilike 'A%';

--Underscore _ tek bir karakter için yer tuttucu, yani verilen karakterler olacak _ yer tuttucu da isteiği olabilr
select * from customer
where first_name ilike 'J_an';

select * from customer
where first_name ilike 'J_'; --Jo, Je, Ji vs vs

select * from customer
where first_name ilike 'J_n'; -- Jon Jen Jun

-- underscore tek bir karakter için kullanılır ama % hem tek karakteri hemde ikisi arasında ne var ise karşşılar.
select * from customer
where first_name ilike 'J%n';

--örnekler
select * from actor
where first_name='Penelope';

select * from actor
where first_name like 'P%' and last_name like 'G%';







