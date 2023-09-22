use asm3_quanlynhansu;

create table PhongBan(
	MaPB int auto_increment primary key,
	TenPB varchar(100),
	SoDienThoai int,
	Email varchar(100),
	DiaChi varchar(100)
);

create table BangLuong(
	MaBangLuong int auto_increment primary key,
    LuongCoBan float,
    PhuCap float,
    ThuongCuoiNam float,
    LuongTrachNhiem float
);

create table HopDongLaoDong(
	MaHDLD int auto_increment primary key,
    LoaiHDLD varchar(20),
    NgayKy date,
    NgayHetHan date
);

create table NhanVien(
	MaNhanVien int auto_increment primary key,
    Ho varchar(30),
    TenDem varchar (100),
    Ten varchar(30),
    CCCD varchar(30),
    NgaySinh date,
    QueQuan varchar(200),
    ChucVu varchar(50),
    CapBac varchar(50),
    SoDienThoai int,
    EmailNoiBo varchar(100),
    NgayVaoCongTy date,
    NgayRoiCongTy date,
    DanToc varchar(50),
    TonGiao varchar(50),
    SoNguoiPhuThuoc int,
    MaPB int,
    MaHDLD int,
    MaBangLuong int,
    foreign key (MaPB) references PhongBan(MaPB),
    foreign key (MaHDLD) references HopDongLaoDong(MaHDLD),
    foreign key (MaBangLuong) references BangLuong(MaBangLuong)
);

