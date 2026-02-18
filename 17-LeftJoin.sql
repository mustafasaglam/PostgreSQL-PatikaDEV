--LEFT Join
--Left join : LEft soldaki olan tablonun verilerini alıyor sağdaki yani verdiğimiz 2. tablodaki değerler ile eşleşenlerini getiriyor.
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from autor
left join book on autor.id=book.autorid;
--yani bu sorguda solda kalan yani ilk tablo autor tablosundaki tüm veriler alınıyor. Sonra 2.tablodaki veriler getiriliyor. Eşleşmeyenlerede null değeri veriliyor
--Yani demek istiyoruz ki tüm yazarları kitap ismi olsun veya olmasın getir diyoruz.
--Şimdi tabloların yerini değişelim
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from book
left join autor on autor.id=book.autorid;
--Bu sefer ne de2dik kitap tablosundaki tüm sütunları al Sonra kitabı olan yazarların isim soyisim bilgiisni getir dedik. Bu sorguda null gelmez. 
--Çünkü kitap tablosundaki kitaplar için eşleşen yazarlar var ve eşleşmeyen yok dolayısıyla null göstermiyor
--Şimdi book tablosuna eşleşmeyen bir yazar id eleyelim
insert into book(title,pagenumber,autorid)
values('Gülün Adı','588',875); -- bu varmış :)
insert into book(title,pagenumber,autorid)
values('Devlet','588',999);
--Eklerken hata alırız çünkü bu alan bir foreign keydir. Bu foreign bağlantısını silmek için
alter table book
drop constraint book_autorid_fkey; -- contraint ismini table altından contsraint lere sağ tıklayıp alırız
--ekledik ve şimdi bakalım verimizi ekleyelim

insert into book(title,pagenumber,autorid)
values('Devlet','588',999),('Millet','325','998');

--sorgulayalım baştan
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from book
left join autor on autor.id=book.autorid;
--Ve bakarız ki bu sefer sağda olan 1. tablomuzda olup ama soldaki ikinci tablomuzda kesişimi olmayan veriler null olrak gelir.
--Yani yazar id si yazar tablosund almayan bir kitaptır bu

--Peki burada biz sadece kitapları olan yazarları görmek istersek (inner join ile yapabiliyoruz ama) burada where is naot null deriz
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from book
left join autor on autor.id=book.autorid
where autor.id is not null;
--birde sıralama yapalım
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from book
left join autor on autor.id=book.autorid
where autor.id is not null
order by book.title asc;
