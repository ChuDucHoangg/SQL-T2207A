insert into ThongTinKhachHang(ten,cmtnd,diachi)
values (N'Nguyễn Nguyệt NGA',123456789,N'Hà Nội');

select * from ThongTinKhachHang;

insert into ThueBaoKhachHang(so,loai,ngaydangky)
values (123456789,N'Trả trước','02/12/12');

select * from ThueBaoKhachHang;

insert into ThongTincuaThueBao(cmtKH,soTB)
values (123456789,123456789);

select * from ThongTincuaThueBao;

-- câu 4:
--a:
select * from ThongTinKhachHang;
--b:
select * from ThueBaoKhachHang;

-- câu 5:
--a:
SELECT * FROM ThueBaoKhachHang WHERE so like 123456789;
--b:
select * from ThongTinKhachHang where cmtnd like 123456789;
--c:
select so from ThueBaoKhachHang where so in
(select soTB from ThongTincuaThueBao where cmtKH in 
(select cmtnd from ThongTinKhachHang where cmtnd like 123456789));
--d:
select so from ThueBaoKhachHang where ngaydangky like '02/12/12'; 
--e:
select so from ThueBaoKhachHang where so in
(select soTB from ThongTincuaThueBao where cmtKH in
(select cmtnd from ThongTinKhachHang where diachi like N'Hà Nội'));

--câu 6:
--a:
select count(ten) as tongkhachhang from ThongTinKhachHang;
--b:
select count(so) as tongsothuebao from ThueBaoKhachHang;
--c:
select count(so) as 'tongsothuebaodangkyngay12/12/09' from ThueBaoKhachHang where ngaydangky like '12/12/09';
--d:
select * from ThueBaoKhachHang a 
inner join ThongTincuaThueBao b on a.so = b.soTB
inner join ThongTinKhachHang c on b.cmtKH = c.cmtnd;