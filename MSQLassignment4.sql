CREATE TABLE NguoiChiuTrachNghiem(
    ma int PRIMARY KEY,
    nguoichiutrachnghiem NVARCHAR(255) not null
);
create table SanPhamCongTy(
    masosanpham VARCHAR(100) PRIMARY KEY,
    ngaysanxuat date not null,
    maNCTN int not null FOREIGN KEY REFERENCES NguoiChiuTrachNghiem(ma)
);
create table LoaiSanPhamCongTy(
    ma VARCHAR(100) PRIMARY KEY,
    ten NVARCHAR(255) not null,
    maTN int not null FOREIGN KEY REFERENCES NguoiChiuTrachNghiem(ma)
);

insert into NguoiChiuTrachNghiem(ma,nguoichiutrachnghiem)
VALUES (987688,N'Nguyễn Văn An');

insert into SanPhamCongTy(masosanpham,ngaysanxuat,maNCTN)
VALUES ('Z37 111111','12/12/09',987688);

insert into LoaiSanPhamCongTy(ma,ten,maTN)
VALUES ('Z37E','Máy tính sách tay Z37',987688)

select * from NguoiChiuTrachNghiem;
select * from SanPhamCongTy;
select * from LoaiSanPhamCongTy;


--câu 4:
--a:
select ma from LoaiSanPhamCongTy;
--b:
select ten from LoaiSanPhamCongTy;
--c:
select nguoichiutrachnghiem from NguoiChiuTrachNghiem;

--câu 5:
--a:
select ma from LoaiSanPhamCongTy order by ma ASC; 
--b:
select nguoichiutrachnghiem from NguoiChiuTrachNghiem order by nguoichiutrachnghiem ASC; 
--c:
select ten from LoaiSanPhamCongTy WHERE ma like 'Z37E';
--d:
select * from LoaiSanPhamCongTy where maTN in
(select ma from NguoiChiuTrachNghiem where nguoichiutrachnghiem like N'Nguyễn Văn An');


--câu 6:
--a:
select count(ten) as sosanpham from LoaiSanPhamCongTy;
--b:
select avg(maTN) as trungbinhloaisanpham from LoaiSanPhamCongTy group by maTN;
--c:
select * from SanPhamCongTy a
inner join LoaiSanPhamCongTy b on a.maNCTN = b.maTN;
--d:
select * from SanPhamCongTy a
inner join LoaiSanPhamCongTy b on a.maNCTN = b.maTN
inner join NguoiChiuTrachNghiem c on a.maNCTN = c.ma; 
