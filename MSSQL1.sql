--cau 4
SELECT ten FROM KhachHangg;
SELECT ten FROM DanhSachHangg;
SELECT ma,ngaydat FROM DonHangg;

--cau 5
SELECT ten FROM KhachHangg ORDER BY ten ASC;
SELECT ten,gia FROM DanhSachHangg ORDER BY gia DESC;
SELECT ten as sanphamdamua FROM DanhSachHangg;

--cau 6
SELECT COUNT(*) as tongsokhachhangdamua FROM KhachHangg;
SELECT COUNT(*) as tongsomathang FROM DanhSachHangg;
SELECT SUM(tongtien) as tongtiendamua, ma FROM DonHangg GROUP BY ma;