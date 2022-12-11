------------------------------------1------------------------------------
--- Procedure for insert bien_lai_thu_tien
CREATE OR ALTER PROCEDURE Insert_Bien_Lai_Thu_Tien
	@p_so_tien_goc INT,
	@p_so_tien_da_thanh_toan INT,
	@p_hinh_thuc varchar(255),
	@p_ma_lop_hoc INT,
	@p_ma_hoc_vien INT
AS
BEGIN
	declare @code int;
    declare @message varchar(50);

	DECLARE @temp_count_HV INT;
	SELECT @temp_count_HV = COUNT(*)
	FROM Hoc_Vien
	Where ma_hoc_vien = @p_ma_hoc_vien		
	
	IF @temp_count_HV = 0
	BEGIN
		set @message  = 'Khong ton tai hoc vien nay';
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END

	DECLARE @temp_count_LH INT;
	SELECT @temp_count_LH = COUNT(*)
	FROM Lop_Hoc
	Where ma_lop_hoc = @p_ma_lop_hoc	
	
	IF @temp_count_LH = 0
	BEGIN
		set @message  = 'Khong ton tai lop hoc nay';
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END
	
	IF (@p_so_tien_goc < @p_so_tien_da_thanh_toan)
	BEGIN
		set @message  = 'So tien trong bien lai khong hop le';
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END
	IF (@p_hinh_thuc <> 'Cash' AND @p_hinh_thuc <> 'Credit')
	BEGIN
		set @message  = 'Hinh thuc thanh toan khong hop le';
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END
	INSERT INTO Bien_Lai_Thu_Tien VALUES (@p_so_tien_goc,@p_so_tien_goc,@p_so_tien_da_thanh_toan,@p_so_tien_goc - @p_so_tien_da_thanh_toan,@p_hinh_thuc,@p_ma_lop_hoc,@p_ma_hoc_vien)
	set @message  = 'Them bien lai thanh cong';
	set @code =  200
	SELECT @message as "message", @code as "code"
    return
END
GO

-- Ví dụ
-- EXEC Insert_Bien_Lai_Thu_Tien 16000,15000,'Credit',1,100
-- GO	

----- Procedure for update bien_lai_thu_tien
CREATE OR ALTER PROCEDURE Update_Bien_Lai_Thu_Tien
	@p_ma_bien_lai INT,
	@p_so_tien_goc INT,
	@p_so_tien_da_thanh_toan INT,
	@p_hinh_thuc varchar(255),
	@p_ma_lop_hoc INT,
	@p_ma_hoc_vien INT
AS
BEGIN
	declare @code int;
    declare @message varchar(50);

	DECLARE @temp_count_BL INT;
	SELECT @temp_count_BL = COUNT(*)
	FROM Bien_Lai_Thu_Tien
	Where ma_bien_lai = @p_ma_bien_lai		
	
	IF @temp_count_BL = 0
	BEGIN
		set @message  = 'Khong ton tai so bien lai nay'
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END
	-- Find total % sale
	DECLARE @total_sales INT
	SELECT @total_sales = SUM(K.gia_tri) FROM Ap_dung A,Khuyen_Mai K
	WHERE A.ma_bien_lai = @p_ma_bien_lai AND A.ma_khuyen_mai = K.ma_khuyen_mai
	DECLARE @p_so_tien_can_thanh_toan INT
	SET @p_so_tien_can_thanh_toan = @p_so_tien_goc *(100 - @total_sales)/ 100

	DECLARE @temp_count_HV INT;
	SELECT @temp_count_HV = COUNT(*)
	FROM Hoc_Vien
	Where ma_hoc_vien = @p_ma_hoc_vien		
	
	IF @temp_count_HV = 0
	BEGIN
		set @message  = 'Khong ton tai hoc vien nay'
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END

	DECLARE @temp_count_LH INT;
	SELECT @temp_count_LH = COUNT(*)
	FROM Lop_Hoc
	Where ma_lop_hoc = @p_ma_lop_hoc	
	
	IF @temp_count_LH = 0
	BEGIN
		set @message  = 'Khong ton tai lop hoc nay'
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END

	IF (@p_hinh_thuc <> 'Cash' AND @p_hinh_thuc <> 'Credit')
	BEGIN
		set @message  = 'Hinh thuc thanh toan khong hop le'
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END

	IF (@p_so_tien_can_thanh_toan < @p_so_tien_da_thanh_toan)
	BEGIN
		set @message  = 'Hoc vien dong thua ' + CONVERT(varchar(255),@p_so_tien_da_thanh_toan - @p_so_tien_can_thanh_toan)
		set @code =  200
		SELECT @message as "message", @code as "code"
		return
	END

	UPDATE Bien_Lai_Thu_Tien
	SET 
		so_tien_goc = @p_so_tien_goc,
		so_tien_can_thanh_toan = @p_so_tien_can_thanh_toan,
		so_tien_da_thanh_toan = @p_so_tien_da_thanh_toan,
		so_tien_con_lai = @p_so_tien_can_thanh_toan - @p_so_tien_da_thanh_toan,
		hinh_thuc = @p_hinh_thuc,
		ma_lop_hoc = @p_ma_lop_hoc,
		ma_hoc_vien = @p_ma_hoc_vien
	WHERE ma_bien_lai = @p_ma_bien_lai;
	
	set @message  = 'Cap nhat bien lai ' + CONVERT(varchar(255),@p_ma_bien_lai) + ' thanh cong'
	set @code =  200
	SELECT @message as "message", @code as "code"
	return
END
GO

-- Ví dụ
-- EXEC Update_Bien_Lai_Thu_Tien 2,15000,15000,'Credit',10,10
-- GO

----- Procedure for delete bien_lai_thu_tien
CREATE OR ALTER PROCEDURE Delete_Bien_Lai_Thu_Tien
	@p_ma_bien_lai INT
AS
BEGIN
	declare @code int;
    declare @message varchar(50);
	DECLARE @temp_count_BL INT;
	SELECT @temp_count_BL = COUNT(*)
	FROM Bien_Lai_Thu_Tien
	Where ma_bien_lai = @p_ma_bien_lai		
	
	IF @temp_count_BL = 0
	BEGIN
		set @message  = 'Khong ton tai so bien lai nay'
		set @code =  404
		SELECT @message as "message", @code as "code"
		return
	END

	DELETE FROM Ap_Dung
	WHERE ma_bien_lai = @p_ma_bien_lai

	DELETE FROM Bien_Lai_Thu_Tien
	WHERE ma_bien_lai = @p_ma_bien_lai

	set @message  = 'Xoa bien lai ' + CONVERT(varchar(255),@p_ma_bien_lai) + ' thanh cong'
	set @code =  200
	SELECT @message as "message", @code as "code"
	return
END
GO

-- Ví dụ
-- EXEC Delete_Bien_Lai_Thu_Tien 2;
-- GO


------------------------------------2------------------------------------
---TRIGGER CHECK TUOI
CREATE OR ALTER TRIGGER Check_Tuoi_Phu_Huynh
ON Phu_Huynh
FOR INSERT,UPDATE
AS
BEGIN
	DECLARE @ph_ngay_sinh DATE;
	DECLARE @hv_ngay_sinh DATE;
	DECLARE @hv_ma int;
	SELECT @ph_ngay_sinh = ngay_sinh,@hv_ma = ma_hoc_vien from INSERTED;
	
	DECLARE @temp_count_HV INT;
	SELECT @temp_count_HV = COUNT(*)
	FROM Hoc_Vien
	Where ma_hoc_vien = @hv_ma		
	
	IF @temp_count_HV = 0
	BEGIN
		RAISERROR ('Khong ton tai hoc vien nay', 16, 1);
		ROLLBACK; 
	END

	SELECT @hv_ngay_sinh = ngay_sinh
	FROM Hoc_Vien
	WHERE ma_hoc_vien = (SELECT ma_hoc_vien from INSERTED)
	IF (@ph_ngay_sinh > @hv_ngay_sinh)
	BEGIN
		RAISERROR ('Ngay sinh cua phu huynh khong hop le', 16, 1);
		ROLLBACK; 
	END
END
GO

-- Ví dụ TH insert sai
-- INSERT INTO Phu_Huynh VALUES (CONVERT(date,'1-1-2024',105),'Nguyen Thi Thu A',100)

-- Ví dụ TH update sai
-- UPDATE Phu_Huynh
-- SET ngay_sinh = CONVERT(date,'1-1-2025',105)
-- WHERE ma_phu_huynh = 1

------TRIGGER UPDATE BIEN LAI KHI THAY DOI KHUYEN MAI
---TRIGGER Update bien lai
CREATE OR ALTER PROCEDURE Update_Bien_Lai_Thu_Tien_New
	@p_ma_bien_lai INT,
	@p_so_tien_goc INT,
	@p_so_tien_da_thanh_toan INT,
	@p_gia_tri INT,
	@p_ma_khuyen_mai INT,
	@p_hinh_thuc varchar(255),
	@p_ma_lop_hoc INT,
	@p_ma_hoc_vien INT
AS
BEGIN
	DECLARE @temp_count_BL INT;
	SELECT @temp_count_BL = COUNT(*)
	FROM Bien_Lai_Thu_Tien
	Where ma_bien_lai = @p_ma_bien_lai		
	
	IF @temp_count_BL = 0
	BEGIN
		PRINT 'Khong ton tai so bien lai nay'
		RETURN;
	END
	-- Find total % sale
	DECLARE @total_sales INT
	SET @total_sales = 0
	SELECT @total_sales = SUM(K.gia_tri) FROM Ap_dung A,Khuyen_Mai K
	WHERE A.ma_bien_lai = @p_ma_bien_lai AND A.ma_khuyen_mai = K.ma_khuyen_mai AND K.ma_khuyen_mai != @p_ma_khuyen_mai
	IF (@total_sales IS NULL)
		SET @total_sales = @p_gia_tri
	ELSE
	BEGIN
		SET @total_sales = @total_sales + @p_gia_tri
	END
	DECLARE @p_so_tien_can_thanh_toan INT
	SET @p_so_tien_can_thanh_toan = @p_so_tien_goc *(100 - @total_sales)/ 100

	DECLARE @temp_count_HV INT;
	SELECT @temp_count_HV = COUNT(*)
	FROM Hoc_Vien
	Where ma_hoc_vien = @p_ma_hoc_vien		
	
	IF @temp_count_HV = 0
	BEGIN
		PRINT 'Khong ton tai hoc vien nay'
		RETURN;
	END

	DECLARE @temp_count_LH INT;
	SELECT @temp_count_LH = COUNT(*)
	FROM Lop_Hoc
	Where ma_lop_hoc = @p_ma_lop_hoc	
	
	IF @temp_count_LH = 0
	BEGIN
		PRINT 'Khong ton tai lop hoc nay'
		RETURN;
	END
	
	IF (@p_so_tien_can_thanh_toan < @p_so_tien_da_thanh_toan)
	BEGIN
		PRINT 'Hoc vien dong thua ' + CONVERT(varchar(255),@p_so_tien_da_thanh_toan - @p_so_tien_can_thanh_toan)
		RETURN;
	END
	IF (@p_hinh_thuc <> 'Cash' AND @p_hinh_thuc <> 'Credit')
	BEGIN
		PRINT 'Hinh thuc thanh toan khong hop le'
		RETURN;
	END

	UPDATE Bien_Lai_Thu_Tien
	SET 
		so_tien_goc = @p_so_tien_goc,
		so_tien_can_thanh_toan = @p_so_tien_can_thanh_toan,
		so_tien_da_thanh_toan = @p_so_tien_da_thanh_toan,
		so_tien_con_lai = @p_so_tien_can_thanh_toan - @p_so_tien_da_thanh_toan,
		hinh_thuc = @p_hinh_thuc,
		ma_lop_hoc = @p_ma_lop_hoc,
		ma_hoc_vien = @p_ma_hoc_vien
	WHERE ma_bien_lai = @p_ma_bien_lai;
	
	PRINT 'Cap nhat bien lai ' + CONVERT(varchar(255),@p_ma_bien_lai) + ' thanh cong'
	RETURN;
END;
GO



CREATE OR ALTER TRIGGER Update_Bien_Lai
ON Khuyen_Mai
FOR UPDATE
AS
BEGIN
		DECLARE @km_ma_khuyen_mai INT
		DECLARE @t_gia_tri INT
		SELECT @km_ma_khuyen_mai = ma_khuyen_mai,@t_gia_tri = gia_tri from INSERTED;
		
		DECLARE @B_Max INT;
		DECLARE @B_Count INT;
		SET @B_Max = (SELECT COUNT(*)
						FROM Bien_Lai_Thu_Tien B
						WHERE B.ma_bien_lai IN (
							SELECT ma_bien_lai
							FROM Ap_Dung A
							WHERE A.ma_khuyen_mai = @km_ma_khuyen_mai
						))
		SET @B_Count = 1
		WHILE (@B_count <= @B_Max)
		BEGIN

			DECLARE @t_ma_bien_lai INT;
			DECLARE @t_so_tien_goc INT;
			DECLARE @t_so_tien_da_thanh_toan INT;
			DECLARE @t_hinh_thuc varchar(255);
			DECLARE @t_ma_lop_hoc INT;
			DECLARE @t_ma_hoc_vien INT;
			(SELECT @t_ma_bien_lai = sub.ma_bien_lai
						 ,@t_so_tien_goc = sub.so_tien_goc
						 ,@t_so_tien_da_thanh_toan = sub.so_tien_da_thanh_toan
						 ,@t_hinh_thuc = sub.hinh_thuc
						 ,@t_ma_lop_hoc = sub.ma_lop_hoc
						 ,@t_ma_hoc_vien = sub.ma_hoc_vien
			FROM (
			    SELECT ROW_NUMBER() OVER (ORDER BY temp.ma_bien_lai) AS row_num
						 , temp.ma_bien_lai
						 , temp.so_tien_goc
						 , temp.so_tien_da_thanh_toan
						 , temp.hinh_thuc
						 , temp.ma_lop_hoc
						 , temp.ma_hoc_vien
			  FROM 
			  (
				SELECT *
				FROM Bien_Lai_Thu_Tien BL
						WHERE BL.ma_bien_lai IN (
							SELECT AD.ma_bien_lai
							FROM Ap_Dung AD
							WHERE AD.ma_khuyen_mai = @km_ma_khuyen_mai)
			  ) AS temp
			) AS sub
			WHERE row_num = @B_Count)

			EXEC Update_Bien_Lai_Thu_Tien_New @t_ma_bien_lai,@t_so_tien_goc,@t_so_tien_da_thanh_toan,@t_gia_tri,@km_ma_khuyen_mai,@t_hinh_thuc,@t_ma_lop_hoc,@t_ma_hoc_vien
			SET @B_Count = @B_Count + 1
		END
END
GO
-- Ví dụ
-- Update Khuyen_Mai
-- SET gia_tri = 5
-- WHERE ma_khuyen_mai = 3



------------------------------------3------------------------------------
---Pro 1
-- CREATE OR ALTER PROCEDURE Get_All_Khuyen_Mai_Of_Hoc_Vien
-- 	@p_ma_hoc_vien INT
-- AS
-- BEGIN
-- 	DECLARE @temp_count_HV INT;
-- 	SELECT @temp_count_HV = COUNT(*)
-- 	FROM Hoc_Vien
-- 	Where ma_hoc_vien = @p_ma_hoc_vien		
	
-- 	IF @temp_count_HV = 0
-- 	BEGIN
-- 		PRINT 'Khong ton tai hoc vien nay'
-- 		RETURN;
-- 	END
-- 	SELECT ten,ma_hoc_vien,ma_bien_lai,Sub3.ma_khuyen_mai,gia_tri
-- 	FROM (
-- 		SELECT ten,ma_hoc_vien, Sub2.ma_bien_lai,ma_khuyen_mai FROM
-- 			(SELECT * FROM 
-- 				(SELECT H.ten, H.ma_hoc_vien, B.ma_bien_lai
-- 				FROM Bien_Lai_Thu_Tien B
-- 				JOIN Hoc_Vien H ON B.ma_hoc_vien = H.ma_hoc_vien ) AS Sub1
-- 			WHERE Sub1.ma_hoc_vien = @p_ma_hoc_vien) AS Sub2
-- 		JOIN Ap_Dung A ON Sub2.ma_bien_lai = A.ma_bien_lai) AS Sub3
-- 	JOIN Khuyen_Mai K ON Sub3.ma_khuyen_mai = K.ma_khuyen_mai 
-- 	order by gia_tri
-- END
-- GO

-- Ví dụ
-- EXEC Get_All_Khuyen_Mai_Of_Hoc_Vien 2

--Pro 2
-- CREATE OR ALTER PROCEDURE Get_Num_Of_Bien_Lai_Of_Hoc_Vien
-- AS
-- BEGIN
-- 		SELECT Sub1.ma_hoc_vien,Sub1.ten,Sub1.sdt, COUNT(B.ma_bien_lai) AS 'So_luong_bien_lai'
-- 		FROM(
-- 			SELECT H.ma_hoc_vien,H.ten,SDT.sdt
-- 			FROM Hoc_Vien H
-- 			JOIN SDT_HV SDT ON H.ma_hoc_vien = SDT.ma_hoc_vien) AS Sub1
-- 		JOIN Bien_Lai_Thu_Tien B On Sub1.ma_hoc_vien = B.ma_hoc_vien
-- 		GROUP BY Sub1.ma_hoc_vien,Sub1.ten,Sub1.sdt
-- END
-- GO
-- Ví dụ
-- EXEC Get_Num_Of_Bien_Lai_Of_Hoc_Vien

CREATE OR ALTER PROCEDURE Get_Hoc_Vien_Bien_lai
	@p_hinh_thuc varchar(255) = NULL,
	@p_so_tien_max INT = 2147483647,
	@p_so_tien_min INT = -2147483648
AS
BEGIN
		IF (@p_hinh_thuc is NULL)
		BEGIN
			SELECT * FROM 
			(SELECT HV.ma_hoc_vien,HV.ten, B.ma_bien_lai,B.ma_lop_hoc,B.hinh_thuc,B.so_tien_goc,B.so_tien_can_thanh_toan,B.so_tien_da_thanh_toan,B.so_tien_con_lai FROM Bien_Lai_Thu_Tien B
			JOIN Hoc_Vien HV ON B.ma_bien_lai = HV.ma_hoc_vien) AS HV_BL
			WHERE HV_BL.so_tien_goc <= @p_so_tien_max AND HV_Bl.so_tien_goc >= @p_so_tien_min
			ORDER BY ma_hoc_vien, ten, ma_lop_hoc, hinh_thuc, so_tien_goc
			return
		END
		ELSE
		BEGIN
			SELECT * FROM 
			(SELECT HV.ma_hoc_vien,HV.ten, B.ma_bien_lai,B.ma_lop_hoc,B.hinh_thuc,B.so_tien_goc,B.so_tien_can_thanh_toan,B.so_tien_da_thanh_toan,B.so_tien_con_lai FROM Bien_Lai_Thu_Tien B
			JOIN Hoc_Vien HV ON B.ma_bien_lai = HV.ma_hoc_vien) AS HV_BL
			WHERE HV_BL.so_tien_goc <= @p_so_tien_max AND HV_Bl.so_tien_goc >= @p_so_tien_min AND HV_BL.hinh_thuc = @p_hinh_thuc
			ORDER BY ma_hoc_vien, ten, ma_lop_hoc, hinh_thuc, so_tien_goc
			return
		END
END
GO
-- Ví dụ
-- EXEC Get_Hoc_Vien_Bien_lai


CREATE OR ALTER PROCEDURE Get_Hoc_Vien_Have_Greater_Than_N_Bien_Lai
	@p_so_luong_bien_lai INT = 0
AS
BEGIN
		SELECT Sub1.ma_hoc_vien,Sub1.ten,Sub1.sdt, COUNT(B.ma_bien_lai) AS 'So_luong_bien_lai'
		FROM(
			SELECT H.ma_hoc_vien,H.ten,SDT.sdt
			FROM Hoc_Vien H
			JOIN SDT_HV SDT ON H.ma_hoc_vien = SDT.ma_hoc_vien) AS Sub1
		JOIN Bien_Lai_Thu_Tien B On Sub1.ma_hoc_vien = B.ma_hoc_vien
		GROUP BY Sub1.ma_hoc_vien,Sub1.ten,Sub1.sdt
		HAVING COUNT(B.ma_bien_lai) >= @p_so_luong_bien_lai
		ORDER BY Sub1.ma_hoc_vien
END
GO
-- Ví dụ
-- EXEC Get_Hoc_Vien_Have_Greater_Than_N_Bien_Lai 3

------------------------------------4------------------------------------
CREATE OR ALTER FUNCTION Get_Total_Money_Of_Hoc_Vien (@p_ma_hoc_vien INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
	DECLARE @temp_count_HV INT;
	SELECT @temp_count_HV = COUNT(*)
	FROM Hoc_Vien
	Where ma_hoc_vien = @p_ma_hoc_vien		
	IF @temp_count_HV = 0
	BEGIN
		RETURN 0;
	END

	DECLARE @total DECIMAL(10,2);
	SELECT @total = SUM(so_tien_con_lai)
	FROM Bien_Lai_Thu_Tien
	WHERE ma_hoc_vien = @p_ma_hoc_vien;
	RETURN @total;
END;
GO
-- Ví dụ
-- print dbo.Get_Total_Money_Of_Hoc_Vien(1);



CREATE OR ALTER FUNCTION Total_Bien_Lai_Greater_Than_20000 (@threshold INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
		DECLARE @total DECIMAL(10,2);
		SET @total = 0
		DECLARE @B_Max INT;
		DECLARE @B_Count INT;
		SELECT @B_Max =COUNT(*) FROM Bien_Lai_Thu_Tien
		SET @B_Count = 1
		WHILE (@B_count <= @B_Max)
		BEGIN
			DECLARE @t_so_tien_goc INT;
			(SELECT @t_so_tien_goc = so_tien_goc
			FROM (
			    SELECT ROW_NUMBER() OVER (ORDER BY ma_bien_lai) AS row_num
						 , ma_bien_lai
						 , so_tien_goc
						 , so_tien_da_thanh_toan
						 , hinh_thuc
						 , ma_lop_hoc
						 , ma_hoc_vien
			  FROM Bien_Lai_Thu_Tien
			) AS sub
			WHERE row_num = @B_Count)
			IF (@t_so_tien_goc > @threshold)
			BEGIN
				SET @total = @total + @t_so_tien_goc
			END
			SET @B_Count = @B_Count + 1
		END	
		RETURN @total
END
GO 
-- Ví dụ
-- print dbo.Total_Bien_Lai_Greater_Than_20000()

