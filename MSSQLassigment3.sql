CREATE TABLE ThongTinKhachHang(
    ten NVARCHAR(100) not null,
    cmtnd int primary key,
    diachi NVARCHAR(255) not null
);
CREATE TABLE ThueBaoKhachHang(
    so int primary key,
    loai NVARCHAR(255) not null,
    ngaydangky date not null
);
CREATE table ThongTincuaThueBao(
    cmtKH int not null FOREIGN key REFERENCES ThongTinKhachHang(cmtnd),
    soTB int not null FOREIGN key REFERENCES ThueBaoKhachHang(so)
);
