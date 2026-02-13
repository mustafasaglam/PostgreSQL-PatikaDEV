--UNIQUE : Bazı senaryolarda ilgili sütıundaki verilerin birbirinden farklı olmasını isteriz.
--örneğinnn kullanıcı adlarının veya mallerinin farklı olmasını bekleriz
--bu aşşamada users tablomuzda bu kısıtlama olmadığı için benzer kullanıcı adları veya mail adreslerinin girişi serbesttir.

select* from users;

--email kısmına bir unique kısıtlaması getirelim. Bunu tabloyu ilk oluşturuken unique anahtarını vererekde yapabilirdik.
--ama sonradan eklemek istersek
alter table users
add unique(email);

--Bu şekilde kolonu unique yaptık
--şimdi benzer bir mail adresini ekleyelim tabloya
insert into users(username,email)
values ('Mehmeta','selim@gmail.com');
--ERROR:  duplicate key value violates unique constraint "users_email_key" hatamızı aldık ve bu veri tablonda var diyor.
--değitirip deniyooruz
insert into users(username,email)
values ('Mehmeta','mehmet@gmail.com');
--eklendiğini görüyoruz
select* from users;
