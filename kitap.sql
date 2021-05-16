create database kitap;
use kitap;
create table Adres(
Adresid int ,
Cadde varchar(45)not null,
Sokak varchar(60) not null,
Mahalle varchar(50) not null,
BinaNo varchar(50) not null,
Kat varchar(45) not null,
İlçe varchar(45) not null,
İl varchar(45) not null,
primary key (Adresid)
);
select*from Adres;
insert into Adres(Adresid,Cadde,Sokak,Mahalle,BinaNo,Kat,İlçe,İl)
values(1,'Yenimahhale','Ada','Şirinevler','15','1','Altınordu','Ordu'),
(2,'Eskipazar','Yolcus','Altınordu','78','2','Bağcılar','İstanbul'),
(3,'Zübeydehanım','Zeytin','Bucak','89','3','Bostanlı','İzmir'),
(4,'Aydoğan','Catalzeytin','Şahincili','01','4','Gölköy','Ordu'),
(5,'Alanyurt','Erba','Karşıyaka','12','5','Esenyurt','Tokat'),
(6,'Bahçelievler','Pursaklar','Etimesgut','25','6','Kızılay','Ankara');

create table KitapTürleri(
KitapTürleriid int ,
Roman varchar(45)not null,
Masal varchar(45) not null,
Gezi  varchar(45) not null,
Anı varchar(45) not null,
Hikaye varchar(45) not null,
Deneme varchar(45) not null,
Polisiye varchar(45) not null,
primary key (KitapTürleriid)
);
select*from KitapTürleri;
insert into KitapTürleri(KitapTürleriid,Roman,Masal,Gezi,Anı,Hikaye,Deneme,Polisiye)
values(1,'İnce Memed','Kül Kedisi','Bir Çift Yürek','İstanbul','Sivri Sinek','Direniş','Da Vinci Şifresi'),
(2,'Tutunamayanlar','Uyuyan Güzel','Seksen Günde Devr-i Alem78','Hatıralar','Yarınlar','Yalnız Şehir','Doğu Ekspresinde Cinayet'),
(3,'Saatleri Ayarlama Enstitüsü','Pamuk Prenses','Seyahat Sanatı','Toptilki','Daralan','Hayal Ağacım İğde','Siyah Kan'),
(4,'Huzur','Kırmızı Başlıklı Kız','Yoksul Oduncu','Yabana Doğru','Bir Öğretmen Yetişiyor','Dört kozalak','Zamanın Ağızları'),
(5,'Kara Kitap','Güzel ve Çirkin','Yolda','Yalan Dünya','Dikkat Eşya','Hikaye Avcısı','Bab-ı Esrar'),
(6,'Aylak Adam','Sihirli Fasulye','İtalya Seyahatit','Canlar Ölesi Değil','Zor Sevgiler','Kadınlar Rüyalar Ejderhalar','Aklından Bir Sayı Tut ');

create table Emanet(
Emanetid int ,
EmanetTarihi varchar(65)not null,
TeslimTarihi varchar(65) not null,
Kitapid varchar(65) not null,
Üyeid varchar(65) not null,
Adresid varchar(65) not null,
primary key (Emanetid)
);
select*from Emanet;
insert into Emanet(Emanetid,EmanetTarihi,TeslimTarihi,Kitapid,Üyeid,Adresid)
values(1,'12.01.2019','15.02.2019','1','2','1'),
(2,'12.04.2019','16.05.2019','2','1','3'),
(3,'15.03.2019','05.05.2019','3','3','2'),
(4,'20.06.2019','04.07.2019','4','5','4'),
(5,'01.01.2020','02.02.2020','5','4','5'),
(6,'03.02.2020','05.03.2020','6','5','6');

create table Kategoriler(
Kategorilerid int ,
KatAdı varchar(65) not null,
primary key (Kategorilerid)
);
select*from Kategoriler;
insert into Kategoriler(Kategorilerid,KatAdı)
values(1,'Roman'),
(2,'Anı'),
(3,'Masal'),
(4,'Gezi'),
(5,'Hikaye'),
(6,'Deneme'),
(7,'Polisiye');

create table Üyeler(
Üyelerid int ,
Ad varchar(65)not null,
Soyad varchar(65) not null,
Telefon varchar(65) not null,
EPosta varchar(65) not null,
Adres varchar(65) not null,
primary key (Üyelerid)
);
select*from Üyeler;
insert into Üyeler(Üyelerid,Ad,Soyad,Telefon,EPosta,Adres)
values(1,'Mete','Daşkın','05489563','meteda52@gmail.com','Ordu merkez'),
(2,'Metin','Daş','0534789564','metinda@gmail.com','Ordu gölköy'),
(3,'Mert','ulu','0534896547','mertulu52@gmail.com','İstanbul bağcılar');

create table Kitap(
Kitapid int ,
KitapAd varchar(45)not null,
YayınTarihi varchar(45) not null,
YayınEviid varchar(45) not null,
SayfaSayısı varchar(45) not null,
primary key (Kitapid)
);
select*from  Kitap;
insert into  Kitap(Kitapid,KitapAd,YayınTarihi,YayınEviid,SayfaSayısı)
values(1,'İnce Memed','25.09.1955','1','436'),
(2,'Tutunamayanlar','02.08.1972','2','671'),
(3,'Huzur','2.06.1948 ','2','383');

select*from YayınEvi
inner join Adres on YayınEvi.Adresid=Adres.Adresid;

select*from Kitap
inner join YayınEvi on Kitap.YayınEviid=YayınEvi.YayınEviid;

select*from Emanet
inner join Kitap on Emanet.Kitapid=Kitap.Kitapid;







