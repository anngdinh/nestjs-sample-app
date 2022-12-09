------------------------------------ADD Constaint--------------------------------
--Account_GV
ALTER TABLE Account_GV ADD  CONSTRAINT [FK_ACGV_ma_phu_huynh]
FOREIGN KEY (ma_giao_vien) REFERENCES Giao_Vien(ma_giao_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Account_GV CHECK CONSTRAINT [FK_ACGV_ma_phu_huynh]
GO


--Account_HV
ALTER TABLE Account_HV ADD  CONSTRAINT [FK_ACHV_ma_phu_huynh]
FOREIGN KEY (ma_hoc_vien) REFERENCES Hoc_Vien(ma_hoc_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Account_HV CHECK CONSTRAINT [FK_ACHV_ma_phu_huynh]
GO


--Account_QL
ALTER TABLE Account_QL ADD  CONSTRAINT [FK_ACQL_ma_phu_huynh]
FOREIGN KEY (ma_quan_ly) REFERENCES Quan_Ly(ma_quan_ly) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Account_QL CHECK CONSTRAINT [FK_ACQL_ma_phu_huynh]
GO


-- Quan_Ly
ALTER TABLE Quan_Ly
ADD FOREIGN KEY (ma_chi_nhanh) REFERENCES Chi_Nhanh(ma_chi_nhanh);

-- Phu_Huynh
ALTER TABLE Phu_Huynh ADD  CONSTRAINT [FK_PH_ma_hoc_vien]
FOREIGN KEY (ma_hoc_vien) REFERENCES Hoc_Vien(ma_hoc_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Phu_Huynh CHECK CONSTRAINT [FK_PH_ma_hoc_vien]
GO

-- Tiet_Hoc
ALTER TABLE Tiet_Hoc ADD  CONSTRAINT [FK_TH_ma_lop_hoc]
FOREIGN KEY (ma_lop_hoc) REFERENCES Lop_Hoc(ma_lop_hoc) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Tiet_Hoc ADD  CONSTRAINT [FK_TH_ma_giao_vien]
FOREIGN KEY (ma_giao_vien) REFERENCES Giao_Vien(ma_giao_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Tiet_Hoc CHECK CONSTRAINT [FK_TH_ma_lop_hoc]
ALTER TABLE Tiet_Hoc CHECK CONSTRAINT [FK_TH_ma_giao_vien]
GO

--Lop_Hoc
ALTER TABLE Lop_Hoc ADD  CONSTRAINT [FK_LH_phong_hoc]
FOREIGN KEY (so_phong,ma_chi_nhanh) REFERENCES Phong_Hoc(so_phong,ma_chi_nhanh) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Lop_Hoc ADD  CONSTRAINT [FK_LH_ma_giao_vien]
FOREIGN KEY (ma_giao_vien) REFERENCES Giao_Vien(ma_giao_vien) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE Lop_Hoc ADD  CONSTRAINT [FK_LH_ma_khoa_hoc]
FOREIGN KEY (ma_khoa_hoc) REFERENCES Khoa_Hoc(ma_khoa_hoc) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Lop_Hoc CHECK CONSTRAINT [FK_LH_phong_hoc]
ALTER TABLE Lop_Hoc CHECK CONSTRAINT [FK_LH_ma_giao_vien]
ALTER TABLE Lop_Hoc CHECK CONSTRAINT [FK_LH_ma_khoa_hoc]
GO

--Khoa_Hoc
ALTER TABLE Khoa_Hoc ADD  CONSTRAINT [FK_KH_ma_chuong_trinh]
FOREIGN KEY (ma_chuong_trinh) REFERENCES Chuong_Trinh_Hoc(ma_chuong_trinh) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Khoa_Hoc CHECK CONSTRAINT [FK_KH_ma_chuong_trinh]
GO

--Bien_Lai_Thu_Tien
ALTER TABLE Bien_Lai_Thu_Tien
ADD FOREIGN KEY (ma_lop_hoc) REFERENCES Lop_Hoc(ma_lop_hoc);
ALTER TABLE Bien_Lai_Thu_Tien
ADD FOREIGN KEY (ma_hoc_vien) REFERENCES Hoc_Vien(ma_hoc_vien);


-- Trien_Khai
ALTER TABLE Trien_Khai ADD  CONSTRAINT [FK_TK_ma_chuong_trinh]
FOREIGN KEY (ma_chuong_trinh) REFERENCES Chuong_Trinh_Hoc(ma_chuong_trinh) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Trien_Khai ADD  CONSTRAINT [FK_TK_ma_chi_nhanh]
FOREIGN KEY (ma_chi_nhanh) REFERENCES Chi_Nhanh(ma_chi_nhanh) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Trien_Khai CHECK CONSTRAINT [FK_TK_ma_chuong_trinh]
ALTER TABLE Trien_Khai CHECK CONSTRAINT [FK_TK_ma_chi_nhanh]
GO

--Lo_Trinh_Hoc
ALTER TABLE Lo_Trinh_Hoc ADD  CONSTRAINT [FK_LTH_ma_chuong_trinh]
FOREIGN KEY (ma_chuong_trinh) REFERENCES Chuong_Trinh_Hoc(ma_chuong_trinh) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Lo_Trinh_Hoc CHECK CONSTRAINT [FK_LTH_ma_chuong_trinh]
GO

--Chuong_Trinh_Hoc_Truoc_Do
ALTER TABLE Chuong_Trinh_Hoc_Truoc_Do ADD  CONSTRAINT [FK_CTHT_ma_chuong_trinh]
FOREIGN KEY (ma_chuong_trinh) REFERENCES Chuong_Trinh_Hoc(ma_chuong_trinh) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Chuong_Trinh_Hoc_Truoc_Do ADD  CONSTRAINT [FK_CTHT_ma_chuong_trinh_truoc_do]
FOREIGN KEY (ma_chuong_trinh_truoc_do) REFERENCES Chuong_Trinh_Hoc(ma_chuong_trinh) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE Chuong_Trinh_Hoc_Truoc_Do CHECK CONSTRAINT [FK_CTHT_ma_chuong_trinh]
ALTER TABLE Chuong_Trinh_Hoc_Truoc_Do CHECK CONSTRAINT [FK_CTHT_ma_chuong_trinh_truoc_do]
GO

--To_Chuc
ALTER TABLE To_Chuc ADD  CONSTRAINT [FK_TC_ma_khoa_hoc]
FOREIGN KEY (ma_khoa_hoc) REFERENCES Khoa_Hoc(ma_khoa_hoc) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE To_Chuc ADD  CONSTRAINT [FK_TC_ma_chi_nhanh]
FOREIGN KEY (ma_chi_nhanh) REFERENCES Chi_Nhanh(ma_chi_nhanh) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE To_Chuc CHECK CONSTRAINT [FK_TC_ma_khoa_hoc]
ALTER TABLE To_Chuc CHECK CONSTRAINT [FK_TC_ma_chi_nhanh]
GO


-- foreign key ma_khoa_hoc,ma_hoc_vien

ALTER TABLE Dang_Ki ADD  CONSTRAINT [FK_DK_ma_khoa_hoc]
FOREIGN KEY (ma_khoa_hoc) REFERENCES Khoa_Hoc(ma_khoa_hoc) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Dang_Ki ADD  CONSTRAINT [FK_DK_ma_hoc_vien]
FOREIGN KEY (ma_hoc_vien) REFERENCES Hoc_Vien(ma_hoc_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Dang_Ki CHECK CONSTRAINT [FK_DK_ma_khoa_hoc]
ALTER TABLE Dang_Ki CHECK CONSTRAINT [FK_DK_ma_hoc_vien]
GO


--Ap_Dung
ALTER TABLE Ap_Dung  ADD  CONSTRAINT [FK_AD_ma_bien_lai]
FOREIGN KEY (ma_bien_lai) REFERENCES Bien_Lai_Thu_Tien(ma_bien_lai) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Ap_Dung  ADD  CONSTRAINT [FK_AD_ma_khuyen_mai]
FOREIGN KEY (ma_khuyen_mai) REFERENCES Khuyen_Mai(ma_khuyen_mai) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Ap_Dung CHECK CONSTRAINT [FK_AD_ma_bien_lai]
ALTER TABLE Ap_Dung CHECK CONSTRAINT [FK_AD_ma_khuyen_mai]
GO


--Diem_Danh
ALTER TABLE Diem_Danh  ADD  CONSTRAINT [FK_DD_ma_tiet_hoc]
FOREIGN KEY (ma_tiet_hoc) REFERENCES Tiet_Hoc(ma_tiet_hoc) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Diem_Danh  ADD  CONSTRAINT [FK_DD_ma_hoc_vien]
FOREIGN KEY (ma_hoc_vien) REFERENCES Hoc_Vien(ma_hoc_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Diem_Danh CHECK CONSTRAINT [FK_DD_ma_tiet_hoc]
ALTER TABLE Diem_Danh CHECK CONSTRAINT [FK_DD_ma_hoc_vien]
GO

--Hoc
ALTER TABLE Hoc  ADD  CONSTRAINT [FK_H_ma_lop_hoc]
FOREIGN KEY (ma_lop_hoc) REFERENCES Lop_Hoc(ma_lop_hoc) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Hoc  ADD  CONSTRAINT [FK_H_ma_hoc_vien]
FOREIGN KEY (ma_hoc_vien) REFERENCES Hoc_Vien(ma_hoc_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Hoc CHECK CONSTRAINT [FK_H_ma_lop_hoc]
ALTER TABLE Hoc CHECK CONSTRAINT [FK_H_ma_hoc_vien]
GO

--Chung_Chi
ALTER TABLE Chung_Chi ADD  CONSTRAINT [FK_CC_ma_giao_vien]
FOREIGN KEY (ma_giao_vien) REFERENCES Giao_Vien(ma_giao_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Chung_Chi CHECK CONSTRAINT [FK_CC_ma_giao_vien]
GO

--Email_GV
ALTER TABLE Email_GV ADD CONSTRAINT [FK_Email_ma_giao_vien]
FOREIGN KEY (ma_giao_vien) REFERENCES Giao_Vien(ma_giao_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Email_GV CHECK CONSTRAINT [FK_Email_ma_giao_vien]
GO

--SDT_GV
ALTER TABLE SDT_GV ADD CONSTRAINT [FK_SDT_ma_giao_vien]
FOREIGN KEY (ma_giao_vien) REFERENCES Giao_Vien(ma_giao_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE SDT_GV CHECK CONSTRAINT [FK_SDT_ma_giao_vien]
GO


--Email_HV
ALTER TABLE Email_HV ADD  CONSTRAINT [FK_Email_ma_hoc_vien]
FOREIGN KEY (ma_hoc_vien) REFERENCES Hoc_Vien(ma_hoc_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Email_HV CHECK CONSTRAINT [FK_Email_ma_hoc_vien]
GO

--SDT_HV
ALTER TABLE SDT_HV ADD  CONSTRAINT [FK_SDT_ma_hoc_vien]
FOREIGN KEY (ma_hoc_vien) REFERENCES Hoc_Vien(ma_hoc_vien) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE SDT_HV CHECK CONSTRAINT [FK_SDT_ma_hoc_vien]
GO

--Email_QL
ALTER TABLE Email_QL ADD  CONSTRAINT [FK_Email_ma_quan_ly]
FOREIGN KEY (ma_quan_ly) REFERENCES Quan_Ly(ma_quan_ly) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Email_QL CHECK CONSTRAINT [FK_Email_ma_quan_ly]
GO

--SDT_QL
ALTER TABLE SDT_QL ADD  CONSTRAINT [FK_SDT_ma_quan_ly]
FOREIGN KEY (ma_quan_ly) REFERENCES Quan_Ly(ma_quan_ly) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE SDT_QL CHECK CONSTRAINT [FK_SDT_ma_quan_ly]
GO

--Email_PH
ALTER TABLE Email_PH ADD  CONSTRAINT [FK_Email_ma_phu_huynh]
FOREIGN KEY (ma_phu_huynh) REFERENCES Phu_Huynh(ma_phu_huynh) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE Email_PH CHECK CONSTRAINT [FK_Email_ma_phu_huynh]
GO

--SDT_PH
ALTER TABLE SDT_PH ADD  CONSTRAINT [FK_SDT_ma_phu_huynh]
FOREIGN KEY (ma_phu_huynh) REFERENCES Phu_Huynh(ma_phu_huynh) ON DELETE CASCADE ON UPDATE CASCADE;
GO
ALTER TABLE SDT_PH CHECK CONSTRAINT [FK_SDT_ma_phu_huynh]
GO


-------