
CREATE TABLE Account_GV(
	tai_khoan nvarchar(255) NOT NULL PRIMARY KEY,
	mat_khau nvarchar(255) NOT NULL,
	ma_giao_vien int NOT NULL
);

CREATE TABLE Account_HV(
	tai_khoan nvarchar(255) NOT NULL PRIMARY KEY,
	mat_khau nvarchar(255) NOT NULL,
	ma_hoc_vien int NOT NULL
);

CREATE TABLE Account_QL(
	tai_khoan nvarchar(255) NOT NULL PRIMARY KEY,
	mat_khau nvarchar(255) NOT NULL,
	ma_quan_ly int NOT NULL
);

CREATE TABLE Quan_Ly(
	ma_quan_ly int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ten nvarchar(255) NOT NULL,
	ngay_sinh date,
	dia_chi nvarchar(255),
	bang_dai_hoc nvarchar(255),
	ma_chi_nhanh int NOT NULL
);

CREATE TABLE Giao_Vien(
	ma_giao_vien int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	ten nvarchar(255) NOT NULL,
	ngay_sinh date,
	dia_chi nvarchar(255),

);

CREATE TABLE Hoc_Vien(
	ma_hoc_vien int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ten nvarchar(255) NOT NULL,
	ngay_sinh date,
	dia_chi nvarchar(255),
);

CREATE TABLE Phu_Huynh(
	ma_phu_huynh int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ngay_sinh date,
	ten nvarchar(255) NOT NULL,
	ma_hoc_vien int NOT NULL,
);


CREATE TABLE Tiet_Hoc(
	ma_tiet_hoc int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ngay_hoc date,
	gio_bat_dau nvarchar(255),
	gio_kiem_tra nvarchar(255),
	ma_lop_hoc int NOT NULL,
	ma_giao_vien int NOT NULL,
	ghi_chu nvarchar(255)
);


CREATE TABLE Lop_Hoc(
	ma_lop_hoc int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	so_luong int,
	so_phong int NOT NULL,
	ma_chi_nhanh int NOT NULL,
	ma_giao_vien int NOT NULL,
	ma_khoa_hoc int NOT NULL
);

CREATE TABLE Khoa_Hoc(
	ma_khoa_hoc int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ten_khoa_hoc nvarchar(255),
	thoi_gian_bat_dau date,
	thoi_gian_ket_thuc date,
	hoc_phi int,
	ma_chuong_trinh int NOT NULL
);



CREATE TABLE Phong_Hoc(
	so_phong int NOT NULL,
	ma_chi_nhanh int NOT NULL,
	suc_chua int NOT NULL,
	PRIMARY KEY(so_phong,ma_chi_nhanh)
);
CREATE TABLE Chi_Nhanh(
	ma_chi_nhanh int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ten_chi_nhanh nvarchar(255) NOT NULL,
	dia_chi nvarchar(255) NOT NULL
);

CREATE TABLE Bien_Lai_Thu_Tien(
	ma_bien_lai int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	so_tien_goc int NOT NULL,
	so_tien_can_thanh_toan int NOT NULL,
	so_tien_da_thanh_toan int NOT NULL,
	so_tien_con_lai int NOT NULL,
	hinh_thuc nvarchar(255) NOT NULL,
	ma_lop_hoc int NOT NULL,
	ma_hoc_vien int NOT NULL
);


CREATE TABLE Chuong_Trinh_Hoc(
	ma_chuong_trinh int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ten_chuong_trinh nvarchar(255) NOT NULL,
	tai_lieu nvarchar(255),
	muc_tieu nvarchar(255)
);

CREATE TABLE Khuyen_Mai(
	ma_khuyen_mai int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ap_dung nvarchar(255) NOT NULL,
	hinh_thuc_khuyen_mai nvarchar(255) NOT NULL,
	gia_tri int NOT NULL,
	ngay_bat_dau date,
	ngay_ket_thuc date
);

CREATE TABLE Trien_Khai(
	ma_chuong_trinh int NOT NULL,
	ma_chi_nhanh int NOT NULL,
	PRIMARY KEY(ma_chuong_trinh,ma_chi_nhanh)
);

CREATE TABLE Lo_Trinh_Hoc(
	buoi int NOT NULL,
	noi_dung nvarchar(255) NOT NULL,
	ma_chuong_trinh int NOT NULL,
	PRIMARY KEY (buoi,noi_dung,ma_chuong_trinh)
);



CREATE TABLE Chuong_Trinh_Hoc_Truoc_Do(
	ma_chuong_trinh int NOT NULL,
	ma_chuong_trinh_truoc_do int NOT NULL
);


CREATE TABLE To_Chuc(
	ma_khoa_hoc int NOT NULL,
	ma_chi_nhanh int NOT NULL,
	PRIMARY KEY (ma_khoa_hoc,ma_chi_nhanh)
);

CREATE TABLE Dang_Ki(
	ma_khoa_hoc int NOT NULL,
	ma_hoc_vien int NOT NULL,
	PRIMARY KEY(ma_khoa_hoc, ma_hoc_vien)
);


CREATE TABLE Ap_Dung(
	ma_bien_lai int NOT NULL,
	ma_khuyen_mai int NOT NULL,
	PRIMARY KEY(ma_bien_lai,ma_khuyen_mai)
);



CREATE TABLE Diem_Danh(
	ma_tiet_hoc int NOT NULL,
	ma_hoc_vien int NOT NULL,
	tinh_trang nvarchar(255),
	PRIMARY KEY(ma_tiet_hoc,ma_hoc_vien)
);



CREATE TABLE Hoc(
	ma_lop_hoc int NOT NULL,
	ma_hoc_vien int NOT NULL,
	PRIMARY KEY (ma_lop_hoc,ma_hoc_vien)
);




CREATE TABLE Chung_Chi(
	ten_chung_chi nvarchar(255) NOT NULL,
	ngay_thi date,
	thoi_han date,
	ma_giao_vien int NOT NULL,
	PRIMARY KEY(ten_chung_chi,ngay_thi,thoi_han,ma_giao_vien)
);



CREATE TABLE Email_GV(
	ma_giao_vien int NOT NULL,
	email nvarchar(255) NOT NULL,
	PRIMARY KEY(ma_giao_vien,email)
);


CREATE TABLE SDT_GV(
	ma_giao_vien int NOT NULL,
	sdt nvarchar(255) NOT NULL,
	PRIMARY KEY(ma_giao_vien,sdt)
);


CREATE TABLE Email_HV(
	ma_hoc_vien int NOT NULL,
	email nvarchar(255) NOT NULL,
	PRIMARY KEY(ma_hoc_vien,email)
);




CREATE TABLE SDT_HV(
	ma_hoc_vien int NOT NULL,
	sdt nvarchar(255) NOT NULL,
	PRIMARY KEY(ma_hoc_vien,sdt)
);


CREATE TABLE Email_QL(
	ma_quan_ly int NOT NULL,
	email nvarchar(255) NOT NULL,
	PRIMARY KEY(ma_quan_ly,email)
);



CREATE TABLE SDT_QL(
	ma_quan_ly int NOT NULL,
	sdt nvarchar(255) NOT NULL,
	PRIMARY KEY(ma_quan_ly,sdt)
);


CREATE TABLE Email_PH(
	ma_phu_huynh int NOT NULL,
	email nvarchar(255) NOT NULL,
	PRIMARY KEY(ma_phu_huynh,email)
);

CREATE TABLE SDT_PH(
	ma_phu_huynh int NOT NULL,
	sdt nvarchar(255) NOT NULL,
	PRIMARY KEY(ma_phu_huynh,sdt)
);

