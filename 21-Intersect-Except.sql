--INTERSECT -  EXCEPT : Birden fazla select sorgusunun getirdiği verilerin kesişimini verir

--Bu anahtar kelimeler de union ın tersine kesişimlerini alıır

(select * from book
order by pagenumber desc
limit 5)
intersect
(select * from book
order by title asc
limit 5);

--kesişimleri getirir
--intersect all yine aynı sonucu verir
(select * from book
order by pagenumber desc
limit 5)
intersect all
(select * from book
order by title asc
limit 5);
--Yani mantığı kesişimi alır.

--EXCEPT : İlk sorguda bulunan ancak ikinci sorguda bulunmayan verileri getirir.

(select * from book
order by pagenumber desc
limit 5)
except
(select * from book
order by title asc
limit 5);