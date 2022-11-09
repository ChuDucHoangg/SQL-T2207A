INSERT INTO KhachHangg(ten,diachi,dienthoai)
values(N'Nguyễn Văn An',N'Nguyễn Trãi, Thanh Xuân, Hà Nội', '0987654321');

select * from KhachHangg;

INSERT INTO DanhSachHangg(ten,donvi,mota,gia,id)
VALUES(N'Máy Tính T450',N'Chiếc',N'Máy Nhập Mới',1000,1);
INSERT INTO DanhSachHangg(ten,donvi,mota,gia,id)
VALUES(N'Điện Thoại Nokia 5670',N'Chiếc',N'Điện Thoại Đang Hot',200,2);
INSERT INTO DanhSachHangg(ten,donvi,mota,gia,id)
VALUES(N'Máy In Samsung 450',N'Chiếc',N'Máy In Đang ế',100,3);

SELECT * from DanhSachHangg;

INSERT INTO DonHangg(ma,ngaydat,tongtien,dienthoai)
VALUES('123','2022-10-26',1500,'0987654321');
INSERT INTO DonHangg(ma,ngaydat,tongtien,dienthoai)
VALUES('123','2022-10-26',1500,'0987654321');

SELECT * from DonHangg;

INSERT INTO DonHangDanhSachHangg(maDH,spid,soluong,thanhtien)
VALUES('123',1,1,1000),('123',2,2,400),('123',3,1,100);

SELECT * from DonHangDanhSachHangg;

-- update
UPDATE DanhSachHangg set gia = 150 where id = 1;

UPDATE DanhSachHangg SET gia = gia + 50 where id = 1;

UPDATE DanhSachHangg SET gia = gia + 50, mota= N'May xin moi nhap'
WHERE id = 1;

UPDATE DanhSachHangg set gia = gia + 50 WHERE gia < 1000;

-- delete
DELETE FROM DanhSachHangg WHERE  id = 1;
-- liet ke
SELECT * FROM DanhSachHangg;
SELECT ten as productName,donvi as unit,gia as price FROM DanhSachHangg;
-- loc
SELECT * FROM DanhSachHangg WHERE gia > 200 and gia < 1000;
SELECT * FROM DanhSachHangg WHERE gia > 200 or donvi like N'Chiếc';
SELECT * FROM DanhSachHangg WHERE id = 1 or id = 3 or id = 5 or id = 6; 
SELECT * FROM DanhSachHangg WHERE id in (1,2,3,4,5,6,7,8,9);
-- tim kiem 
SELECT * FROM DanhSachHangg WHERE ten like 'Máy%';-- start of M(chèn tên sản phẩm bắt đầu bằng chữ 'máy' khi tìm kiếm)
SELECT * FROM DanhSachHangg WHERE ten like '%mới';-- end of (chèn tên sản phẩm cuối cùng bằng chữ 'mới' khi tìm kiếm)
SELECT * FROM DanhSachHangg WHERE ten like '%t%';-- contain (có chữ 't' ở trong)
-- sap xep 
SELECT * FROM DanhSachHangg order by gia ASC;-- giá thấp đến cao
SELECT * FROM DanhSachHangg ORDER BY gia DESC;-- ngược lại ASC
--lay theo so luong
SELECT TOP 1 * FROM DanhSachHangg ORDER by gia DESC;--lấy cái đắt nhất 
SELECT TOP 50 PERCENT * FROM DanhSachHangg ORDER by gia DESC;

SELECT top 1 * FROM DonHangg ORDER BY tongtien desc;
-- thong ke
SELECT COUNT(*) FROM DonHangg;
SELECT COUNT(*) FROM DanhSachHangg;

SELECT SUM(tongtien) as doanhthu FROM DonHangg;

SELECT AVG(tongtien) as trungbinh FROM DonHangg;
--thong ke dang nhom
SELECT COUNT(*) as tongsodon, dienthoai FROM DonHangg GROUP BY dienthoai;
SELECT SUM(tongtien) as tongtiendamua, dienthoai FROM DonHangg GROUP BY dienthoai;

CREATE view sh_lh as
select a.id,a.name,a.lhid, b.name as lhname
from SinhVien a left join LopHoc b on a.lhid = b.id;


select * from sh_lh;

CREATE procedure view_all AS
select * from KhachHangg;
select * from DonHangg;
select * from DanhSachHangg;

exec view_all;

create procedure proc_kh @t nvarchar(100),@dc NVARCHAR(255),@dt varchar(20) as
insert into KhachHangg(ten,diachi,dienthoai)
values(@t,@dc,@dt);
select * from KhacHangg;

exec proc_kh @t=N'Nguyễn Văn B',@dc=N'20 Quang Trung',@dt='02922992';