--Chuong_Trinh_Hoc
INSERT INTO Chuong_Trinh_Hoc VALUES ('Starting Toeic','STARTER TOEIC','Toeic 500+')
INSERT INTO Chuong_Trinh_Hoc VALUES ('Medium Toeic','TAKING TOEIC','Toeic 650+')
INSERT INTO Chuong_Trinh_Hoc VALUES ('Advance Toeic','LONGMAN','Toeic 900+')
INSERT INTO Chuong_Trinh_Hoc VALUES ('Starting Ielts','STARTER Ielts','Ielts 4.0+')
INSERT INTO Chuong_Trinh_Hoc VALUES ('Medium Ielts','TAKING Ielts','Ielts 6+')
INSERT INTO Chuong_Trinh_Hoc VALUES ('Advance Ielts','LONGMAN Ielts','Ielts 7.5+')
SELECT * FROM Chuong_Trinh_Hoc

--Lo_Trinh_Hoc
INSERT INTO Lo_Trinh_Hoc VALUES ('1','Toeic about subject','1')
INSERT INTO Lo_Trinh_Hoc VALUES ('2','Toeic about verb','1')
INSERT INTO Lo_Trinh_Hoc VALUES ('3','Toeic about object','1')
INSERT INTO Lo_Trinh_Hoc VALUES ('4','Toeic about tobe','1')
INSERT INTO Lo_Trinh_Hoc VALUES ('5','Toeic about Adjective','1')
INSERT INTO Lo_Trinh_Hoc VALUES ('6','Toeic about Adverb','1')

INSERT INTO Lo_Trinh_Hoc VALUES ('1','Toeic about a,an,the','2')
INSERT INTO Lo_Trinh_Hoc VALUES ('2','Toeic about verb','2')
INSERT INTO Lo_Trinh_Hoc VALUES ('3','Toeic about object','2')
INSERT INTO Lo_Trinh_Hoc VALUES ('4','Toeic about tobe','2')
INSERT INTO Lo_Trinh_Hoc VALUES ('5','Toeic about preposition','2')
INSERT INTO Lo_Trinh_Hoc VALUES ('6','Toeic about Adverb','2')

INSERT INTO Lo_Trinh_Hoc VALUES ('1','Toeic about preposition','3')
INSERT INTO Lo_Trinh_Hoc VALUES ('2','Toeic about verb','3')
INSERT INTO Lo_Trinh_Hoc VALUES ('3','Toeic about object','3')
INSERT INTO Lo_Trinh_Hoc VALUES ('4','Toeic about tobe','3')
INSERT INTO Lo_Trinh_Hoc VALUES ('5','Toeic about Adjective','3')
INSERT INTO Lo_Trinh_Hoc VALUES ('6','Toeic about Adverb','3')

INSERT INTO Lo_Trinh_Hoc VALUES ('1','Ielts about subject','4')
INSERT INTO Lo_Trinh_Hoc VALUES ('2','Ielts about verb','4')
INSERT INTO Lo_Trinh_Hoc VALUES ('3','Ielts about object','4')
INSERT INTO Lo_Trinh_Hoc VALUES ('4','Ielts about tobe','4')
INSERT INTO Lo_Trinh_Hoc VALUES ('5','Ielts about Adjective','4')
INSERT INTO Lo_Trinh_Hoc VALUES ('6','Ielts about Adverb','4')

INSERT INTO Lo_Trinh_Hoc VALUES ('1','Ielts about a,an,the','5')
INSERT INTO Lo_Trinh_Hoc VALUES ('2','Ielts about verb','5')
INSERT INTO Lo_Trinh_Hoc VALUES ('3','Ielts about object','5')
INSERT INTO Lo_Trinh_Hoc VALUES ('4','Ielts about tobe','5')
INSERT INTO Lo_Trinh_Hoc VALUES ('5','Ielts about preposition','5')
INSERT INTO Lo_Trinh_Hoc VALUES ('6','Ielts about Adverb','5')

INSERT INTO Lo_Trinh_Hoc VALUES ('1','Ielts about preposition','6')
INSERT INTO Lo_Trinh_Hoc VALUES ('2','Ielts about verb','6')
INSERT INTO Lo_Trinh_Hoc VALUES ('3','Ielts about object','6')
INSERT INTO Lo_Trinh_Hoc VALUES ('4','Ielts about tobe','6')
INSERT INTO Lo_Trinh_Hoc VALUES ('5','Ielts about Adjective','6')
INSERT INTO Lo_Trinh_Hoc VALUES ('6','Ielts about Adverb','6')

--Chi_Nhanh
INSERT INTO Chi_Nhanh VALUES ('Chi nhánh 1','94 Cộng Hòa, Tân Bình')
INSERT INTO Chi_Nhanh VALUES ('Chi nhánh 2','278 Lũy Bán Bích, Tân Phú')
INSERT INTO Chi_Nhanh VALUES ('Chi nhánh 3','85 Điện Biên Phủ, Bình Thạnh')
INSERT INTO Chi_Nhanh VALUES ('Chi nhánh 4','49F Phan Đăng Lưu, Bình Thạnh')
INSERT INTO Chi_Nhanh VALUES ('Chi nhánh 5','18 Phan Văn Trị, Gò Vấp')

--Khoa_Hoc
INSERT INTO Khoa_Hoc VALUES (N'Khoa toeic cho người mới bắt đầu',CONVERT(date,'1-1-2022',105),CONVERT(date,'1-3-2022',105),10000,1)
INSERT INTO Khoa_Hoc VALUES (N'Khoa toeic 650+',CONVERT(date,'21-1-2022', 105),CONVERT(date,'18-3-2022', 105),11000,2)
INSERT INTO Khoa_Hoc VALUES (N'Khoa toeic 900+',CONVERT(date,'16-1-2022',105),CONVERT(date,'13-3-2022',105),12000,3)
INSERT INTO Khoa_Hoc VALUES (N'Khoa ielts cho người mới bắt đầu', CONVERT(date,'26-1-2022',105),CONVERT(date,'24-3-2022',105),14000,4)
INSERT INTO Khoa_Hoc VALUES (N'Khoa ielts cho 6.0+', CONVERT(date,'12-1-2022',105),CONVERT(date,'13-3-2022',105),17000,5)
INSERT INTO Khoa_Hoc VALUES (N'Khoa ielts nâng cao', CONVERT(date,'15-1-2022',105),CONVERT(date,'12-3-2022',105),20000,6)

--Trien_Khai
INSERT INTO Trien_Khai VALUES(1,1)
INSERT INTO Trien_Khai VALUES(2,2)
INSERT INTO Trien_Khai VALUES(3,4)
INSERT INTO Trien_Khai VALUES(4,2)
INSERT INTO Trien_Khai VALUES(5,1)
INSERT INTO Trien_Khai VALUES(6,3)
INSERT INTO Trien_Khai VALUES(1,2)
INSERT INTO Trien_Khai VALUES(2,4)
INSERT INTO Trien_Khai VALUES(3,5)
INSERT INTO Trien_Khai VALUES(4,1)
INSERT INTO Trien_Khai VALUES(5,2)
INSERT INTO Trien_Khai VALUES(6,4)

--To_Chuc
INSERT INTO To_Chuc VALUES(1,1)
INSERT INTO To_Chuc VALUES(2,2)
INSERT INTO To_Chuc VALUES(3,4)
INSERT INTO To_Chuc VALUES(4,2)
INSERT INTO To_Chuc VALUES(5,1)
INSERT INTO To_Chuc VALUES(6,3)
INSERT INTO To_Chuc VALUES(1,2)
INSERT INTO To_Chuc VALUES(2,4)
INSERT INTO To_Chuc VALUES(3,5)
INSERT INTO To_Chuc VALUES(4,1)
INSERT INTO To_Chuc VALUES(5,2)
INSERT INTO To_Chuc VALUES(6,4)

--Khoa_Hoc_Truoc_Do
INSERT INTO Chuong_Trinh_Hoc_Truoc_Do VALUES (1,2)
INSERT INTO Chuong_Trinh_Hoc_Truoc_Do VALUES (2,3)
INSERT INTO Chuong_Trinh_Hoc_Truoc_Do VALUES (3,4)
INSERT INTO Chuong_Trinh_Hoc_Truoc_Do VALUES (4,5)

--Phong_Hoc
INSERT INTO Phong_Hoc VALUES (101,1,10)
INSERT INTO Phong_Hoc VALUES (102,1,10)
INSERT INTO Phong_Hoc VALUES (103,1,10)
INSERT INTO Phong_Hoc VALUES (201,2,10)
INSERT INTO Phong_Hoc VALUES (202,2,10)
INSERT INTO Phong_Hoc VALUES (203,2,10)
INSERT INTO Phong_Hoc VALUES (301,3,10)
INSERT INTO Phong_Hoc VALUES (302,3,10)
INSERT INTO Phong_Hoc VALUES (303,3,10)
INSERT INTO Phong_Hoc VALUES (401,4,10)
INSERT INTO Phong_Hoc VALUES (402,4,10)
INSERT INTO Phong_Hoc VALUES (403,4,10)
INSERT INTO Phong_Hoc VALUES (501,5,10)
INSERT INTO Phong_Hoc VALUES (502,5,10)
INSERT INTO Phong_Hoc VALUES (503,5,10)

--Hoc_Vien
INSERT INTO Hoc_Vien VALUES ('Nguyen Van A',CONVERT(date,'1-1-2002',105),N'Tổ 4,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Van B',CONVERT(date,'2-1-2002',105),N'Tổ 2,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Van C',CONVERT(date,'3-1-2002',105),N'Tổ 10,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Van D',CONVERT(date,'4-1-2002',105),N'Tổ 3,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Van E',CONVERT(date,'5-1-2002',105),N'Tổ 12,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Van F',CONVERT(date,'6-1-2002',105),N'Tổ 6,Suối Ngô,Tân Châu,Tây Ninh')

INSERT INTO Hoc_Vien VALUES ('Tran Thi A',CONVERT(date,'1-1-2002',105),N'Tổ 4,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Thi B',CONVERT(date,'2-2-2002',105),N'Tổ 2,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Thi C',CONVERT(date,'3-7-2002',105),N'Tổ 10,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Van D',CONVERT(date,'4-1-2002',105),N'Tổ 3,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Van E',CONVERT(date,'5-8-2002',105),N'Tổ 12,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Van F',CONVERT(date,'6-1-2002',105),N'Tổ 6,Suối Dây,Tân Châu,Tây Ninh')

INSERT INTO Hoc_Vien VALUES ('Nguyen Thi A',CONVERT(date,'1-1-2002',105),N'Tổ 4,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Thi B',CONVERT(date,'2-4-2002',105),N'Tổ 2,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Thi Y',CONVERT(date,'3-1-2002',105),N'Tổ 10,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Thi D',CONVERT(date,'4-8-2002',105),N'Tổ 3,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Thi F',CONVERT(date,'5-9-2002',105),N'Tổ 12,Suối Ngô,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Nguyen Thi R',CONVERT(date,'6-10-2002',105),N'Tổ 6,Suối Ngô,Tân Châu,Tây Ninh')

INSERT INTO Hoc_Vien VALUES ('Tran Thi G',CONVERT(date,'13-11-2002',105),N'Tổ 4,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Van H',CONVERT(date,'21-12-2002',105),N'Tổ 2,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Van I',CONVERT(date,'31-1-2002',105),N'Tổ 10,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Van J',CONVERT(date,'24-12-2002',105),N'Tổ 3,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Van K',CONVERT(date,'5-10-2002',105),N'Tổ 12,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Hoc_Vien VALUES ('Tran Van L',CONVERT(date,'6-2-2002',105),N'Tổ 6,Suối Dây,Tân Châu,Tây Ninh')

--Giao_Vien
INSERT INTO Giao_Vien VALUES (N'Nguyễn Gia Bách',CONVERT(date,'13-11-2002',105),N'Tổ 4,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Giao_Vien VALUES (N'Nguyễn Thành Công',CONVERT(date,'21-12-2002',105),N'Tổ 2,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Giao_Vien VALUES (N'Nguyễn Khắc Cường',CONVERT(date,'31-1-2002',105),N'Tổ 10,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Giao_Vien VALUES (N'Nguyễn Trúc Diệp',CONVERT(date,'24-12-2002',105),N'Tổ 3,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Giao_Vien VALUES (N'Nguyễn Ánh',CONVERT(date,'5-10-2002',105),N'Tổ 12,Suối Dây,Tân Châu,Tây Ninh')
INSERT INTO Giao_Vien VALUES (N'Phạm Thị Thu Hường',CONVERT(date,'6-2-2002',105),N'Tổ 6,Suối Dây,Tân Châu,Tây Ninh')
SELECT * FROM Giao_Vien
DELETE Giao_Vien
--Quan_Ly

INSERT INTO Quan_Ly VALUES (N'Hải Vinh',CONVERT(date,'13-11-2002',105),N'Tổ 4,Suối Dây,Tân Châu,Tây Ninh','HUFLIT',1)
INSERT INTO Quan_Ly VALUES (N'Thiên Bảo',CONVERT(date,'21-12-2002',105),N'Tổ 2,Suối Dây,Tân Châu,Tây Ninh','HUFLIT',2)
INSERT INTO Quan_Ly VALUES (N'Nguyễn Đăng Khoa',CONVERT(date,'31-1-2002',105),N'Tổ 10,Suối Dây,Tân Châu,Tây Ninh','HUFLIT',3)
INSERT INTO Quan_Ly VALUES (N'Nguyễn Hoàng Hải',CONVERT(date,'24-12-2002',105),N'Tổ 3,Suối Dây,Tân Châu,Tây Ninh','HUFLIT',4)
INSERT INTO Quan_Ly VALUES (N'Văn Toàn',CONVERT(date,'5-10-2002',105),N'Tổ 12,Suối Dây,Tân Châu,Tây Ninh','HUFLIT',5)

--Account_HV
INSERT INTO Account_HV VALUES ('NguyenVanA','112002',1)
INSERT INTO Account_HV VALUES ('NguyenVanB','212002',2)
INSERT INTO Account_HV VALUES ('NguyenVanC','312002',3)
INSERT INTO Account_HV VALUES ('NguyenVanD','412002',4)
INSERT INTO Account_HV VALUES ('NguyenVanE','512002',5)
INSERT INTO Account_HV VALUES ('NguyenVanF','612002',6)

INSERT INTO Account_HV VALUES ('TranThiA','112002',7)
INSERT INTO Account_HV VALUES ('TranThiB','222002',8)
INSERT INTO Account_HV VALUES ('TranThiC','372002',9)
INSERT INTO Account_HV VALUES ('TranVanD','412002',10)
INSERT INTO Account_HV VALUES ('TranVanE','582002',11)
INSERT INTO Account_HV VALUES ('TranVanF','612002',12)

INSERT INTO Account_HV VALUES ('NguyenThiA','112002',13)
INSERT INTO Account_HV VALUES ('NguyenThiB','242002',14)
INSERT INTO Account_HV VALUES ('NguyenThiY','312002',15)
INSERT INTO Account_HV VALUES ('NguyenThiD','482002',16)
INSERT INTO Account_HV VALUES ('NguyenThiF','592002',17)
INSERT INTO Account_HV VALUES ('NguyenThiR','6102002',18)

INSERT INTO Account_HV VALUES ('TranThiG','13112002',19)
INSERT INTO Account_HV VALUES ('TranVanH','21122002',20)
INSERT INTO Account_HV VALUES ('TranVanI','3112002',21)
INSERT INTO Account_HV VALUES ('TranVanJ','24122002',22)
INSERT INTO Account_HV VALUES ('TranVanK','5102002',23)
INSERT INTO Account_HV VALUES ('TranVanL','622002',24)

--Email_HV
INSERT INTO Email_HV VALUES (1,'NguyenVanA@gmail.com')
INSERT INTO Email_HV VALUES (2,'NguyenVanB@gmail.com')
INSERT INTO Email_HV VALUES (3,'NguyenVanC@gmail.com')
INSERT INTO Email_HV VALUES (4,'NguyenVanD@gmail.com')
INSERT INTO Email_HV VALUES (5,'NguyenVanE@gmail.com')
INSERT INTO Email_HV VALUES (6,'NguyenVanF@gmail.com')

INSERT INTO Email_HV VALUES (7,'TranThiA@gmail.com')
INSERT INTO Email_HV VALUES (8,'TranThiB@gmail.com')
INSERT INTO Email_HV VALUES (9,'TranThiC@gmail.com')
INSERT INTO Email_HV VALUES (10,'TranVanD@gmail.com')
INSERT INTO Email_HV VALUES (11,'TranVanE@gmail.com')
INSERT INTO Email_HV VALUES (12,'TranVanF@gmail.com')

INSERT INTO Email_HV VALUES (13,'NguyenThiA@gmail.com')
INSERT INTO Email_HV VALUES (14,'NguyenThiB@gmail.com')
INSERT INTO Email_HV VALUES (15,'NguyenThiY@gmail.com')
INSERT INTO Email_HV VALUES (16,'NguyenThiD@gmail.com')
INSERT INTO Email_HV VALUES (17,'NguyenThiF@gmail.com')
INSERT INTO Email_HV VALUES (18,'NguyenThiR@gmail.com')

INSERT INTO Email_HV VALUES (19,'TranThiG@gmail.com')
INSERT INTO Email_HV VALUES (20,'TranVanH@gmail.com')
INSERT INTO Email_HV VALUES (21,'TranVanI@gmail.com')
INSERT INTO Email_HV VALUES (22,'TranVanJ@gmail.com')
INSERT INTO Email_HV VALUES (23,'TranVanK@gmail.com')
INSERT INTO Email_HV VALUES (24,'TranVanL@gmail.com')

--SDT_HV
INSERT INTO SDT_HV VALUES (1,'03265418178')
INSERT INTO SDT_HV VALUES (2,'01547245145')
INSERT INTO SDT_HV VALUES (3,'07857275827')
INSERT INTO SDT_HV VALUES (4,'07857854422')
INSERT INTO SDT_HV VALUES (5,'09845252247')
INSERT INTO SDT_HV VALUES (6,'05277821456')

INSERT INTO SDT_HV VALUES (7,'04545587278')
INSERT INTO SDT_HV VALUES (8,'05973345278')
INSERT INTO SDT_HV VALUES (9,'05647382147')
INSERT INTO SDT_HV VALUES (10,'05342452124')
INSERT INTO SDT_HV VALUES (11,'04534242875')
INSERT INTO SDT_HV VALUES (12,'01324545871')

INSERT INTO SDT_HV VALUES (13,'05241121254')
INSERT INTO SDT_HV VALUES (14,'03445245442')
INSERT INTO SDT_HV VALUES (15,'04534145278')
INSERT INTO SDT_HV VALUES (16,'03634244823')
INSERT INTO SDT_HV VALUES (17,'04564527782')
INSERT INTO SDT_HV VALUES (18,'04528517428')

INSERT INTO SDT_HV VALUES (19,'04542142112')
INSERT INTO SDT_HV VALUES (20,'04728012147')
INSERT INTO SDT_HV VALUES (21,'04157511425')
INSERT INTO SDT_HV VALUES (22,'01242454752')
INSERT INTO SDT_HV VALUES (23,'03467216754')
INSERT INTO SDT_HV VALUES (24,'04527424575')

--Account_GV
INSERT INTO Account_GV VALUES ('NguyenGiaBach','13112002',1)
INSERT INTO Account_GV VALUES ('NguyenThanhCong','21122002',2)
INSERT INTO Account_GV VALUES ('NguyenKhacCuong','3112002',3)
INSERT INTO Account_GV VALUES ('NguyenTrucDiep','24122002',4)
INSERT INTO Account_GV VALUES ('NguyenAnh','5102002',5)
INSERT INTO Account_GV VALUES ('PhamThiThuHuong','952000',6)
SELECT * FROM Account_GV
--Email_GV
INSERT INTO Email_GV VALUES (1,'NguyenGiaBach@gmail.com')
INSERT INTO Email_GV VALUES (2,'NguyenThanhCong@gmail.com')
INSERT INTO Email_GV VALUES (3,'NguyenKhacCuong@gmail.com')
INSERT INTO Email_GV VALUES (4,'NguyenTrucDiep@gmail.com')
INSERT INTO Email_GV VALUES (5,'NguyenAnh@gmail.com')
INSERT INTO Email_GV VALUES (6,'PhamThiThuHuong@gmail.com')

--SDT_GV
INSERT INTO SDT_GV VALUES (1,'01224545884')
INSERT INTO SDT_GV VALUES (2,'05445147522')
INSERT INTO SDT_GV VALUES (3,'01587215782')
INSERT INTO SDT_GV VALUES (4,'06757215752')
INSERT INTO SDT_GV VALUES (5,'09834151235')
INSERT INTO SDT_GV VALUES (6,'01678721557')

--Account_QL
INSERT INTO Account_QL VALUES ('HaiVinh','13112002',1)
INSERT INTO Account_QL VALUES ('ThienBao','21122002',2)
INSERT INTO Account_QL VALUES ('NguyenDangKhoa','3112002',3)
INSERT INTO Account_QL VALUES ('NguyenHoangHai','24122002',4)
INSERT INTO Account_QL VALUES ('VanToan','5102002',5)

--Email_QL
INSERT INTO Email_QL VALUES (1,'HaiVinh@gmail.com')
INSERT INTO Email_QL VALUES (2,'ThienBao@gmail.com')
INSERT INTO Email_QL VALUES (3,'NguyenDangKhoa@gmail.com')
INSERT INTO Email_QL VALUES (4,'NguyenHoangHai@gmail.com')
INSERT INTO Email_QL VALUES (5,'VanToan@gmail.com')

--SDT_QL
INSERT INTO SDT_QL VALUES (1,'01224545884')
INSERT INTO SDT_QL VALUES (2,'05445147522')
INSERT INTO SDT_QL VALUES (3,'01587215782')
INSERT INTO SDT_QL VALUES (4,'06757215752')
INSERT INTO SDT_QL VALUES (5,'09834151235')

--Phu_Huynh
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'1-1-1980',105),'Nguyen Thi Thu A',1)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'2-1-1980',105),'Nguyen Thi Thu B',2)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'3-1-1980',105),'Nguyen Thi Thu C',3)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'4-1-1980',105),'Nguyen Thi Thu D',4)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'5-1-1980',105),'Nguyen Thi Thu E',5)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'6-1-1980',105),'Nguyen Thi Thu F',6)

INSERT INTO Phu_Huynh VALUES (CONVERT(date,'1-1-1980',105),'Tran Van A',7)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'2-2-1980',105),'Tran Van B',8)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'3-7-1980',105),'Tran Van C',9)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'4-1-1980',105),'Tran Van D',10)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'5-8-1980',105),'Tran Van E',11)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'6-1-1980',105),'Tran Van F',12)

INSERT INTO Phu_Huynh VALUES (CONVERT(date,'1-1-1980',105),'Nguyen Thi A',13)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'2-4-1980',105),'Nguyen Thi B',14)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'3-1-1980',105),'Nguyen Thi Y',15)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'4-8-1980',105),'Nguyen Thi D',16)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'5-9-1980',105),'Nguyen Thi F',17)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'6-10-1980',105),'Nguyen Thi R',18)

INSERT INTO Phu_Huynh VALUES (CONVERT(date,'13-11-1980',105),'Tran Thi G',19)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'21-12-1980',105),'Tran Luan H',20)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'31-1-1980',105),'Tran Luan I',21)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'24-12-1980',105),'Tran Luan J',22)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'5-10-1980',105),'Tran Luan K',23)
INSERT INTO Phu_Huynh VALUES (CONVERT(date,'6-2-1980',105),'Tran Luan L',24)

--Email_PH
INSERT INTO Email_PH VALUES (1,'NguyenThiThuA@gmail.com')
INSERT INTO Email_PH VALUES (2,'NguyenThiThuB@gmail.com')
INSERT INTO Email_PH VALUES (3,'NguyenThiThuC@gmail.com')
INSERT INTO Email_PH VALUES (4,'NguyenThiThuD@gmail.com')
INSERT INTO Email_PH VALUES (5,'NguyenThiThuE@gmail.com')
INSERT INTO Email_PH VALUES (6,'NguyenThiThuF@gmail.com')

INSERT INTO Email_PH VALUES (7,'TranVanA@gmail.com')
INSERT INTO Email_PH VALUES (8,'TranVanB@gmail.com')
INSERT INTO Email_PH VALUES (9,'TranVanC@gmail.com')
INSERT INTO Email_PH VALUES (10,'TranVanD@gmail.com')
INSERT INTO Email_PH VALUES (11,'TranVanE@gmail.com')
INSERT INTO Email_PH VALUES (12,'TranVanF@gmail.com')

INSERT INTO Email_PH VALUES (13,'NguyenThiA@gmail.com')
INSERT INTO Email_PH VALUES (14,'NguyenThiB@gmail.com')
INSERT INTO Email_PH VALUES (15,'NguyenThiY@gmail.com')
INSERT INTO Email_PH VALUES (16,'NguyenThiD@gmail.com')
INSERT INTO Email_PH VALUES (17,'NguyenThiF@gmail.com')
INSERT INTO Email_PH VALUES (18,'NguyenThiR@gmail.com')

INSERT INTO Email_PH VALUES (19,'TranThiG@gmail.com')
INSERT INTO Email_PH VALUES (20,'TranLuanH@gmail.com')
INSERT INTO Email_PH VALUES (21,'TranLuanI@gmail.com')
INSERT INTO Email_PH VALUES (22,'TranLuanJ@gmail.com')
INSERT INTO Email_PH VALUES (23,'TranLuanK@gmail.com')
INSERT INTO Email_PH VALUES (24,'TranLuanL@gmail.com')

--SDT_PH
INSERT INTO SDT_PH VALUES (1,'03265411878')
INSERT INTO SDT_PH VALUES (2,'01547324145')
INSERT INTO SDT_PH VALUES (3,'07857275827')
INSERT INTO SDT_PH VALUES (4,'07857854422')
INSERT INTO SDT_PH VALUES (5,'09845252247')
INSERT INTO SDT_PH VALUES (6,'05277871456')

INSERT INTO SDT_PH VALUES (7,'045455187278')
INSERT INTO SDT_PH VALUES (8,'059733415278')
INSERT INTO SDT_PH VALUES (9,'056472382147')
INSERT INTO SDT_PH VALUES (10,'05342242124')
INSERT INTO SDT_PH VALUES (11,'04534322875')
INSERT INTO SDT_PH VALUES (12,'01324154871')

INSERT INTO SDT_PH VALUES (13,'05241121254')
INSERT INTO SDT_PH VALUES (14,'03445245442')
INSERT INTO SDT_PH VALUES (15,'04534345278')
INSERT INTO SDT_PH VALUES (16,'03634244823')
INSERT INTO SDT_PH VALUES (17,'04564527782')
INSERT INTO SDT_PH VALUES (18,'04528517428')

INSERT INTO SDT_PH VALUES (19,'04541541152')
INSERT INTO SDT_PH VALUES (20,'04728011647')
INSERT INTO SDT_PH VALUES (21,'04157151425')
INSERT INTO SDT_PH VALUES (22,'01242444522')
INSERT INTO SDT_PH VALUES (23,'03272167454')
INSERT INTO SDT_PH VALUES (24,'04527425685')


--Chung_Chi
INSERT INTO Chung_Chi VALUES ('Ielts: 8.0',CONVERT(date,'10-10-2021',105),CONVERT(date,'10-10-2023',105),1)
INSERT INTO Chung_Chi VALUES ('Ielts: 8.5',CONVERT(date,'9-10-2021',105),CONVERT(date,'9-10-2023',105),2)
INSERT INTO Chung_Chi VALUES ('Ielts: 8.0',CONVERT(date,'8-10-2021',105),CONVERT(date,'8-10-2023',105),3)
INSERT INTO Chung_Chi VALUES ('Ielts: 8.5',CONVERT(date,'7-10-2021',105),CONVERT(date,'7-10-2023',105),4)
INSERT INTO Chung_Chi VALUES ('Ielts: 8.0',CONVERT(date,'6-10-2021',105),CONVERT(date,'6-10-2023',105),5)
INSERT INTO Chung_Chi VALUES ('Ielts: 8.5',CONVERT(date,'5-10-2021',105),CONVERT(date,'5-10-2023',105),6)

--Lop_Hoc
INSERT INTO Lop_Hoc VALUES (10,101,1,1,1) -- 1
INSERT INTO Lop_Hoc VALUES (10,301,3,3,2) -- 2
INSERT INTO Lop_Hoc VALUES (10,201,2,4,3) -- 3
INSERT INTO Lop_Hoc VALUES (10,101,1,5,4) -- 4
INSERT INTO Lop_Hoc VALUES (10,302,3,6,5) -- 5
INSERT INTO Lop_Hoc VALUES (10,203,2,2,6) -- 6
INSERT INTO Lop_Hoc VALUES (10,103,1,1,6) -- 7
INSERT INTO Lop_Hoc VALUES (10,102,1,3,4) -- 8
INSERT INTO Lop_Hoc VALUES (10,301,3,4,3) -- 9
INSERT INTO Lop_Hoc VALUES (10,303,3,1,2) -- 10

INSERT INTO Lop_Hoc VALUES (10,101,1,1,3) -- 11
INSERT INTO Lop_Hoc VALUES (10,301,3,6,1) -- 12
INSERT INTO Lop_Hoc VALUES (10,201,2,1,2) -- 13
INSERT INTO Lop_Hoc VALUES (10,101,1,2,5) -- 14
INSERT INTO Lop_Hoc VALUES (10,302,3,3,5) -- 15
INSERT INTO Lop_Hoc VALUES (10,203,2,4,3) -- 16
INSERT INTO Lop_Hoc VALUES (10,103,1,3,2) -- 17
INSERT INTO Lop_Hoc VALUES (10,102,1,6,4) -- 18
INSERT INTO Lop_Hoc VALUES (10,301,3,5,1) -- 19
INSERT INTO Lop_Hoc VALUES (10,303,3,1,2) -- 20

--Tiet_Hoc
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'1-2-2022',105),'7:00','9:30',1,1,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'1-2-2022',105),'13:00','15:30',1,2,N'Lớp đầy đủ, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'2-2-2022',105),'7:00','9:30',2,3,N'Lớp đầy trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'2-2-2022',105),'13:00','15:30',2,6,N'Lớp đầy tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'3-2-2022',105),'7:00','9:30',3,5,N'Lớp đầy đủ, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'3-2-2022',105),'13:00','15:30',3,2,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'4-2-2022',105),'7:00','9:30',4,4,N'Lớp đầy tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'4-2-2022',105),'13:00','15:30',4,4,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'5-2-2022',105),'7:00','9:30',5,3,N'Lớp đầy trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'5-2-2022',105),'13:00','15:30',5,5,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'6-2-2022',105),'7:00','9:30',6,6,N'Lớp đầy đủ, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'6-2-2022',105),'13:00','15:30',6,1,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'7-2-2022',105),'7:00','9:30',7,2,N'Lớp đầy trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'7-2-2022',105),'13:00','15:30',7,3,N'Lớp đầy đủ, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'8-2-2022',105),'7:00','9:30',8,1,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'8-2-2022',105),'13:00','15:30',8,4,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'9-2-2022',105),'7:00','9:30',9,5,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'9-2-2022',105),'13:00','15:30',9,6,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'10-2-2022',105),'7:00','9:30',10,3,N'Lớp đầy đủ, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'10-2-2022',105),'13:00','15:30',10,2,N'Lớp đầy tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'11-2-2022',105),'7:00','9:30',11,1,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'11-2-2022',105),'13:00','15:30',11,3,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'12-2-2022',105),'7:00','9:30',12,5,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'12-2-2022',105),'13:00','15:30',12,4,N'Lớp đầy tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'13-2-2022',105),'7:00','9:30',13,1,N'Lớp đầy đủ, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'13-2-2022',105),'13:00','15:30',13,6,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'14-2-2022',105),'7:00','9:30',14,4,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'14-2-2022',105),'13:00','15:30',14,2,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'15-2-2022',105),'7:00','9:30',15,1,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'15-2-2022',105),'13:00','15:30',15,6,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'16-2-2022',105),'7:00','9:30',16,3,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'16-2-2022',105),'13:00','15:30',16,4,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'17-2-2022',105),'7:00','9:30',17,5,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'17-2-2022',105),'13:00','15:30',17,2,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'18-2-2022',105),'7:00','9:30',18,1,N'Lớp tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'18-2-2022',105),'13:00','15:30',18,2,N'Lớp trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'19-2-2022',105),'7:00','9:30',19,2,N'Lớp đầy đủ, trật tự, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'19-2-2022',105),'13:00','15:30',19,4,N'Lớp đầy đủ, trật tự')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'20-2-2022',105),'7:00','9:30',20,5,N'Lớp đầy đủ, tích cực xây dựng bài')
INSERT INTO Tiet_Hoc VALUES (CONVERT(date,'20-2-2022',105),'13:00','15:30',20,2,N'Lớp ồn')

--Dang_Ki
INSERT INTO Dang_Ki VALUES (1,1)
INSERT INTO Dang_Ki VALUES (3,1)
INSERT INTO Dang_Ki VALUES (2,2)
INSERT INTO Dang_Ki VALUES (3,2)
INSERT INTO Dang_Ki VALUES (4,3)
INSERT INTO Dang_Ki VALUES (5,4)
INSERT INTO Dang_Ki VALUES (6,5)
INSERT INTO Dang_Ki VALUES (4,6)
INSERT INTO Dang_Ki VALUES (5,7)
INSERT INTO Dang_Ki VALUES (2,8)
INSERT INTO Dang_Ki VALUES (1,8)
INSERT INTO Dang_Ki VALUES (3,9)
INSERT INTO Dang_Ki VALUES (5,9)
INSERT INTO Dang_Ki VALUES (1,10)
INSERT INTO Dang_Ki VALUES (3,10)
INSERT INTO Dang_Ki VALUES (2,11)
INSERT INTO Dang_Ki VALUES (5,11)
INSERT INTO Dang_Ki VALUES (3,12)
INSERT INTO Dang_Ki VALUES (1,13)
INSERT INTO Dang_Ki VALUES (2,14)
INSERT INTO Dang_Ki VALUES (5,15)
INSERT INTO Dang_Ki VALUES (3,16)
INSERT INTO Dang_Ki VALUES (1,17)
INSERT INTO Dang_Ki VALUES (4,18)
INSERT INTO Dang_Ki VALUES (1,19)
INSERT INTO Dang_Ki VALUES (6,20)

--Hoc
INSERT INTO Hoc VALUES (1,1)
INSERT INTO Hoc VALUES (3,1)
INSERT INTO Hoc VALUES (9,1)

INSERT INTO Hoc VALUES (10,2)
INSERT INTO Hoc VALUES (11,2)
INSERT INTO Hoc VALUES (2,2)

INSERT INTO Hoc VALUES (4,3)
INSERT INTO Hoc VALUES (8,3)

INSERT INTO Hoc VALUES (5,4)
INSERT INTO Hoc VALUES (14,4)

INSERT INTO Hoc VALUES (6,5)
INSERT INTO Hoc VALUES (7,5)

INSERT INTO Hoc VALUES (8,6)
INSERT INTO Hoc VALUES (18,6)

INSERT INTO Hoc VALUES (14,7)
INSERT INTO Hoc VALUES (15,7)

INSERT INTO Hoc VALUES (12,8)
INSERT INTO Hoc VALUES (13,8)
INSERT INTO Hoc VALUES (17,8)

INSERT INTO Hoc VALUES (9,9)
INSERT INTO Hoc VALUES (15,9)
INSERT INTO Hoc VALUES (16,9)

INSERT INTO Hoc VALUES (11,10)
INSERT INTO Hoc VALUES (12,10)
INSERT INTO Hoc VALUES (19,10)

INSERT INTO Hoc VALUES (15,11)
INSERT INTO Hoc VALUES (17,11)
INSERT INTO Hoc VALUES (20,11)

INSERT INTO Hoc VALUES (11,12)
INSERT INTO Hoc VALUES (16,12)

INSERT INTO Hoc VALUES (1,13)
INSERT INTO Hoc VALUES (12,13)

INSERT INTO Hoc VALUES (2,14)
INSERT INTO Hoc VALUES (10,14)

INSERT INTO Hoc VALUES (14,15)
INSERT INTO Hoc VALUES (15,15)

INSERT INTO Hoc VALUES (3,16)
INSERT INTO Hoc VALUES (11,16)

INSERT INTO Hoc VALUES (12,17)
INSERT INTO Hoc VALUES (19,17)

INSERT INTO Hoc VALUES (4,18)
INSERT INTO Hoc VALUES (18,18)

INSERT INTO Hoc VALUES (1,19)
INSERT INTO Hoc VALUES (19,19)

INSERT INTO Hoc VALUES (6,20)
INSERT INTO Hoc VALUES (7,20)

--Khuyen_Mai
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 1','Voucher',10,CONVERT(date,'1-1-2022',105),CONVERT(date,'3-3-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 2','Qua tang',20,CONVERT(date,'12-1-2022',105),CONVERT(date,'12-3-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 3','Voucher',20,CONVERT(date,'21-3-2022',105),CONVERT(date,'3-4-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 4','Qua tang',15,CONVERT(date,'17-2-2022',105),CONVERT(date,'13-6-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 5','Voucher',5,CONVERT(date,'12-1-2022',105),CONVERT(date,'23-7-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc Toeic','Qua tang',10,CONVERT(date,'11-10-2022',105),CONVERT(date,'23-12-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc ielts','Voucher',15,CONVERT(date,'21-1-2022',105),CONVERT(date,'23-4-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 6','Qua tang',20,CONVERT(date,'21-1-2022',105),CONVERT(date,'3-6-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 7','Voucher',10,CONVERT(date,'21-1-2022',105),CONVERT(date,'23-4-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 7','Qua tang',20,CONVERT(date,'1-1-2022',105),CONVERT(date,'3-3-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 9','Voucher',25,CONVERT(date,'17-2-2022',105),CONVERT(date,'13-6-2022',105))
INSERT INTO Khuyen_Mai VALUES ('Khoa hoc 10','Voucher',20,CONVERT(date,'12-1-2022',105),CONVERT(date,'23-7-2022',105))

--Bien_Lai_Thu_Tien
INSERT INTO Bien_Lai_Thu_Tien VALUES (15000,10000,3000,7000,'Credit',1,1)
INSERT INTO Bien_Lai_Thu_Tien VALUES (17000,11000,3000,8000,'Credit',3,1)
INSERT INTO Bien_Lai_Thu_Tien VALUES (13000,12000,5000,7000,'Credit',9,1)

INSERT INTO Bien_Lai_Thu_Tien VALUES (15000,13000,13000,0,'Cash',10,2)
INSERT INTO Bien_Lai_Thu_Tien VALUES (20000,20000,15000,5000,'Cash',11,2)
INSERT INTO Bien_Lai_Thu_Tien VALUES (15000,15000,15000,0,'Cash',2,2)

INSERT INTO Bien_Lai_Thu_Tien VALUES (15000,12000,12000,0,'Credit',4,3)
INSERT INTO Bien_Lai_Thu_Tien VALUES (15000,9000,9000,0,'Credit',8,3)

INSERT INTO Bien_Lai_Thu_Tien VALUES (15000,12000,12000,0,'Credit',5,4)
INSERT INTO Bien_Lai_Thu_Tien VALUES (16000,16000,16000,0,'Credit',14,4)

INSERT INTO Bien_Lai_Thu_Tien VALUES (16000,12000,8000,4000,'Cash',6,5)
INSERT INTO Bien_Lai_Thu_Tien VALUES (17000,17000,17000,0,'Cash',7,5)

INSERT INTO Bien_Lai_Thu_Tien VALUES (16000,13000,13000,0,'Credit',8,6)
INSERT INTO Bien_Lai_Thu_Tien VALUES (20000,18000,18000,0,'Credit',18,6)

INSERT INTO Bien_Lai_Thu_Tien VALUES (21000,21000,21000,0,'Cash',14,7)
INSERT INTO Bien_Lai_Thu_Tien VALUES (23000,23000,23000,0,'Cash',15,7)

INSERT INTO Bien_Lai_Thu_Tien VALUES (20000,18000,10000,8000,'Credit',12,8)
INSERT INTO Bien_Lai_Thu_Tien VALUES (10000,10000,7000,3000,'Credit',13,8)
INSERT INTO Bien_Lai_Thu_Tien VALUES (13000,13000,12000,1000,'Credit',17,8)

INSERT INTO Bien_Lai_Thu_Tien VALUES (17000,17000,5000,12000,'Cash',9,9)
INSERT INTO Bien_Lai_Thu_Tien VALUES (17000,10000,5000,5000,'Cash',15,9)
INSERT INTO Bien_Lai_Thu_Tien VALUES (17000,14000,13000,1000,'Cash',16,9)

INSERT INTO Bien_Lai_Thu_Tien VALUES (20000,20000,20000,0,'Credit',11,10)
INSERT INTO Bien_Lai_Thu_Tien VALUES (13000,13000,13000,0,'Credit',12,10)
INSERT INTO Bien_Lai_Thu_Tien VALUES (16000,16000,16000,0,'Credit',19,10)

INSERT INTO Bien_Lai_Thu_Tien VALUES (16000,10000,6000,4000,'Credit',15,11)
INSERT INTO Bien_Lai_Thu_Tien VALUES (16000,16000,3000,13000,'Credit',17,11)
INSERT INTO Bien_Lai_Thu_Tien VALUES (16000,13000,3000,10000,'Credit',20,11)

INSERT INTO Bien_Lai_Thu_Tien VALUES (13000,11000,11000,0,'Cash',11,12)
INSERT INTO Bien_Lai_Thu_Tien VALUES (13000,13000,13000,0,'Cash',16,12)

INSERT INTO Bien_Lai_Thu_Tien VALUES (18000,15000,10000,5000,'Cash',1,13)
INSERT INTO Bien_Lai_Thu_Tien VALUES (18000,18000,18000,0,'Cash',12,13)

INSERT INTO Bien_Lai_Thu_Tien VALUES (18000,11000,11000,0,'Credit',2,14)
INSERT INTO Bien_Lai_Thu_Tien VALUES (18000,13000,13000,0,'Credit',10,14)

INSERT INTO Bien_Lai_Thu_Tien VALUES (17000,16000,16000,0,'Credit',14,15)
INSERT INTO Bien_Lai_Thu_Tien VALUES (12000,12000,10000,2000,'Credit',15,15)

INSERT INTO Bien_Lai_Thu_Tien VALUES (17000,14000,14000,0,'Cash',3,16)
INSERT INTO Bien_Lai_Thu_Tien VALUES (17000,17000,17000,0,'Cash',11,16)

INSERT INTO Bien_Lai_Thu_Tien VALUES (14000,12000,7000,5000,'Credit',12,17)
INSERT INTO Bien_Lai_Thu_Tien VALUES (14000,11000,3000,8000,'Credit',19,17)

INSERT INTO Bien_Lai_Thu_Tien VALUES (15000,15000,10000,5000,'Credit',4,18)
INSERT INTO Bien_Lai_Thu_Tien VALUES (15000,14000,9000,5000,'Credit',18,18)

INSERT INTO Bien_Lai_Thu_Tien VALUES (19000,17000,16000,1000,'Cash',1,19)
INSERT INTO Bien_Lai_Thu_Tien VALUES (19000,19000,7000,12000,'Cash',19,19)

INSERT INTO Bien_Lai_Thu_Tien VALUES (20000,20000,7000,13000,'Cash',6,20)
INSERT INTO Bien_Lai_Thu_Tien VALUES (20000,12000,12000,0,'Cash',7,20)

--Ap_Dung
INSERT INTO Ap_Dung	VALUES (1,10)
INSERT INTO Ap_Dung	VALUES (2,7)
INSERT INTO Ap_Dung	VALUES (10,8)
INSERT INTO Ap_Dung	VALUES (11,5)
INSERT INTO Ap_Dung	VALUES (17,7)
INSERT INTO Ap_Dung	VALUES (5,8)
INSERT INTO Ap_Dung	VALUES (7,2)
INSERT INTO Ap_Dung	VALUES (9,3)
INSERT INTO Ap_Dung	VALUES (1,6)
INSERT INTO Ap_Dung	VALUES (5,12)
INSERT INTO Ap_Dung	VALUES (1,4)
INSERT INTO Ap_Dung	VALUES (20,3)
INSERT INTO Ap_Dung	VALUES (4,7)
INSERT INTO Ap_Dung	VALUES (3,8)
