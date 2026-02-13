--Primary Key - Foreign Key Kavramları
 --Primary key : Veriyi diğer verilerden benzersiz şekilde ayıran tekil verilir. ID değerleri bu primary key (birincil anahtar) a örnektir.
 --Foreign key : iki tablo arasında iilişki bağlantı kurulabilmesi için eşleştirilen uniqe verilerdir. Foreign key başka tablodaki bir alana referans verir

 --şimdi 2. tablomuzu oluşturarak aralarındaki ilişkiyi bağlayalım
 create table book (
	id serial primary key,
	title varchar(100) not null,
	pageNumber integer not null,
	autorId integer references  autor(id) -- references anahtar kelimesi ile hangi tablo daki hangi alan ile ilişki kuracağınıda belirtiyoruz.
	
 );

 --çalıştırıp tablomuzu oluşturduk
 --sonra dummy data sitesi mokaaro dan verii alıp ekledik tabloya / burada bir dikkat etmemiz gereken nokta
 select * from book;
 select * from autor;

 --şimdi buradaki işlemleri bir örnekle irdeleyelim
 -- id sine göre yazara ait olan kitaplar
 select * from book where autorid=84; 

 --şimdi tüm kitapları alalım ve bu kitapların yazarlarını seçelim. Şimdi PK ve FK nın ne işe yaradığını göreceğiz
 select * from book
 join autor on autor.id=book.autorid;
 