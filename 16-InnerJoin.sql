-- INNER Join
drop table products;
drop table users;
--işimiz olmayan tabloları sildik
--Joinler birden fazla tablodaki ilişkili verileri sanal bir tabloda birleştirirz
--Inner Join
--Her kitaba ait yazarın adı ve soyadını yazalım
select * from book
inner join autor on autor.id=book.autorid;
--alanlara göre özelleştirirsek
select title Kitap, concat(lastname,' ',firstname) Yazar from book
inner join autor on autor.id=book.autorid;
--Bu şekilde farklı tablolardaki verileri birleştirerek yaptık
--Sadece join yazsak da varsayıllan yine inner join işlemi yapar
select title Kitap, concat(lastname,' ',firstname) Yazar from book
join autor on autor.id=book.autorid;
--alanların nereden geldiğini belirterek de kullanablirz
select book.title Kitap, concat(autor.lastname,' ',autor.firstname) Yazar from book
inner join autor on autor.id=book.autorid;
--**INNER Join iki kümenin kesişimidir. Yeni iki tabloda belirtilen join şartına göre eşleşen kayıtlardır.
--Inner joinde veriler simetrik yapıdadır yani hangi tabloyu önce yazdığını önemlid eğildir.
select title Kitap, concat(lastname,' ',firstname) Yazar from autor
inner join book on autor.id=book.autorid;
--sonuç yne aynı olur çünkü kesişimini alıyoruz.





