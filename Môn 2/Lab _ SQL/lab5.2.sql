-- cau 1
alter table phanloaiHH
add column makho int unique;


-- cau 2
alter table phanloaiHH
rename column maNhomHH to maLoaiHH,
rename column tenNhomHH to tenLoaiHH;


-- cau 3
alter table phanloaiHH
modify column tenloaiHH nvarchar(100);

alter table danhmucHH
modify column donvitinh nvarchar(100);


-- cau 4
insert into danhmucHH(maHH,tenHH,maNhomHH,donvitinh)
values
('T005', 'Thịt gà', 'TS',  'kg');


-- cau 5: update từng vị trí 1
update phanloaihh
set tenloaihh = 'Đồ khô'
where maloaihh = 'DK';

update phanloaiHH
set tenLoaiHH = 'Thực phẩm đông lạnh'
where maloaihh = 'DL';

update phanloaiHH
set tenLoaiHH = 'Thực phẩm tươi sống'
where maLoaiHH = 'TS';

-- cau 6
delete from danhmucHH
where maHH = 'T005';


-- cau 7 

update phanloaihh
set makho = 2
where maloaihh = 'DK';

update phanloaiHH
set makho = 1
where maloaihh = 'DL';

update phanloaiHH
set makho = 3
where maLoaiHH = 'TS';


-- cau 8: xóa cột makho
alter table phanloaiHH
drop column makho;
