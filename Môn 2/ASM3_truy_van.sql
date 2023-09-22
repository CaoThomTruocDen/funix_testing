-- 1. Lập danh sách nhân viên vào làm việc tại công ty từ ngày 8/3/2021
-- select 
	-- maNV as 'Mã nhân viên', 
	-- HoTen as 'Họ tên', 
	-- NgaySinh as 'Ngày sinh', 
	-- QueQuan as 'Quê quán', 
	-- nhanvien.SoDienThoai as 'Số điện thoại', 
	-- ChucVu as 'Chức vụ', 
	-- NgayVao as 'Ngày vào công ty', 
	-- PHONGBAN.TenPB as 'Tên bộ phận' 
-- from NHANVIEN
-- left join Phongban
-- on nhanvien.maPB = phongban.maPB
-- where NgayVao >= '2021-03-08';

-- OR
select 
	maNV as 'Mã nhân viên', 
	HoTen as 'Họ tên', 
	NgaySinh as 'Ngày sinh', 
	QueQuan as 'Quê quán', 
	nhanvien.SoDienThoai as 'Số điện thoại', 
	ChucVu as 'Chức vụ', 
	NgayVao as 'Ngày vào công ty', 
	PHONGBAN.TenPB as 'Tên bộ phận' 
from NHANVIEN, PHONGBAN
where NgayVao >= '2021-03-08' 
and nhanvien.maPB = phongban.maPB;


-- 2. Danh sách thông tin nhân viên kí hợp đồng chính thức sau ngày 01/03/2018
select 
	nhanvien.maNV as 'Mã nhân viên',
	HoTen as 'Họ tên',
	NgaySinh as 'Ngày sinh',
	QueQuan as 'Quê quán',
	nhanvien.SoDienThoai as 'Số điện thoại',
	ChucVu as 'Chức vụ',
	NgayVao as 'Ngày vào công ty',
	phongban.tenPB as 'Tên bộ phận',
	TuNgay as 'Ngày kí hợp đồng chính thức'
from nhanvien,phongban,hopdonglaodong
where 
	TuNgay > '2021-03-01' 
	and nhanvien.maPB=phongban.maPB 
	and nhanvien.maNV=hopdonglaodong.maNV;


-- 3. Ai là trưởng phòng của phòng Hành chính?
select 
	maNV as 'Mã nhân viên',
	HoTen as 'Họ tên',
	NgaySinh as 'Ngày sinh',
	QueQuan as 'Quê quán',
	nhanvien.SoDienThoai as 'Số điện thoại',
	ChucVu as 'Chức vụ', 
	NgayVao as 'Ngày vào công ty',
	LuongCoBan as 'Lương cơ bản',
	PhuCap as 'Phụ cấp'
from nhanvien,phongban,bangluong
where 
	nhanvien.maPB=phongban.maPB 
	and nhanvien.MaBangLuong=bangluong.MaBangLuong 
	and TenPB = 'Phòng Hành Chính' 
	and ChucVu = 'Trưởng Phòng';


-- 4. Tính tổng số nhân viên hiện nay của phòng kế hoạch
select 
	TenPB as 'Tên phòng ban', 
	count(*) as 'Số lượng nhân viên của phòng ban' 
from phongban,nhanvien
where phongban.maPB=nhanvien.maPB 
group by TenPB;


-- 5. Liệt kê danh sách nhân viên đã làm việc trên 4 năm
select 
	nhanvien.maNV as 'Mã nhân viên',
	HoTen as 'Họ tên',
	NgaySinh as 'Ngày sinh',
	QueQuan as 'Quê quán',
	nhanvien.SoDienThoai as 'Số điện thoại', 
	ChucVu as 'Chức vụ',
	NgayVao as 'Ngày vào công ty',
	TenPB as 'Tên bộ phận',
	year(current_timestamp)-year(NgayVao) as 'Số năm làm việc tính đến thời điểm hiện tại'
from nhanvien,phongban
where 
	nhanvien.maPB=phongban.maPB and 
	year(current_timestamp)-year(NgayVao) > 4;


-- 6. Sửa thông tin ngày sinh của nhân viên có mã nhân viên là 31019  thành 15/3/1988
UPDATE nhanvien
set NgaySinh='1988-03-15'
where maNV=31019;

select 
	maNV as 'Mã nhân viên', 
	HoTen as 'Họ tên',
	NgaySinh as 'Ngày sinh',
	QueQuan as 'Quê quán',
	nhanvien.SoDienThoai as 'Số điện thoại', 
	ChucVu as 'Chức vụ',
	NgayVao as 'Ngày vào công ty',
	TenPB as 'Tên bộ phận' 
from nhanvien,phongban
where 
	maNV=31019 
	and nhanvien.maPB=phongban.maPB;


-- 7. Tìm kiếm tất cả nhân viên có tên là Nam
select 
	maNV as 'Mã nhân viên', 
	HoTen as 'Họ tên',
	NgaySinh as 'Ngày sinh',
	QueQuan as 'Quê quán',
	nhanvien.SoDienThoai as 'Số điện thoại', 
	ChucVu as 'Chức vụ',
	NgayVao as 'Ngày vào công ty',
	TenPB as 'Tên bộ phận' 
from nhanvien,phongban
where 
	right(HoTen,4)=' Nam' 
	and nhanvien.maPB=phongban.maPB;


-- 8. Xóa nhân viên có mã nhân viên là 31030 ra khỏi cơ sở dữ liệu
delete from nhanvien
where maNV=31030;
delete from hopdonglaodong
where maNV=31030;

select * from nhanvien
where maNV=31030;
select * from hopdonglaodong
where maNV=31030;


-- 9. Lập danh sách thống kê tổng số nhân viên theo quê quán của mỗi phòng ban
select 
	tenPB as 'Tên phòng ban',
	QueQuan as 'Tỉnh thành',
	count(*) as 'Số lượng nhân viên' 
from phongban,nhanvien
where nhanvien.maPB=phongban.maPB
group by tenPB, QueQuan
order by tenPB asc, count(*) desc, QueQuan asc;


-- 10. Tính trung bình mức lương (lương cơ bản + phụ cấp) của mỗi phòng ban trong công ty
select 
	TenPB as 'Tên phòng ban',
	round(avg(luongcoban+phucap)) as 'Mức lương trung bình' 
from phongban,bangluong,nhanvien
where 
	nhanvien.maPB=phongban.maPB 
	and nhanvien.MaBangLuong=bangluong.MaBangLuong
group by nhanvien.maPB;




