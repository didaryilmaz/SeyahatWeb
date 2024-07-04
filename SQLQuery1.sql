use dbTravel

create table tblAyarlar(
id int not null identity primary key,
Mail varchar(200) not null,
Tlf varchar(200) not null, 
Adres varchar(500) not null,
Instagram varchar(200) not null, 
Facebook varchar(200) not null, 
Logo varchar(100) not null,
SiteQzet varchar(500) not null
)

create table tblKurumsal(
id int not null identity primary key,
Baslik varchar(50) not null,
Ozet varchar(250) not null,
Detay varchar(1000) not null
)

create table tblTurPaket (
id int not null identity primary key,
Adi varchar(50) not null,
Fiyat int not null,
Sure int not null,
Lokasyon varchar(100) not null,
Resim varchar(100) not null,
Detay varchar(500) not null
)

create table tblBlogKategori ( 
id int not null identity primary key, 
Adi varchar(50) not null
)

create table tblBlog(
id int not null identity primary key,
Baslik varchar(100) not null,
Ozet varchar(250) not null,
Kategorild int not null foreign key references tblBlogKategori(id),
Resim varchar(100) not null,
Detay varchar(1000) not null,
Tarih datetime not null
)

create table tblGaleriKategori( 
id int not null identity primary key, 
Adi varchar(50) not null
)

create table tblGaleri( 
id int not null identity primary key, 
Baslik varchar(100) not null,
Kategorild int not null foreign key references tblGaleriKategori(id), 
Resim varchar(100) not null
)