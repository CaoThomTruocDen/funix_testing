-- cau 1: Tạo database tên quanlykho.
create database quanlykho1;

-- cau 2
use quanlykho1;
create table danhmuckho(
	makho int,
    tenkho varchar(100)
);

-- cau 3
drop table danhmuckho;

-- cau 4
show tables in quanlykho1;

-- cau 5
create table phanloaiHH(
	maNhomHH varchar(100),
    tenNhomHH varchar(255)
);


-- cau 6
insert into phanloaiHH
values
('DL', 'Thuc pham đong lanh'),
('DK', 'Đo kho'),
('TS', 'Thuc pham tuoi song');


-- cau 7
create table danhmucHH(
	maHH varchar(100) not null primary key,
    tenHH nvarchar(255),
    maNhomHH varchar(100),
    soluong int,
    donvitinh varchar(100)
);


-- cau 8
insert into danhmucHH
values
('T001','Thịt lợn','TS', 100, 'kg'),
('T002','Thịt bò','TS', 20, 'kg'),
('T003','Trứng','TS', 1000, 'qua'),
('R001', 'Rau muống','TS', 10, 'bo'),
('M001', 'Mắm Khải Hoàn','DK', 30, 'chai'),
('M002', 'Miến','DK', 35, 'goi'),
('M003', 'Mực khô','DL', 5, 'kg');


-- cau 9
select * from danhmucHH;


-- cau 10
alter table phanloaiHH
add primary key (maNhomHH);

alter table danhmucHH
add foreign key (maNhomHH) references phanloaiHH(maNhomHH);


-- cau 11
show tables in quanlykho1;


