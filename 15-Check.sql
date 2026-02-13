--CHECK Kısıtlaması : Veri eklerken belirli şartlar kokymamız için kullanılır
--örneğin kayıt olacak kullanıcı 18 yaşındna küçük olmaz

insert into users (username,email,age)
values ('gamer3','gamer3@gmail.com','-568');
--şimdi tablomuza baktığımızda yanlış yaş verisinin girildiğini görürüz
select * from users;

--Yine check kısıtlamasını tablooyu oluşturuken yapabilirz ama bizim tablomuz var odluğu için yine alter ile yapcağız
alter table users
add check(age>18); -- bu şekilde alanımıza 18 den büyük olma şşartını ekleriz.
--ERROR:  check constraint "users_age_check" of relation "users" is violated by some row  tabi burada hata alırız. Çünkü tablomuzda bu değerleri karşılamayanlar var
delete from users where id=7; -- o veriyi sildik
--tekrar deneyelim
alter table users
add check(age>18); -- ve şartımız alana eklenmiş oldu
--şimdi bir veri girelim
insert into users (username,email,age)
values ('gamer3','gamer3@gmail.com','-568');
--ERROR:  new row for relation "users" violates check constraint "users_age_check" yine hatamızı alacağız needen çnkü şarta  uymuyor
--doğru ekleyecek mi bakalım
insert into users (username,email,age)
values ('gamer3','gamer3@gmail.com','21');
--şimdi ekledi
select * from users;

-- var olan tabloyu oluşturukken yukarıdaki gibi
--yeni tablo oluşturuken ise örneğin

create table products(
id serial primary key,
name varchar(50) not null,
price numeric check(price>0)
);
--tabloomuzu oluşturuken ürün tablomuzda fiyat alanına negatif bir değer olamaz ceheck i koyduk
--bir ürün girelim
insert into products(name,price)
values('Kitap',100);

select * from products;
--veri ekledi olumsuz senaryoya bakalım

insert into products(name,price)
values('Kitap',-22);
--ERROR:  new row for relation "products" violates check constraint "products_price_check" hatayı fırlattı

--Örneğin burada başka check koşullarıda konulabilir örneğin indirim yapılmış fiyyat ürünün alış bedelinden az olamaz diyebilrilz.
