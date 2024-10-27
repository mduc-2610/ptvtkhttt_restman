-- Clear data from all tables before inserting new data
USE restman;

-- Uncomment the DELETE statements if you want to clear existing data
-- DELETE FROM MonAnDonHang236;
-- DELETE FROM ComboMonAn236;
-- DELETE FROM HoaDon236;
-- DELETE FROM ThanhVien236;
-- DELETE FROM DatBan236;
-- DELETE FROM DonHang236;
-- DELETE FROM MonAn236;
-- DELETE FROM Combo236;
-- DELETE FROM NhaCungCap236;
-- DELETE FROM NguyenLieuNhaCungCap236;
-- DELETE FROM NguyenLieu236;
-- DELETE FROM KhachHang236;
-- DELETE FROM NhanVienBanHang236;
-- DELETE FROM NhanVienKho236;
-- DELETE FROM NhanVienQuanLy236;
-- DELETE FROM NguoiDung236;

-- Insert random data into NguoiDung236 (IDs 1 to 10)
INSERT INTO NguoiDung236 (ten, email, matKhau, tuoi, sdt, diaChi) VALUES 
('Nguyễn Văn A', 'nguyenvana@gmail.com', 'password123', 25, '0901234567', '123 Đường ABC, TP.HCM'),
('Trần Thị B', 'tranthib@gmail.com', 'password123', 30, '0902345678', '456 Đường DEF, Hà Nội'),
('Lê Văn C', 'levanc@gmail.com', 'password123', 28, '0903456789', '789 Đường GHI, Đà Nẵng'),
('Phạm Thị D', 'phamthid@gmail.com', 'password123', 22, '0904567890', '101 Đường JKL, Nha Trang'),
('Ngô Văn E', 'govane@gmail.com', 'password123', 35, '0905678901', '202 Đường MNO, TP.HCM'),
('Đỗ Thị F', 'dothif@gmail.com', 'password123', 27, '0906789012', '303 Đường PQR, Hà Nội'),
('Bùi Văn G', 'buivang@gmail.com', 'password123', 33, '0907890123', '404 Đường STU, Đà Nẵng'),
('Nguyễn Thị H', 'nguyenthih@gmail.com', 'password123', 29, '0908901234', '505 Đường VWX, Nha Trang'),
('Vũ Văn I', 'vuvani@gmail.com', 'password123', 24, '0909012345', '606 Đường YZ, TP.HCM'),
('Trịnh Thị J', 'trinhthij@gmail.com', 'password123', 31, '0900123456', '707 Đường ABC, Hà Nội'),
('Nguyễn Văn K', 'nguyenvank@gmail.com', 'password123', 26, '0901234568', '808 Đường DEF, Đà Nẵng'),
('Lê Thị L', 'lethil@gmail.com', 'password123', 32, '0902345679', '909 Đường GHI, Nha Trang'),
('Phạm Văn M', 'phamvanm@gmail.com', 'password123', 29, '0903456780', '111 Đường JKL, TP.HCM'),
('Trần Văn N', 'tranvanm@gmail.com', 'password123', 34, '0904567891', '222 Đường MNO, Hà Nội'),
('Nguyễn Thị O', 'nguyenthio@gmail.com', 'password123', 23, '0905678902', '333 Đường PQR, Đà Nẵng'),
('Bùi Văn P', 'buivanp@gmail.com', 'password123', 30, '0906789013', '444 Đường STU, Nha Trang'),
('Đỗ Văn Q', 'dovanq@gmail.com', 'password123', 28, '0907890124', '555 Đường VWX, TP.HCM'),
('Vũ Thị R', 'vuthir@gmail.com', 'password123', 25, '0908901235', '666 Đường YZ, Hà Nội'),
('Ngô Văn S', 'govans@gmail.com', 'password123', 36, '0909012346', '777 Đường ABC, Đà Nẵng'),
('Trịnh Văn T', 'trinhvant@gmail.com', 'password123', 27, '0900123457', '888 Đường DEF, Nha Trang'),
('Nguyễn Văn U', 'nguyenvanu@gmail.com', 'password123', 26, '0901234568', '999 Đường ABC, TP.HCM'),
('Trần Thị V', 'tranthiv@gmail.com', 'password123', 27, '0902345679', '888 Đường DEF, Hà Nội'),
('Lê Văn W', 'levanw@gmail.com', 'password123', 22, '0903456780', '777 Đường GHI, Đà Nẵng'),
('Phạm Thị X', 'phamthix@gmail.com', 'password123', 29, '0904567891', '666 Đường JKL, Nha Trang'),
('Ngô Văn Y', 'govany@gmail.com', 'password123', 31, '0905678902', '555 Đường MNO, TP.HCM'),
('Đỗ Thị Z', 'dothiz@gmail.com', 'password123', 28, '0906789013', '444 Đường PQR, Hà Nội'),
('Bùi Văn AA', 'buivaa@gmail.com', 'password123', 24, '0907890124', '333 Đường STU, Đà Nẵng'),
('Nguyễn Thị AB', 'nguyenthiab@gmail.com', 'password123', 35, '0908901235', '222 Đường VWX, Nha Trang'),
('Vũ Văn AC', 'vuvanac@gmail.com', 'password123', 26, '0909012346', '111 Đường YZ, TP.HCM'),
('Trịnh Thị AD', 'trinhthiad@gmail.com', 'password123', 30, '0900123457', '000 Đường ABC, Hà Nội'),
('Nguyễn Văn AE', 'nguyenvane@gmail.com', 'password123', 29, '0901234569', '123 Đường DEF, Đà Nẵng'),
('Lê Thị AF', 'lethiaf@gmail.com', 'password123', 32, '0902345670', '456 Đường GHI, Nha Trang'),
('Phạm Văn AG', 'phamvang@gmail.com', 'password123', 34, '0903456781', '789 Đường JKL, TP.HCM'),
('Trần Văn AH', 'tranvanh@gmail.com', 'password123', 25, '0904567892', '101 Đường MNO, Hà Nội'),
('Nguyễn Thị AI', 'nguyenthiai@gmail.com', 'password123', 30, '0905678903', '202 Đường PQR, Đà Nẵng'),
('Bùi Văn AJ', 'buivanj@gmail.com', 'password123', 27, '0906789014', '303 Đường STU, Nha Trang'),
('Đỗ Thị AK', 'dothiak@gmail.com', 'password123', 29, '0907890125', '404 Đường VWX, TP.HCM'),
('Vũ Văn AL', 'vuvanl@gmail.com', 'password123', 23, '0908901236', '505 Đường YZ, Hà Nội'),
('Ngô Văn AM', 'govanm@gmail.com', 'password123', 32, '0909012347', '606 Đường ABC, Đà Nẵng'),
('Trịnh Thị AN', 'trinhthan@gmail.com', 'password123', 35, '0900123458', '707 Đường DEF, Nha Trang'),
('Nguyễn Văn AO', 'nguyenvanao@gmail.com', 'password123', 27, '0901234570', '808 Đường GHI, TP.HCM'),
('Lê Thị AP', 'lethiap@gmail.com', 'password123', 28, '0902345671', '909 Đường JKL, Hà Nội'),
('Phạm Văn AQ', 'phamvanq@gmail.com', 'password123', 31, '0903456782', '111 Đường MNO, Đà Nẵng'),
('Trần Văn AR', 'tranvar@gmail.com', 'password123', 34, '0904567893', '222 Đường PQR, Nha Trang'),
('Nguyễn Thị AS', 'nguyenthias@gmail.com', 'password123', 29, '0905678904', '333 Đường STU, TP.HCM'),
('Bùi Văn AT', 'buivanat@gmail.com', 'password123', 30, '0906789015', '444 Đường VWX, Hà Nội'),
('Đỗ Thị AU', 'dothiau@gmail.com', 'password123', 24, '0907890126', '555 Đường ABC, Đà Nẵng'),
('Vũ Văn AV', 'vuvanav@gmail.com', 'password123', 22, '0908901237', '666 Đường DEF, Nha Trang'),
('Ngô Văn AW', 'govanaw@gmail.com', 'password123', 26, '0909012348', '777 Đường GHI, TP.HCM'),
('Trịnh Thị AX', 'trinhthiax@gmail.com', 'password123', 30, '0900123459', '888 Đường JKL, Hà Nội'),
('Nguyễn Văn AY', 'nguyenvanay@gmail.com', 'password123', 30, '0901234580', '123 Đường MNO, Đà Nẵng'),
('Trần Thị AZ', 'tranthiaz@gmail.com', 'password123', 28, '0902345781', '456 Đường PQR, TP.HCM'),
('Lê Văn BA', 'levanba@gmail.com', 'password123', 31, '0903456783', '789 Đường STU, Hà Nội'),
('Phạm Thị BB', 'phamthibb@gmail.com', 'password123', 29, '0904567894', '101 Đường VWX, Đà Nẵng'),
('Ngô Văn CC', 'govancc@gmail.com', 'password123', 33, '0905678905', '202 Đường YZ, Nha Trang'),
('Đỗ Thị DD', 'dothidd@gmail.com', 'password123', 26, '0906789016', '303 Đường ABC, TP.HCM'),
('Bùi Văn EE', 'buivanee@gmail.com', 'password123', 30, '0907890127', '404 Đường DEF, Hà Nội'),
('Nguyễn Thị FF', 'nguyenthi@gmail.com', 'password123', 34, '0908901238', '505 Đường GHI, Đà Nẵng'),
('Vũ Văn GG', 'vuvang@gmail.com', 'password123', 25, '0909012349', '606 Đường JKL, Nha Trang'),
('Trịnh Thị HH', 'trinhthih@gmail.com', 'password123', 31, '0900123460', '707 Đường MNO, TP.HCM'),
('Nguyễn Văn II', 'nguyenvanii@gmail.com', 'password123', 27, '0901234581', '808 Đường PQR, Hà Nội'),
('Lê Thị JJ', 'lethijj@gmail.com', 'password123', 24, '0902345782', '909 Đường STU, Đà Nẵng'),
('Phạm Văn KK', 'phamvankk@gmail.com', 'password123', 29, '0903456784', '111 Đường VWX, Nha Trang'),
('Trần Văn LL', 'tranvanll@gmail.com', 'password123', 32, '0904567895', '222 Đường YZ, TP.HCM'),
('Nguyễn Thị MM', 'nguyenthimm@gmail.com', 'password123', 28, '0905678906', '333 Đường ABC, Hà Nội'),
('Bùi Văn NN', 'buivann@gmail.com', 'password123', 30, '0906789017', '444 Đường DEF, Đà Nẵng'),
('Đỗ Thị OO', 'dothioo@gmail.com', 'password123', 26, '0907890128', '555 Đường GHI, Nha Trang'),
('Vũ Văn PP', 'vuvanpp@gmail.com', 'password123', 22, '0908901239', '666 Đường JKL, TP.HCM'),
('Ngô Văn QQ', 'govanqq@gmail.com', 'password123', 25, '0909012350', '777 Đường MNO, Hà Nội'),
('Trịnh Thị RR', 'trinhthirr@gmail.com', 'password123', 33, '0900123461', '888 Đường PQR, Đà Nẵng');

-- Insert random data into NhanVienQuanLy236
/*
INSERT INTO NhanVienQuanLy236 (id, NguoiDungId) 
SELECT 
    id,
    id
FROM
    (SELECT 1 AS id UNION ALL SELECT 2) AS temp;
*/

-- Insert random data into NhanVienKho236
/*
INSERT INTO NhanVienKho236 (id, nguoiDungId) 
SELECT 
    id,
    id + 2
FROM
    (SELECT 1 AS id UNION ALL SELECT 2) AS temp;
*/
-- Insert random data into NhanVienBanHang236
/*
INSERT INTO NhanVienBanHang236 (id, NguoiDungId) 
SELECT 
    id,
    id + 4
FROM
    (SELECT 1 AS id UNION ALL SELECT 2) AS temp;
*/

INSERT INTO NhanVien236 (nguoiDungId) VALUES 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15);

INSERT INTO NhanVienBanHang236 (nhanVienId) VALUES 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15);

-- Insert random data into KhachHang236
/*
INSERT INTO KhachHang236 (id, NguoiDungId)
SELECT
    id,
    id + 6
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;
*/
INSERT INTO KhachHang236 (id, nguoiDungId) VALUES 
(1, 16),
(2, 17),
(3, 18),
(4, 19),
(5, 20),
(6, 21),
(7, 22),
(8, 23),
(9, 24),
(10, 25),
(11, 26),
(12, 27),
(13, 28),
(14, 29),
(15, 30),
(16, 31),
(17, 32),
(18, 33),
(19, 34),
(20, 35),
(21, 36),
(22, 37),
(23, 38),
(24, 39),
(25, 40),
(26, 41),
(27, 42),
(28, 43),
(29, 44),
(30, 45),
(31, 46),
(32, 47),
(33, 48),
(34, 49),
(35, 50),
(36, 51),
(37, 52),
(38, 53),
(39, 54),
(40, 55),
(41, 56),
(42, 57),
(43, 58),
(44, 59),
(45, 60),
(46, 61),
(47, 62),
(48, 63),
(49, 64),
(50, 65);

/*
INSERT INTO NguyenLieu236 (id, ten, moTa)
VALUES 
(1, 'Thịt bò', 'Thịt bò tươi'),
(2, 'Bánh phở', 'Bánh phở mềm'),
(3, 'Hành lá', NULL),
(4, 'Thịt nướng', 'Thịt nướng than hoa'),
(5, 'Bún', NULL),
(6, 'Cơm tấm', 'Cơm từ gạo tấm'),
(7, 'Sườn nướng', 'Sườn nướng tẩm gia vị'),
(8, 'Bánh mì', NULL),
(9, 'Trứng', NULL),
(10, 'Tôm', 'Tôm tươi ngon'),
(11, 'Thịt heo', 'Thịt heo luộc'),
(12, 'Bánh tráng', NULL);
*/

/*
INSERT INTO NhaCungCap236 (id, ten, diaChi, sdt)
SELECT
    id,
    CONCAT('NhaCungCap ', id),
    CONCAT('Dia Chi ', id),
    CONCAT('09', LPAD(FLOOR(RAND() * 100000000), 8, '0')),
    FLOOR(RAND() * 2) + 1
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

INSERT INTO Combo236 (id, ten)
SELECT
    id,
    CONCAT('Combo ', id),
    FLOOR(RAND() * 2) + 1
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;
*/

INSERT INTO MonAn236 (id, ten, gia, moTa)
VALUES 
(1, 'Phở bò', 50000, 'Món phở với thịt bò và nước dùng thơm ngon'),
(2, 'Bún chả', 40000, 'Bún với thịt nướng và nước chấm đặc trưng'),
(3, 'Cơm tấm', 45000, 'Cơm tấm sườn nướng và bì chả'),
(4, 'Bánh mì', 20000, 'Bánh mì kẹp thịt, trứng và rau củ'),
(5, 'Gỏi cuốn', 30000, 'Gỏi cuốn tôm thịt kèm nước chấm đậu phộng'),
(6, 'Bún bò Huế', 60000, 'Bún bò với nước lèo đặc trưng Huế'),
(7, 'Chả cá Lã Vọng', 80000, 'Chả cá nướng và ăn cùng bún và rau thơm'),
(8, 'Mì Quảng', 55000, 'Mì Quảng với tôm, thịt và bánh tráng'),
(9, 'Lẩu cá', 90000, 'Lẩu cá với rau và bún'),
(10, 'Nem rán', 40000, 'Nem rán giòn rụm với nhân thịt và rau củ'),
(11, 'Bánh xèo', 35000, 'Bánh xèo giòn với tôm thịt và giá đỗ'),
(12, 'Xôi xéo', 25000, 'Xôi xéo với đậu xanh và hành phi'),
(13, 'Bánh cuốn', 30000, 'Bánh cuốn với nhân thịt băm và mộc nhĩ'),
(14, 'Cá kho tộ', 70000, 'Cá kho tộ đậm đà hương vị truyền thống'),
(15, 'Mực nướng', 85000, 'Mực nướng tươi ngon và cay nhẹ'),
(16, 'Ốc luộc', 40000, 'Ốc luộc nóng hổi với nước mắm gừng'),
(17, 'Bún riêu cua', 50000, 'Bún riêu cua đậm đà và thơm phức'),
(18, 'Gà hấp lá chanh', 75000, 'Gà hấp lá chanh thơm ngon'),
(19, 'Súp cua', 30000, 'Súp cua với nấm và trứng'),
(20, 'Bò lá lốt', 45000, 'Bò lá lốt nướng thơm ngon'),
(21, 'Hủ tiếu Nam Vang', 55000, 'Hủ tiếu Nam Vang với tôm, thịt và rau thơm'),
(22, 'Canh chua cá lóc', 60000, 'Canh chua cá lóc miền Tây'),
(23, 'Lẩu Thái', 95000, 'Lẩu Thái chua cay đậm đà'),
(24, 'Gà nướng muối ớt', 75000, 'Gà nướng muối ớt cay cay'),
(25, 'Bún mắm', 65000, 'Bún mắm đậm đà miền Tây'),
(26, 'Bánh tráng trộn', 20000, 'Bánh tráng trộn đủ vị với bò khô'),
(27, 'Bánh bèo', 30000, 'Bánh bèo mềm và nước mắm chua ngọt'),
(28, 'Gà rán', 50000, 'Gà rán giòn thơm ngon'),
(29, 'Bún thịt nướng', 45000, 'Bún với thịt nướng và nước mắm'),
(30, 'Cá nướng muối ớt', 80000, 'Cá nướng cay cay với muối ớt'),
(31, 'Sushi', 120000, 'Sushi Nhật Bản với cá hồi tươi'),
(32, 'Rau muống xào tỏi', 25000, 'Rau muống xào tỏi thơm ngon'),
(33, 'Bún đậu mắm tôm', 40000, 'Bún đậu mắm tôm đặc trưng Hà Nội'),
(34, 'Cháo lòng', 30000, 'Cháo lòng thơm ngon đậm đà'),
(35, 'Canh bầu nấu tôm', 35000, 'Canh bầu nấu tôm ngọt mát'),
(36, 'Mực xào chua ngọt', 75000, 'Mực xào với dứa chua ngọt'),
(37, 'Tôm nướng muối ớt', 85000, 'Tôm nướng với muối ớt thơm ngon'),
(38, 'Cháo gà', 30000, 'Cháo gà thơm ngon, dễ ăn'),
(39, 'Bò kho', 65000, 'Bò kho đậm đà, ăn cùng bánh mì'),
(40, 'Cơm gà Hội An', 55000, 'Cơm gà đặc sản Hội An'),
(41, 'Cá hồi nướng', 90000, 'Cá hồi nướng với rau củ tươi ngon'),
(42, 'Lẩu dê', 100000, 'Lẩu dê thơm ngon'),
(43, 'Cánh gà chiên nước mắm', 70000, 'Cánh gà chiên giòn với nước mắm'),
(44, 'Xôi gấc', 25000, 'Xôi gấc màu đỏ đẹp mắt'),
(45, 'Sườn xào chua ngọt', 75000, 'Sườn xào với dứa chua ngọt'),
(46, 'Nem nướng', 40000, 'Nem nướng chấm với nước mắm chua ngọt'),
(47, 'Gỏi gà', 35000, 'Gỏi gà xé phay với rau thơm'),
(48, 'Cà phê trứng', 40000, 'Cà phê trứng thơm ngon'),
(49, 'Sinh tố bơ', 30000, 'Sinh tố bơ mịn màng và béo ngậy'),
(50, 'Chè bưởi', 20000, 'Chè bưởi giòn ngon');


/*
INSERT INTO ComboMonAn236 (comboId, monAnId, soLuong)
SELECT
    ComboId,
    MonAnId,
    RAND() * 10
FROM
    (SELECT 1 AS ComboId, 1 AS MonAnId UNION ALL
     SELECT 2, 2 UNION ALL
     SELECT 3, 3 UNION ALL
     SELECT 4, 4) AS temp;
*/
-- Insert random data into DatBan236
-- INSERT INTO DatBan236 (id, ngayDat, soBan, KhachHangId, NhanVienBanHangId)
-- SELECT
--     id,
--     DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND() * 365) DAY),
--     FLOOR(RAND() * 10) + 1,
--     FLOOR(RAND() * 4) + 1,
--     FLOOR(RAND() * 2) + 1
-- FROM
--     (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

-- Insert random data into ThanhVien236
-- INSERT INTO ThanhVien236 (id, ngayGiaNhap, tienCauLacBo, KhachHangId)
-- SELECT
--     id,
--     DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND() * 365) DAY),
--     FLOOR(RAND() * 1000) + 500,
--     FLOOR(RAND() * 4) + 1
-- FROM
--     (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;


DROP PROCEDURE IF EXISTS GenerateOrders;
DELIMITER //
CREATE PROCEDURE GenerateOrders()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE order_date DATE;
    DECLARE customer_id INT;
    DECLARE staff_id INT;
    DECLARE num_items INT;
    DECLARE j INT;
    DECLARE food_id INT;
    DECLARE quantity INT;
    DECLARE total_amount DECIMAL(10,2);
    DECLARE payment_date DATE;
    
    WHILE i <= 100 DO
        SET order_date = DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND() * 730) DAY);
        
        SET customer_id = FLOOR(1 + RAND() * 50);
        
        -- IF RAND() < 0.1 THEN  -- 10% cơ hội NULL
--             SET staff_id = NULL;
--         ELSE
            SET staff_id = FLOOR(1 + RAND() * 15);
        -- END IF;
        
        INSERT INTO DonHang236 (id, ngayDat, khachHangId, nhanVienBanHangId)
        VALUES (i, order_date, customer_id, staff_id);
        
        SET num_items = FLOOR(2 + RAND() * 4);
        SET j = 1;
        SET total_amount = 0;
        
        WHILE j <= num_items DO
            SET food_id = FLOOR(1 + RAND() * 50);
            SET quantity = FLOOR(1 + RAND() * 5);
            
            IF NOT EXISTS (SELECT 1 FROM MonAnDonHang236 WHERE monAnId = food_id AND donHangId = i) THEN
                INSERT INTO MonAnDonHang236 (monAnId, donHangId, soLuong)
                VALUES (food_id, i, quantity);

                SET total_amount = total_amount + (FLOOR(30 + RAND() * 170) * quantity);
            END IF;
            SET j = j + 1;
        END WHILE;
        
        -- Tạo hóa đơn với ngày thanh toán sau ngày đặt 0-3 ngày
        SET payment_date = DATE_ADD(order_date, INTERVAL FLOOR(RAND() * 4) DAY);
        
        -- Insert vào bảng HoaDon236
        INSERT INTO HoaDon236 (id, ngayThanhToan, donHangId)
        VALUES (i, payment_date, i);
        
        SET i = i + 1;
    END WHILE;
    
END //
DELIMITER ;

-- Gọi procedure để tạo dữ liệu
CALL GenerateOrders();

