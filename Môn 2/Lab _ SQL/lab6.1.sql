
-- 1.	Từ bảng danhmucHH hãy lấy danh sách gồm maHH, tenHH, donvitinh của tất cả hàng hoá có maNhomHH là “TS”
select maHH,tenHH,donvitinh from danhmucHH
where maNhomHH = 'TS';

-- 2.	Từ bảng danhmucHH, lấy danh sách của tất cả hàng hoá có maNhomHH là: “DK”
select * from danhmucHH
where maNhomHH = 'DK';

-- 3.	Có bao nhiêu hàng hoá có donvitinh là “kg”
select count(maHH) from danhmucHH
where donvitinh = 'kg';

-- 4.	Từ bảng danhmucHH, lấy danh sách của tất cả hàng hoá có maNhomHH là “TS” và có donvitinh là “kg”
select * from danhmucHH
where maNhomHH = 'TS'
and donvitinh = 'kg';

-- 5.	Từ bảng danhmucHH, lấy danh sách của tất cả hàng hoá mà trong maHH có chữ “M00”.
select * from danhmucHH
where maHH like 'M00%';

-- 6.	Từ bảng danhmucHH, lấy danh sách của tất cả hàng hoá và sắp xếp theo thứ tự bảng chữ cái từ A-Z với trường tenHH.
select * from danhmucHH
order by tenHH asc;

-- 7.	Từ bảng danhmucHH hãy chọn 3 hàng hoá có số lượng cao nhất, sắp xếp theo thứ tự từ cao đến thấp 
-- (Nếu số lượng hàng hoá bằng nhau sắp xếp theo thứ tự bảng chữ cái tưd A-Z với trường tenHH)
select * from danhmucHH
order by soluong desc, tenHH asc
limit 3;

-- 8.	Từ bảng danhmucHH, lấy danh sách của tất cả hàng hoá mà trong tenHH có chữ “thịt” và có số lượng lớn hơn 20
select * from danhmucHH
where tenHH like '%thịt%' 
and soluong > 20;

-- 9.	Lấy 3 hàng đầu tiên trong bảng danhmucHH
select * from danhmucHH
limit 3;