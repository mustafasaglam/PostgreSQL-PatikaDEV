--Full Join
--Her iki tablodaki tüm verileri al her ikisindede eşleşmeyenleri de getir
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from autor
full join book on autor.id=book.autorid;
--Ful joinde önce eşleşenleri alırız sonra her iki tablonun eşleşmeyenlerini almış oluuruz. Yani full join inner join gibi simetrik yapıdadır. Her iki tablodaki tüm veriler gelir
--Yine full join ile null kauıtları devre dılşı bıralalım
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from autor
full join book on autor.id=book.autorid
where autorid is not null and autor.id is not null;
--herr iki tablodaki null olacak kayıtları kaldırmış olduk.
--aslında bu sonuç aslında inner join olmuş olduu :)