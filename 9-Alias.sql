--ALIAS - geçici isim takma isim
select first_name as Ad,last_name as Soyad from actor;
--as anahtar kelimesi kullanmak zorunda değiliz
select first_name Ad,last_name Soyad from actor;
-- takma ad boşuuuk veya birdenn fazla kelime içerirse tırnak içine alınır
select first_name "Ad test",last_name "Soyad test" from actor;

--bu takma adları daha karmaşık sorgularda kullanılır. Tablolarada sütunlarada geçiçi iisim veriilir
select count(*) Aktör from actor; -- bu şekilde aggregate fonksiyonlarlada kullanılabilr

--Örneğinn  2 sütunu birleştirelim
select concat(first_name,' ',last_name) as "İsim Soyisim" from actor; --concat birleştirme fonksiyonu ile alias ı da kullanarak isim soyisim vkolonlarını birleştirerek sorgu çektik


