--SUB Queries - Alt Sorgular

--Örneğin kitapları isteleyelim
select * from book
where pagenumber>322;
--Yani burada biz şartımızı statik bir veri olarak koyduk. Yani veriyi bi yerden istemedik
--ancak bunu alt sorgu ile ikici bir sorgu ile yapabilriz. Bunu başka bir sorgudan getirebilriz

select pagenumber from book
where title='Millet';
--burada ne yaptık gittik ismini bildiğimiz kitabın sayfa sayını aldık
--Şimdi geldik alt sorgumuzu şartımıza yazmaya

select * from book 
where pagenumber>(select pagenumber from book where title='It');

--burda bir örnek : Sayfa sayısına göre It kitabının sayfa sayısından büyük olan kitapları getirdik ayrıca en yüksek sayfa sayısını getirdik.
--Sonrasında sayfa sayısını getirdiğimiz kitapların sayfa sayısını en yüksek sayfa sayısından çıkararak aradaki sayfa sayını bulduk
Select title,pagenumber,(select max(pagenumber)from book),((select max(pagenumber) from book )-pagenumber) as SayfaFark  from book
where pagenumber>(select pagenumber from book where title='It');