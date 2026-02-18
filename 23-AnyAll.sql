--Any-All Operatöleri
--Anyy
--Örneğin id bilgisi kitap tablosundaki It kitabınınn id sine eşit olan yazarın adı sooyadını aldık
select firstname, lastname
from autor
where id = (select id from book  where title='It');

--
select firstname, lastname
from autor
where id = (select id from book  where title='It' or title='Greenlam');
--bu şekilde hata alırız.
--ERROR:  more than one row returned by a subquery used as an expression 
--çünkü bize derki sen burada iki tane id değeri alıyorsun

--Peki burda bu durumu aşmak için any dersek
select firstname, lastname
from autor
where id = any (select id from book  where title='It' or title='Greenlam');
--bu şekilde farklı id lere sahip olduğunda any ile alırız. Yani Birden daha fazla değer ile karşılaştırma yaparsak any kullanırızız.
--HErhangi bir koşul doğru olur is ebize o değerleri verir

--ALL operatçöründe ise any den farklı olarak tüm koşulların doğru olması gerekir
select firstname, lastname
from autor
where id = all (select id from book  where title='It' or title='Greenlam');
--herhangi bir değer dönmez. Çünkü gelen değer tüm satırlar ile (all) eşleşmediği için false döner ve veri getirmez

