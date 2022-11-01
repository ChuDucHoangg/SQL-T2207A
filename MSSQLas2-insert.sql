insert into DanhSachSanPhamTheoHang(ma,ten,diachi,dienthoai)
values(N'123',N'ASUS',N'USA','983232');

SELECT * FROM DanhSachSanPhamTheoHang;

insert into DanhSachSanPhamm(ten,mota,donvi,gia,soluong,id)
values(N'Máy Tính T450',N'Máy nhập cũ',N'Chiếc',1000,10,1),
      (N'Điện Thoại Nokia5670',N'Điện thoại đang hot',N'Chiếc',200,200,2),
      (N'Máy In SamSung 450',N'Máy in đang loại bình',N'Chiếc',100,10,3);

select * from DanhSachSanPhamm;

insert into DanhSachSanPhamTheoHang_DanhSachSanPhamm(maDS,idSP)
VALUES(N'123',N'1');

select * from DanhSachSanPhamTheoHang_DanhSachSanPhamm;



--cau 4
--a:
select ten as cachangsanxuat from DanhSachSanPhamTheoHang;
--b:
select ten as tatcasanpham from DanhSachSanPhamm;

--cau 5
--a:
SELECT ten FROM DanhSachSanPhamTheoHang ORDER BY ten DESC;
--b:
SELECT ten,gia as giagiamdan FROM DanhSachSanPhamm ORDER BY gia DESC;
--c:
SELECT * FROM DanhSachSanPhamTheoHang;
--d:
SELECT ten,soluong FROM DanhSachSanPhamm WHERE soluong < 11;
--e:
SELECT id,ten as danhsachsanpham FROM DanhSachSanPhamm; 

--cau 6:
--a:
SELECT COUNT(*) as sohang FROM DanhSachSanPhamTheoHang;
--b:
SELECT COUNT(*) as somathang FROM DanhSachSanPhamm;
--c:
SELECT COUNT(*) as tongsoloaisanpham FROM DanhSachSanPhamm;