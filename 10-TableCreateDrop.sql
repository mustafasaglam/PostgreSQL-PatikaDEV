--Table Create Drop
--Tablo oluşturmak için aşağıdaki gibi  yapı kulllanılır
--stünlar stün adı - veri tipi - ve kııtlaması verilir.
--create table TabloAdı (
 --columnname datatype  --constrait,
 --...
 --..
-- columnname1 datatype --constrait
--);

--Örnek tablo oluşturalım
create table autor(
id serial primary key, -- integer da kullanabilirz. Serial otomatik olarak artan yapar. ve birincil anahtar yaparız. Yani Unique Identifier olcak
firstName varchar(50) not null,
lastName varchar(50) not null,-- varchar olsun ve not null ile boş olamaz dedik
email varchar(100), -- constrait vermiyorum boş olabilir
birthday date
);

select * from autor;
---veri ekleyelim

insert into autor(firstName,lastName,email,birthday) 
values
('Mehmet','Al','m@m.com','1990.05.07'),
('Ali','Bal','a@al.com','1990.08.01');

--Var olan tablodan autor dan bir tablo oluşturalım. Yani oluşturulacak tabloya şablon veririz. Verileri olmadan oluştur dedik
create table autor2 (like autor);
select * from autor2;

--Bu oluşturduğğumuz 2 . tabloya ilk tablodan veride kopyalayabilirz.
insert into autor2 
select * from autor
where firstName='Mustafa';
--çalıştırıp autor 2 ye baktığımızda ismi msutafa olanlrı autor 2 ye ekler

-- tabloyu kopyallarken verilerinide alıp kopyaayalım
create table autor3 as 
select * from autor;
-- oluşturduktan sonra baktığımızda verilerle oluşturulur. ** Bu işlem genelde tablonun yedeğini almak için kullanılır
select * from autor3;


--DROP Table : Tablo silmek

drop table autor4; --bu şekilde olmayan tabloyu silmeye çalıştık. Bize hata verir
--hata vermemesi iş if exists yapısı da kullanılabilir
drop table if exists autor4; --sorgu çalıştırılır uyarısını verir bu tablo yok diye hata kodu vermez

drop table if exists autor3;
drop table autor;

