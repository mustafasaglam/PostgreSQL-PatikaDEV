--UNION : Birden fazla select ile elde ettiğimiz verleri tek tabloda dönmemize birleştirmemize yarar



Select * from book;
--örneğin biz sayfasayısı en fazla olan 5 kitabı getir diyelim
select * from book
order by pagenumber desc
limit 5;
--Kitapları isimlerine göre sıralayalım ve u sorgulamadaki ilk 5 kitabı görelim
select * from book
order by title asc
limit 5;

---** Sayfa sayısı en fazla olan 5 kitabı ve isme göre a dan z ye ilk 5 kitabı aynı anda getirmek istediğimizde bu gibi birden fazla select sorgusunda oluşan sorguları tek bir sorguda birleştirmeuye yarar onion
(select * from book
order by pagenumber desc
limit 5)
UNION
(select * from book
order by title asc
limit 5);
-- burada kesişim olan sorgu sonuçları veri olarak gelmez. Yani bir kitap hem sayfa sayısı fazla ise hemde ilk 5 a dan z ye kitpa içindeyse 1 defa yazar
--Ama tüm hepsini görmek istersek ALL annahtar kelimesini ekleriz
(select * from book
order by pagenumber desc
limit 5)
UNION ALL
(select * from book
order by title asc
limit 5);
--Şimdi bize 10 sonuç döner ama mükerrer olanları sorguya göre ilgili satırda döner
--Farklı tablolarda yaptığımız sonuçlarıda union ile birleştirebilriz
(select id, title from book)
union 
(select id,email,firstname from autor);
--Bu şekilde hata alır. Burada mantık her iki sorgu içinde seçilen sütun sayısı eşit olmalı.
--Yani birinden 2 birinden 3 sütun isteyemezsin
(select id, title from book)
union 
(select id,email from autor);

--Bu şekildede olmaz çünkü sütunların veri tipleri de birbiri ile tutmalıdır.
(select id, pagenumber from book)
union 
(select id,email from autor);
--doğru çekelim
(select id, title from book)
union 
(select id,lastname from autor);
