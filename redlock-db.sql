create table users
(
	ID int not null primary key,
    Nama varchar(30) not null,
    Alamat  varchar(30) not null,
    Jabatan varchar(25) not null
);

insert into users values (1,'Nakahara Chuuya','254-1128 Nozomimachi','Leader');
insert into users values (2,'Dazai Osamu','462-1294 Haruki','Vice Leader');
insert into users values (3,'Mori Ougai','50-1089 Kakitacho','Secretary');
insert into users values (4,'Atsushi Nakajima','10-4 Shiba-daimon','Manager');
insert into users values (5,'Kunikida Doppo','12-334 Yanagihara','DevOps Specialist');