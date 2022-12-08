BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[Account_GV] (
    [tai_khoan] VARCHAR(255) NOT NULL,
    [mat_khau] VARCHAR(255) NOT NULL,
    [ma_giao_vien] INT NOT NULL,
    CONSTRAINT [PK__Account___ABA0D026B0078345] PRIMARY KEY CLUSTERED ([tai_khoan])
);

-- CreateTable
CREATE TABLE [dbo].[Account_HV] (
    [tai_khoan] VARCHAR(255) NOT NULL,
    [mat_khau] VARCHAR(255) NOT NULL,
    [ma_hoc_vien] INT NOT NULL,
    CONSTRAINT [PK__Account___ABA0D026A6C39A0A] PRIMARY KEY CLUSTERED ([tai_khoan])
);

-- CreateTable
CREATE TABLE [dbo].[Account_QL] (
    [tai_khoan] VARCHAR(255) NOT NULL,
    [mat_khau] VARCHAR(255) NOT NULL,
    [ma_quan_ly] INT NOT NULL,
    CONSTRAINT [PK__Account___ABA0D026861394D9] PRIMARY KEY CLUSTERED ([tai_khoan])
);

-- CreateTable
CREATE TABLE [dbo].[Ap_Dung] (
    [ma_bien_lai] INT NOT NULL,
    [ma_khuyen_mai] INT NOT NULL,
    CONSTRAINT [PK__Ap_Dung__BE79EF3E016D5388] PRIMARY KEY CLUSTERED ([ma_bien_lai],[ma_khuyen_mai])
);

-- CreateTable
CREATE TABLE [dbo].[Bien_Lai_Thu_Tien] (
    [ma_bien_lai] INT NOT NULL IDENTITY(1,1),
    [so_tien_goc] INT NOT NULL,
    [so_tien_can_thanh_toan] INT NOT NULL,
    [so_tien_da_thanh_toan] INT NOT NULL,
    [so_tien_con_lai] INT NOT NULL,
    [hinh_thuc] VARCHAR(255) NOT NULL,
    [ma_lop_hoc] INT NOT NULL,
    [ma_hoc_vien] INT NOT NULL,
    CONSTRAINT [PK__Bien_Lai__9E6367F521DD16A0] PRIMARY KEY CLUSTERED ([ma_bien_lai])
);

-- CreateTable
CREATE TABLE [dbo].[Chi_Nhanh] (
    [ma_chi_nhanh] INT NOT NULL IDENTITY(1,1),
    [ten_chi_nhanh] VARCHAR(255) NOT NULL,
    [dia_chi] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__Chi_Nhan__6477329C6A58C48B] PRIMARY KEY CLUSTERED ([ma_chi_nhanh])
);

-- CreateTable
CREATE TABLE [dbo].[Chung_Chi] (
    [ten_chung_chi] VARCHAR(255) NOT NULL,
    [ngay_thi] DATE NOT NULL,
    [thoi_han] DATE NOT NULL,
    [ma_giao_vien] INT NOT NULL,
    CONSTRAINT [PK__Chung_Ch__923C360F13C34CF6] PRIMARY KEY CLUSTERED ([ten_chung_chi],[ngay_thi],[thoi_han],[ma_giao_vien])
);

-- CreateTable
CREATE TABLE [dbo].[Chuong_Trinh_Hoc] (
    [ma_chuong_trinh] INT NOT NULL IDENTITY(1,1),
    [ten_chuong_trinh] VARCHAR(255) NOT NULL,
    [tai_lieu] VARCHAR(255),
    [muc_tieu] VARCHAR(255),
    CONSTRAINT [PK__Chuong_T__3F73C9AE8FD5F30E] PRIMARY KEY CLUSTERED ([ma_chuong_trinh])
);

-- CreateTable
CREATE TABLE [dbo].[Chuong_Trinh_Hoc_Truoc_Do] (
    [ma_chuong_trinh] INT NOT NULL,
    [ma_chuong_trinh_truoc_do] INT NOT NULL,
    CONSTRAINT [PK__Chuong_T__AA118F327A99BCA4] PRIMARY KEY CLUSTERED ([ma_chuong_trinh],[ma_chuong_trinh_truoc_do])
);

-- CreateTable
CREATE TABLE [dbo].[Dang_Ki] (
    [ma_khoa_hoc] INT NOT NULL,
    [ma_hoc_vien] INT NOT NULL,
    CONSTRAINT [PK__Dang_Ki__5694F9C461F955E8] PRIMARY KEY CLUSTERED ([ma_khoa_hoc],[ma_hoc_vien])
);

-- CreateTable
CREATE TABLE [dbo].[Diem_Danh] (
    [ma_tiet_hoc] INT NOT NULL,
    [ma_hoc_vien] INT NOT NULL,
    [tinh_trang] VARCHAR(255),
    CONSTRAINT [PK__Diem_Dan__496E415E3308AFCE] PRIMARY KEY CLUSTERED ([ma_tiet_hoc],[ma_hoc_vien])
);

-- CreateTable
CREATE TABLE [dbo].[Email_GV] (
    [ma_giao_vien] INT NOT NULL,
    [email] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__Email_GV__7F15CEE3E1A7739E] PRIMARY KEY CLUSTERED ([ma_giao_vien],[email])
);

-- CreateTable
CREATE TABLE [dbo].[Email_HV] (
    [ma_hoc_vien] INT NOT NULL,
    [email] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__Email_HV__28076C074F6D4E7A] PRIMARY KEY CLUSTERED ([ma_hoc_vien],[email])
);

-- CreateTable
CREATE TABLE [dbo].[Email_PH] (
    [ma_phu_huynh] INT NOT NULL,
    [email] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__Email_PH__623A3E253D32D69C] PRIMARY KEY CLUSTERED ([ma_phu_huynh],[email])
);

-- CreateTable
CREATE TABLE [dbo].[Email_QL] (
    [ma_quan_ly] INT NOT NULL,
    [email] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__Email_QL__5E8ED77047C85A84] PRIMARY KEY CLUSTERED ([ma_quan_ly],[email])
);

-- CreateTable
CREATE TABLE [dbo].[Giao_Vien] (
    [ma_giao_vien] INT NOT NULL IDENTITY(1,1),
    [ten] VARCHAR(255) NOT NULL,
    [ngay_sinh] DATE,
    [dia_chi] VARCHAR(255),
    CONSTRAINT [PK__Giao_Vie__35A328F5E878783C] PRIMARY KEY CLUSTERED ([ma_giao_vien])
);

-- CreateTable
CREATE TABLE [dbo].[Hoc] (
    [ma_lop_hoc] INT NOT NULL,
    [ma_hoc_vien] INT NOT NULL,
    CONSTRAINT [PK__Hoc__8829651CD05465E5] PRIMARY KEY CLUSTERED ([ma_lop_hoc],[ma_hoc_vien])
);

-- CreateTable
CREATE TABLE [dbo].[Hoc_Vien] (
    [ma_hoc_vien] INT NOT NULL IDENTITY(1,1),
    [ten] VARCHAR(255) NOT NULL,
    [ngay_sinh] DATE,
    [dia_chi] VARCHAR(255),
    CONSTRAINT [PK__Hoc_Vien__62B18A11F39EDFBC] PRIMARY KEY CLUSTERED ([ma_hoc_vien])
);

-- CreateTable
CREATE TABLE [dbo].[Khoa_Hoc] (
    [ma_khoa_hoc] INT NOT NULL IDENTITY(1,1),
    [ten_khoa_hoc] VARCHAR(255),
    [thoi_gian_bat_dau] DATE,
    [thoi_gian_ket_thuc] DATE,
    [hoc_phi] INT,
    [ma_chuong_trinh] INT NOT NULL,
    CONSTRAINT [PK__Khoa_Hoc__50BFE165F3C6D882] PRIMARY KEY CLUSTERED ([ma_khoa_hoc])
);

-- CreateTable
CREATE TABLE [dbo].[Khuyen_Mai] (
    [ma_khuyen_mai] INT NOT NULL IDENTITY(1,1),
    [ap_dung] VARCHAR(255) NOT NULL,
    [hinh_thuc_khuyen_mai] VARCHAR(255) NOT NULL,
    [gia_tri] INT NOT NULL,
    [ngay_bat_dau] DATE,
    [ngay_ket_thuc] DATE,
    CONSTRAINT [PK__Khuyen_M__01A88CB3F2FD8865] PRIMARY KEY CLUSTERED ([ma_khuyen_mai])
);

-- CreateTable
CREATE TABLE [dbo].[Lo_Trinh_Hoc] (
    [buoi] INT NOT NULL,
    [noi_dung] VARCHAR(255) NOT NULL,
    [ma_chuong_trinh] INT NOT NULL,
    CONSTRAINT [PK__Lo_Trinh__4111030E167D8030] PRIMARY KEY CLUSTERED ([buoi],[noi_dung],[ma_chuong_trinh])
);

-- CreateTable
CREATE TABLE [dbo].[Lop_Hoc] (
    [ma_lop_hoc] INT NOT NULL IDENTITY(1,1),
    [so_luong] INT,
    [so_phong] INT NOT NULL,
    [ma_chi_nhanh] INT NOT NULL,
    [ma_giao_vien] INT NOT NULL,
    [ma_khoa_hoc] INT NOT NULL,
    CONSTRAINT [PK__Lop_Hoc__8E027DBD60060376] PRIMARY KEY CLUSTERED ([ma_lop_hoc])
);

-- CreateTable
CREATE TABLE [dbo].[Phong_Hoc] (
    [so_phong] INT NOT NULL,
    [ma_chi_nhanh] INT NOT NULL,
    [suc_chua] INT NOT NULL,
    CONSTRAINT [PK__Phong_Ho__A192BA77DD8743AF] PRIMARY KEY CLUSTERED ([so_phong],[ma_chi_nhanh])
);

-- CreateTable
CREATE TABLE [dbo].[Phu_Huynh] (
    [ma_phu_huynh] INT NOT NULL IDENTITY(1,1),
    [ngay_sinh] DATE,
    [ten] VARCHAR(255) NOT NULL,
    [ma_hoc_vien] INT NOT NULL,
    CONSTRAINT [PK__Phu_Huyn__288CD833C573A0C7] PRIMARY KEY CLUSTERED ([ma_phu_huynh])
);

-- CreateTable
CREATE TABLE [dbo].[Quan_Ly] (
    [ma_quan_ly] INT NOT NULL IDENTITY(1,1),
    [ten] VARCHAR(255) NOT NULL,
    [ngay_sinh] DATE,
    [dia_chi] VARCHAR(255),
    [bang_dai_hoc] VARCHAR(255),
    [ma_chi_nhanh] INT NOT NULL,
    CONSTRAINT [PK__Quan_Ly__143831661AC4D07A] PRIMARY KEY CLUSTERED ([ma_quan_ly])
);

-- CreateTable
CREATE TABLE [dbo].[SDT_GV] (
    [ma_giao_vien] INT NOT NULL,
    [sdt] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__SDT_GV__087ED3BDB8A63DB5] PRIMARY KEY CLUSTERED ([ma_giao_vien],[sdt])
);

-- CreateTable
CREATE TABLE [dbo].[SDT_HV] (
    [ma_hoc_vien] INT NOT NULL,
    [sdt] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__SDT_HV__5F6C7159B828D385] PRIMARY KEY CLUSTERED ([ma_hoc_vien],[sdt])
);

-- CreateTable
CREATE TABLE [dbo].[SDT_PH] (
    [ma_phu_huynh] INT NOT NULL,
    [sdt] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__SDT_PH__1551237BE3F993AB] PRIMARY KEY CLUSTERED ([ma_phu_huynh],[sdt])
);

-- CreateTable
CREATE TABLE [dbo].[SDT_QL] (
    [ma_quan_ly] INT NOT NULL,
    [sdt] VARCHAR(255) NOT NULL,
    CONSTRAINT [PK__SDT_QL__29E5CA2E7F4B3058] PRIMARY KEY CLUSTERED ([ma_quan_ly],[sdt])
);

-- CreateTable
CREATE TABLE [dbo].[Tiet_Hoc] (
    [ma_tiet_hoc] INT NOT NULL IDENTITY(1,1),
    [ngay_hoc] DATE,
    [gio_bat_dau] VARCHAR(255),
    [gio_kiem_tra] VARCHAR(255),
    [ma_lop_hoc] INT NOT NULL,
    [ma_giao_vien] INT NOT NULL,
    [ghi_chu] VARCHAR(255),
    CONSTRAINT [PK__Tiet_Hoc__4F4559FF1377400E] PRIMARY KEY CLUSTERED ([ma_tiet_hoc])
);

-- CreateTable
CREATE TABLE [dbo].[To_Chuc] (
    [ma_khoa_hoc] INT NOT NULL,
    [ma_chi_nhanh] INT NOT NULL,
    CONSTRAINT [PK__To_Chuc__86F8924CBAE0CBEA] PRIMARY KEY CLUSTERED ([ma_khoa_hoc],[ma_chi_nhanh])
);

-- CreateTable
CREATE TABLE [dbo].[Trien_Khai] (
    [ma_chuong_trinh] INT NOT NULL,
    [ma_chi_nhanh] INT NOT NULL,
    CONSTRAINT [PK__Trien_Kh__E934BA87E679970B] PRIMARY KEY CLUSTERED ([ma_chuong_trinh],[ma_chi_nhanh])
);

-- AddForeignKey
ALTER TABLE [dbo].[Account_GV] ADD CONSTRAINT [FK_ACGV_ma_phu_huynh] FOREIGN KEY ([ma_giao_vien]) REFERENCES [dbo].[Giao_Vien]([ma_giao_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Account_HV] ADD CONSTRAINT [FK_ACHV_ma_phu_huynh] FOREIGN KEY ([ma_hoc_vien]) REFERENCES [dbo].[Hoc_Vien]([ma_hoc_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Account_QL] ADD CONSTRAINT [FK_ACQL_ma_phu_huynh] FOREIGN KEY ([ma_quan_ly]) REFERENCES [dbo].[Quan_Ly]([ma_quan_ly]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Ap_Dung] ADD CONSTRAINT [FK_AD_ma_bien_lai] FOREIGN KEY ([ma_bien_lai]) REFERENCES [dbo].[Bien_Lai_Thu_Tien]([ma_bien_lai]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Ap_Dung] ADD CONSTRAINT [FK_AD_ma_khuyen_mai] FOREIGN KEY ([ma_khuyen_mai]) REFERENCES [dbo].[Khuyen_Mai]([ma_khuyen_mai]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Bien_Lai_Thu_Tien] ADD CONSTRAINT [FK__Bien_Lai___ma_ho__6774552F] FOREIGN KEY ([ma_hoc_vien]) REFERENCES [dbo].[Hoc_Vien]([ma_hoc_vien]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[Bien_Lai_Thu_Tien] ADD CONSTRAINT [FK__Bien_Lai___ma_lo__668030F6] FOREIGN KEY ([ma_lop_hoc]) REFERENCES [dbo].[Lop_Hoc]([ma_lop_hoc]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[Chung_Chi] ADD CONSTRAINT [FK_CC_ma_giao_vien] FOREIGN KEY ([ma_giao_vien]) REFERENCES [dbo].[Giao_Vien]([ma_giao_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Chuong_Trinh_Hoc_Truoc_Do] ADD CONSTRAINT [FK_CTHT_ma_chuong_trinh] FOREIGN KEY ([ma_chuong_trinh]) REFERENCES [dbo].[Chuong_Trinh_Hoc]([ma_chuong_trinh]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Chuong_Trinh_Hoc_Truoc_Do] ADD CONSTRAINT [FK_CTHT_ma_chuong_trinh_truoc_do] FOREIGN KEY ([ma_chuong_trinh_truoc_do]) REFERENCES [dbo].[Chuong_Trinh_Hoc]([ma_chuong_trinh]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[Dang_Ki] ADD CONSTRAINT [FK_DK_ma_hoc_vien] FOREIGN KEY ([ma_hoc_vien]) REFERENCES [dbo].[Hoc_Vien]([ma_hoc_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Dang_Ki] ADD CONSTRAINT [FK_DK_ma_khoa_hoc] FOREIGN KEY ([ma_khoa_hoc]) REFERENCES [dbo].[Khoa_Hoc]([ma_khoa_hoc]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Diem_Danh] ADD CONSTRAINT [FK_DD_ma_hoc_vien] FOREIGN KEY ([ma_hoc_vien]) REFERENCES [dbo].[Hoc_Vien]([ma_hoc_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Diem_Danh] ADD CONSTRAINT [FK_DD_ma_tiet_hoc] FOREIGN KEY ([ma_tiet_hoc]) REFERENCES [dbo].[Tiet_Hoc]([ma_tiet_hoc]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Email_GV] ADD CONSTRAINT [FK_Email_ma_giao_vien] FOREIGN KEY ([ma_giao_vien]) REFERENCES [dbo].[Giao_Vien]([ma_giao_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Email_HV] ADD CONSTRAINT [FK_Email_ma_hoc_vien] FOREIGN KEY ([ma_hoc_vien]) REFERENCES [dbo].[Hoc_Vien]([ma_hoc_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Email_PH] ADD CONSTRAINT [FK_Email_ma_phu_huynh] FOREIGN KEY ([ma_phu_huynh]) REFERENCES [dbo].[Phu_Huynh]([ma_phu_huynh]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Email_QL] ADD CONSTRAINT [FK_Email_ma_quan_ly] FOREIGN KEY ([ma_quan_ly]) REFERENCES [dbo].[Quan_Ly]([ma_quan_ly]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Hoc] ADD CONSTRAINT [FK_H_ma_hoc_vien] FOREIGN KEY ([ma_hoc_vien]) REFERENCES [dbo].[Hoc_Vien]([ma_hoc_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Hoc] ADD CONSTRAINT [FK_H_ma_lop_hoc] FOREIGN KEY ([ma_lop_hoc]) REFERENCES [dbo].[Lop_Hoc]([ma_lop_hoc]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Khoa_Hoc] ADD CONSTRAINT [FK_KH_ma_chuong_trinh] FOREIGN KEY ([ma_chuong_trinh]) REFERENCES [dbo].[Chuong_Trinh_Hoc]([ma_chuong_trinh]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Lo_Trinh_Hoc] ADD CONSTRAINT [FK_LTH_ma_chuong_trinh] FOREIGN KEY ([ma_chuong_trinh]) REFERENCES [dbo].[Chuong_Trinh_Hoc]([ma_chuong_trinh]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Lop_Hoc] ADD CONSTRAINT [FK_LH_ma_giao_vien] FOREIGN KEY ([ma_giao_vien]) REFERENCES [dbo].[Giao_Vien]([ma_giao_vien]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[Lop_Hoc] ADD CONSTRAINT [FK_LH_ma_khoa_hoc] FOREIGN KEY ([ma_khoa_hoc]) REFERENCES [dbo].[Khoa_Hoc]([ma_khoa_hoc]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Lop_Hoc] ADD CONSTRAINT [FK_LH_phong_hoc] FOREIGN KEY ([so_phong], [ma_chi_nhanh]) REFERENCES [dbo].[Phong_Hoc]([so_phong],[ma_chi_nhanh]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Phu_Huynh] ADD CONSTRAINT [FK_PH_ma_hoc_vien] FOREIGN KEY ([ma_hoc_vien]) REFERENCES [dbo].[Hoc_Vien]([ma_hoc_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Quan_Ly] ADD CONSTRAINT [FK__Quan_Ly__ma_chi___5EDF0F2E] FOREIGN KEY ([ma_chi_nhanh]) REFERENCES [dbo].[Chi_Nhanh]([ma_chi_nhanh]) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE [dbo].[SDT_GV] ADD CONSTRAINT [FK_SDT_ma_giao_vien] FOREIGN KEY ([ma_giao_vien]) REFERENCES [dbo].[Giao_Vien]([ma_giao_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[SDT_HV] ADD CONSTRAINT [FK_SDT_ma_hoc_vien] FOREIGN KEY ([ma_hoc_vien]) REFERENCES [dbo].[Hoc_Vien]([ma_hoc_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[SDT_PH] ADD CONSTRAINT [FK_SDT_ma_phu_huynh] FOREIGN KEY ([ma_phu_huynh]) REFERENCES [dbo].[Phu_Huynh]([ma_phu_huynh]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[SDT_QL] ADD CONSTRAINT [FK_SDT_ma_quan_ly] FOREIGN KEY ([ma_quan_ly]) REFERENCES [dbo].[Quan_Ly]([ma_quan_ly]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Tiet_Hoc] ADD CONSTRAINT [FK_TH_ma_giao_vien] FOREIGN KEY ([ma_giao_vien]) REFERENCES [dbo].[Giao_Vien]([ma_giao_vien]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Tiet_Hoc] ADD CONSTRAINT [FK_TH_ma_lop_hoc] FOREIGN KEY ([ma_lop_hoc]) REFERENCES [dbo].[Lop_Hoc]([ma_lop_hoc]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[To_Chuc] ADD CONSTRAINT [FK_TC_ma_chi_nhanh] FOREIGN KEY ([ma_chi_nhanh]) REFERENCES [dbo].[Chi_Nhanh]([ma_chi_nhanh]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[To_Chuc] ADD CONSTRAINT [FK_TC_ma_khoa_hoc] FOREIGN KEY ([ma_khoa_hoc]) REFERENCES [dbo].[Khoa_Hoc]([ma_khoa_hoc]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Trien_Khai] ADD CONSTRAINT [FK_TK_ma_chi_nhanh] FOREIGN KEY ([ma_chi_nhanh]) REFERENCES [dbo].[Chi_Nhanh]([ma_chi_nhanh]) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE [dbo].[Trien_Khai] ADD CONSTRAINT [FK_TK_ma_chuong_trinh] FOREIGN KEY ([ma_chuong_trinh]) REFERENCES [dbo].[Chuong_Trinh_Hoc]([ma_chuong_trinh]) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
