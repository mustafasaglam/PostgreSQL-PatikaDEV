--NOT NULL 

create table users(
id serial primary key,
username varchar(20),
email varchar(50),
age integer
);

select * from users;
--veri girelim
insert into users(username,email,age)
values
('tester','test@gmail.com',23);

--Bir veri girişi daha yaplım
insert into users(email,age)
values
('gamer@gmail.com',35);
--bu şekilde username alanını vermeden de girebildik. Çünkü username için bir constrait kısıtlama bekledik. 
--NULL bilinmeyen eksik veri anlamına gelir. Ancak biz buna not null yani boş olmasın dersek buraya veri girişi yapmadan sorguyu çaıştırmaz
---Bunu ya tabloyu ilk başta oluşturuken yapacaktıık. Şimdi yapmaya çalışırsak hata verir.
--Değiştirme işlemleri için ALTER komutu kullanılır. Yani burada tablo üzeirnde güncelleme yaparız

alter table users
alter column username
set not null;
--ERROR:  column "username" of relation "users" contains null values / bu şekilde yapmaya kalktığımızd abize derki ilgili stünda null olan ifadeler var sen bunu not null yapmazsın
--Null olan ifadeleri de güncelleyerek ilerletebiilirz. Bu veriler rakam olur ise o anki duruma göre bir değer verilir. ancak bizde kullanıcı adı bilgisi null olduğu için biz bu null olan satırları silerek yapabiirz.
--null olan satırları silelim
delete from users
where username is null; --başarılı şekilde o satırı siler
select * from users;

--şimdi tekrar  sütunun kısıtlamasını yapalım
alter table users
alter column username
set not null;
--tekrar bakarız
select * from users;

--Şimdi bir eksik veri girişi yapalım
insert into users(email,age)
values
('test1@gmail.com',32);
--ERROR:  null value in column "username" of relation "users" violates not-null constraint hatamızı aldık yani username nat null dedi
insert into users(username,email,age)
values
('Selim','selim@gmail.com',32);

select * from users;

--Örneğin depodaki ürün sayısı 0 ise sıfırdır yani null değğildir. NULL eksik veridir. Dolayısıyla null bilinmeyen veriler eksik veridir.
--Yani biz username sütununa ' ' verisi girsekdikte null olmayacaktı.Yani böyle boş olmasına empty string denir. NULL ise hiç bir veri olmamasıdır.
