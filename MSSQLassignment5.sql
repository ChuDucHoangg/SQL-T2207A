CREATE TABLE nguoidungdanhba(
    ten varchar(100),
    diachi varchar(255),
    ngaysinh date,
    id int primary key
);
CREATE TABLE danhbacuanguoidungg(
    dienthoai varchar(15),
    idND int foreign key references nguoidungdanhba(id)
);

drop table nguoidungdanhba;

insert into nguoidungdanhba(ten,diachi,ngaysinh,id)
VALUES ('Nguyen Van An','111 Nguyen Trai, Thanh Xuan, Ha Noi','11/18/87',1);
insert into danhbacuanguoidungg(dienthoai,idND)
VALUES (987654321,1),(09873452,1),(09832323,1),(09434343,1);


select * from nguoidungdanhba;
select * from danhbacuanguoidungg;

--câu 4:
--a:
select ten from nguoidungdanhba;
--b:
select dienthoai from danhbacuanguoidungg;

--câu 5:
--a:
select * from nguoidungdanhba order by ten ASC;
--b:
select * from danhbacuanguoidungg where idND in 
(select id from nguoidungdanhba where ten like 'Nguyen Van An');
--c:
select * from nguoidungdanhba where ngaysinh like '12/12/09';

--câu 6:
--a:
select count(dienthoai) as soluongsodienthoai from danhbacuanguoidungg;
--b:
select count(*) as songuoitrongdanhbasinhthang12 from danhbacuanguoidungg where idND in 
(select id from nguoidungdanhba where ngaysinh like '12');
--c:
select * from nguoidungdanhba a
inner join danhbacuanguoidungg b on a.id = b.idND
--d:
select * from nguoidungdanhba a
inner join danhbacuanguoidungg b on a.id = b.idND
where dienthoai like 123456789;