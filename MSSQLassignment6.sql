CREATE TABLE Sach(
    ten NVARCHAR(50) not null,
    tacgia NVARCHAR(50) not null,
    noidung NTEXT not null,
    gia DECIMAL(12,4) not null,
    namxb date not null,
    lanxb int not null,
    soluong int not null,
    ma NVARCHAR(20) PRIMARY KEY 
);
CREATE TABLE LoaiSach(
    ten NVARCHAR(20) FOREIGN KEY REFERENCES Sach(ma),
    idSach int identity(1,1) PRIMARY KEY  
);
CREATE TABLE NXB(
    nxb NVARCHAR(255) not null,
    diachi NVARCHAR(255) not null,
    id int identity(1,1) PRIMARY KEY 
);
CREATE TABLE NXB_LoaiSach(
    idLS int FOREIGN KEY REFERENCES LoaiSach(idSach),
    idNXB int FOREIGN KEY REFERENCES NXB(id)
);

CREATE PROCEDURE proc_sach @t NVARCHAR(50),@tg NVARCHAR(50),@nd NTEXT,@g DECIMAL(12,4),@nxb date,@lxb int,@sl int,@m NVARCHAR(20) as
INSERT INTO Sach(ten,tacgia,noidung,gia,namxb,lanxb,soluong,ma)
VALUES  (@t,@tg,@nd,@g,@nxb,@lxb,@sl,@m);
SELECT * from Sach;  

exec proc_sach @t=N'Trí tuệ Do Thái',@tg=N'Eran Katz',@nd=N'Bạn có muốn biết: Người Do Thái 
sáng tạo ra cái gì và nguồn gốc trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dần
 hé lộ những bí ẩn về sự thông thái của người Do Thái, của một dân tộc thông tuệ với những 
 phương pháp và kỹ thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như 
 một bí ẩn mật mang tính văn hóa.',@g=79000,@nxb='2010',@lxb=1,@sl=100,@m=N'B002';

CREATE PROCEDURE proc_loaisach @t NVARCHAR(20) as
INSERT INTO LoaiSach(ten)
VALUES (@t);
SELECT * FROM loaiSach;

exec proc_loaisach @t=N'Khoa Học Xã Hội';

CREATE PROCEDURE proc_nxb @nxb NVARCHAR(255),@dc NVARCHAR(255) as
INSERT INTO NXB(nxb,diachi)
VALUES (@nxb,@dc);
SELECT * FROM NXB;

exec proc_nxb @nxb=N'Tri Thức',@dc=N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội';

CREATE PROCEDURE proc_nxbls @ils int,@inxb int as
INSERT INTO NXB_LoaiSach(idLS,idNXB)
VALUES (@ils,@inxb);
SELECT * FROM NXB_LoaiSach;

exec proc_nxbls @ils='',@inxb='';


--câu3:
SELECT * FROM Sach where namxb>2008 and namxb<2022;
--câu4:
SELECT TOP 10 * FROM Sach ORDER BY gia DESC;
--câu5:
SELECT ten FROM Sach WHERE ten like N'%tin học%';
--câu6:
SELECT ten,ma FROM Sach WHERE ten like N'T%' ORDER BY gia DESC;
--câu7:
SELECT ten FROM Sach WHERE ma in 
(SELECT ten FROM LoaiSach where idSach in 
(SELECT idLS FROM NXB_LoaiSach where idNXB in 
(SELECT id FROM NXB WHERE nxb like N'Tri Thức')));
--câu8:
SELECT * FROM NXB WHERE id in 
(SELECT idNXB FROM NXB_LoaiSach where idLS in
(SELECT idSach FROM LoaiSach where ten in
(SELECT ma FROM Sach where ten like N'Trí tuệ Do Thái')));