--Right Join -- left in tam tersi
--Önce sağdaki verileri alır ve sonra sağdaki verilerin kesişenlerini alır.
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from book
right join autor on autor.id=book.autorid;
--önce autor tablosuna bakıyor hepsini alıyor sonra ilk tablo book tablosuna bakıyor ve eşleşenlrin karşılarına verileri getiriyor.
--Eşleşmeyenleri null olarak geçiyor
--tam tersini yaparsak
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from autor
right join book on autor.id=book.autorid;
--bu sefer önce book tablosuna baktı sonra autor ile eşleştirdi
--yine not null ile koşul koyabilirz
select title, firstname, lastname,book.id, book.autorid as BookTableAutorid, autor.id from autor
right join book on autor.id=book.autorid
where autor.firstname is not null;
--null olanları bize getirme dedik.