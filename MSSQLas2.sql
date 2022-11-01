CREATE TABLE DanhSachSanPhamTheoHang(
    ma NVARCHAR(255) PRIMARY key,
    ten NVARCHAR(255) not null,
    diachi ntext not null,
    dienthoai VARCHAR(15) not null
);
CREATE TABLE DanhSachSanPhamm(
    ten NVARCHAR(255) not null,
    mota ntext not null,
    donvi NVARCHAR(255) not null,
    gia decimal(12,4) not null,
    soluong int not null,
    id int PRIMARY key
);
CREATE TABLE DanhSachSanPhamTheoHang_DanhSachSanPhamm(
    maDS NVARCHAR(255) not null FOREIGN key REFERENCES DanhSachSanPhamTheoHang(ma),
    idSP int not null FOREIGN KEY REFERENCES DanhSachSanPhamm(id)
);
