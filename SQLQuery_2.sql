create table KhachHangg(
ten nvarchar(100) not null,
diachi ntext not null , 
dienthoai varchar(15) primary key
);
create table DanhSachHangg(
ten nvarchar(255) not null,
donvi nvarchar(255) not null,
mota ntext,
gia decimal(12,4) not null,
id integer  primary key identity (1,1)
);
create table DonHangg(
ma varchar(20) primary key,
ngaydat date not null,
tongtien decimal(12,4) not null,
dienthoai varchar(15) not null foreign key references KhachHangg(dienthoai) 
);
create table DonHangDanhSachHangg(
maDH varchar(20) not null foreign key references DonHangg(ma),
spid int not null foreign key references DanhSachHangg(id),
soluong int not null,
thanhtien decimal(12,4) not null
);
