INSERT INTO NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue)
VALUES ('NCC001',N'Cty TNHH Toàn Pháp','Hai Chau','05113999888','568941'),
('NCC002',N'Cty Cổ phần Đông Du','Lien Chieu','05113999889','456789'),
('NCC003',N'Ông Nguyễn Văn A','Hoa Thuan','05113999890','321456'),
('NCC004',N'Cty Cổ Phần Toàn Cầu Xanh','Hai Chau','05113658945','513364'),
('NCC005',N'Cty TNHH AMA','Thanh Khe','05113875466','546546'),
('NCC006',N'Bà Trần Thị Bích Vân','Lien Chieu','05113587469','524545'),
('NCC007',N'Cty TNHH Phan Thành','Thanh Khe','05113987456','113021');
INSERT INTO NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue)
VALUES ('NCC008',N'Ông Phan Đình Nam','Hoa Thuan','05113532456','121230'),
('NCC009',N'Tập Đoàn Đông Nam Á','Lien Chieu','05113987121','533654'),
('NCC010',N'Cty Cổ Phần Rạng Đông','Lien Chieu','05113569654','187864');


SELECT * FROM NHACUNGCAP;


INSERT INTO LOAIDICHVU(MaLoaiDV,TenLoaiDV)
VALUES ('DV01',N'Dịch vụ xe taxi'),
('DV02',N'Dịch vụ xe buýt công cộng theo tuyến cố định'),
('DV03',N'Dịch vụ cho thuê xe theo hợp đồng');


SELECT * FROM LOAIDICHVU;


INSERT INTO MUCPHI(MaMP,DonGia,MoTa)
VALUES ('MP01',10000,'Áp dụng từ 1/2015'),
('MP02',15000,'Áp dụng từ 2/2015'),
('MP03',20000,'Áp dụng từ 1/2010'),
('MP04',25000,'Áp dụng từ 2/2011');


SELECT * FROM MUCPHI;


INSERT INTO DONGXE(DongXe,HangXe,SoChoNgoi)
VALUES (N'Hiace','Toyota',16),
(N'Vios','Toyota',5),
(N'Escape','Ford',5),
(N'Cerato','KIA',7),
(N'Forte','KIA',5),
(N'Starex','Huyndai',7),
(N'Grand-i10','Huyndai',7);


SELECT * FROM DONGXE;


INSERT INTO DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgatBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
VALUES ('DK001','NCC001','DV01',N'Hiace','MP01','2015/11/20','2016/11/20',4);
INSERT INTO DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgatBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
VALUES ('DK002','NCC002','DV02',N'Vios','MP02','2015/11/20','2017/11/20',3),
('DK003','NCC003','DV03',N'Escape','MP03','2017/11/20','2018/11/20',5),
('DK004','NCC005','DV01',N'Cerato','MP04','2015/11/20','2019/11/20',7),
('DK005','NCC002','DV02',N'Forte','MP03','2019/11/20','2010/11/20',1),
('DK006','NCC004','DV03',N'Starex','MP04','2016/11/10','2021/11/20',2),
('DK007','NCC005','DV01',N'Cerato','MP03','2015/11/30','2016/01/25',8),
('DK008','NCC006','DV01',N'Vios','MP02','2016/02/28','2016/08/15',9),
('DK009','NCC005','DV03',N'Grand-i10','MP02','2016/04/27','2017/04/20',10),
('DK010','NCC006','DV01',N'Forte','MP02','2015/11/21','2016/02/22',4),
('DK011','NCC007','DV01',N'Forte','MP01','2016/12/25','2017/02/20',5),
('DK012','NCC007','DV03',N'Cerato','MP01','2016/04/14','2017/12/20',6),
('DK013','NCC003','DV02',N'Cerato','MP01','2015/12/21','2016/12/21',8),
('DK014','NCC008','DV02',N'Cerato','MP01','2016/05/20','2016/12/30',1),
('DK015','NCC003','DV01',N'Hiace','MP02','2018/04/24','2019/11/20',6),
('DK016','NCC001','DV03',N'Grand-i10','MP02','2016/06/22','2016/12/21',8),
('DK017','NCC002','DV03',N'Cerato','MP03','2016/09/30','2019/09/30',4),
('DK018','NCC006','DV03',N'Escape','MP04','2017/12/13','2018/09/30',2),
('DK019','NCC003','DV03',N'Escape','MP03','2016/01/24','2016/12/30',8),
('DK020','NCC002','DV03',N'Cerato','MP04','2016/05/03','2017/10/21',7),
('DK021','NCC006','DV01',N'Forte','MP02','2015/01/30','2016/12/30',9),
('DK022','NCC002','DV02',N'Cerato','MP04','2016/07/25','2017/12/30',6),
('DK023','NCC002','DV01',N'Forte','MP03','2017/11/30','2018/05/20',5),
('DK024','NCC004','DV03',N'Forte','MP04','2017/12/23','2019/11/30',8),
('DK025','NCC003','DV03',N'Hiace','MP02','2016/06/24','2017/10/25',1);


SELECT * FROM DANGKYCUNGCAP;