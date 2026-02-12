-- Update komutu
--autor tablomuza farklı veriler girmek için dummy data generate servislerinden yararlanabilirz. 
--https://www.mockaroo.com/ üzerinden istediğimiz şablonda veriler oluşturmasını istediğimiz satırda belirtebilirz ve sql olarak generete edip indirebilirz

-- dummy dataları içeri aktardık ve tablomuza baktık
select * from autor;

--update komutu
-- update tabloAdı 
-- set column1=value1, column2=value2 ... collumnN=valueN
--ŞEklindedir. 
--Ancak burada tablodaki tüm satırları günceller. Bunu kullanırken where ile hangi sütnu güncelleyeceğimizi unique alan üzerinden veririz
-- update tabloAdı 
-- set column1=value1, column2=value2 ... collumnN=valueN
--where id=5; -- şartımızı yazarız

-- Şimdi autor tablosunda verileri güncelleyelim
update autor
set firstName='Reşat Nuri',
	lastName='Güntekin',
	email='r.nuri@gmail.com',
	birthday='1925.01.01'		
where id=1 ;
--şimdi bakalım id si 1 olan değer verdiğimiz dğerlere set edildimi
select * from autor where id=1;

-- örnek senaryo ilk isminin baş harfi V ile başlayanların soy ismini VVVV olarak güncelleyelim
--önce bakalım ilk ismi v ile başlayan kaç kişi var
select * from autor where firstName like 'V%'; --16 kişi varmış
--şimdi soyismi güncelleyelim
update autor
set 
	lastName='VVVVV'		
where firstName like 'V%';
--Sorgumuzu çalıştırdık 16 kayıt güncellendi dedi gittik üst sorgumuzdan baktık güncellendiğini gördük

--Güncelleme işlemi yaparken güncellenen veriyi tabloyu sorgulayıp görebildiğimiz gibi Returned anahtar kelimesi ile güncelleme sonrasındada görebilriz
--Örneğimiz soy ismi Richin olanı Updated Richin olarak güncelleyelim
select * from autor;
select * from autor where lastName like 'Richin%';
update autor
set 
	lastName='Updated Richin'		
where lastName like '%Richin%'
returning *;  -- returning * ile güncellenen verinin tüm satırını dön dedik

--DELETE işlemi
-- delete from autor where şart -- yazım biçimi
-- id si 6 olan satırı silelim
delete from autor where id=6 returning *; -- silerken sildiğimiz satırıda görelim diye returning de kullanabilirz.
--şimdi bakalım gerçekten silin miş mi
select * from autor where id=6; -- evet silinmiş

--Birden fazla veriyi silme : id si 990 dan büyük olanları silelim
delete from autor 
where id > 990 returning *;
--bakalım silin mişmi
select * from autor where id >990; -- baktık ve silinmiş
