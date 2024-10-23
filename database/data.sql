-- Clear data from all tables before inserting new data
USE restman;

-- Uncomment the DELETE statements if you want to clear existing data
-- DELETE FROM MonAnDonHang;
-- DELETE FROM ComboMonAn;
-- DELETE FROM HoaDon;
-- DELETE FROM ThanhVien;
-- DELETE FROM DatBan;
-- DELETE FROM DonHang;
-- DELETE FROM MonAn;
-- DELETE FROM Combo;
-- DELETE FROM NhaCungCap;
-- DELETE FROM NguyenLieuNhaCungCap;
-- DELETE FROM NguyenLieu;
-- DELETE FROM KhachHang;
-- DELETE FROM NhanVienBanHang;
-- DELETE FROM NhanVienKho;
-- DELETE FROM NhanVienQuanLy;
-- DELETE FROM NguoiDung;

-- Insert random data into NguoiDung (IDs 1 to 10)
INSERT INTO NguoiDung (id, ten, email, matKhau) 
SELECT
    id,
    CONCAT('User ', id),
    CONCAT('user', id, '@example.com'),
    CONCAT('password', FLOOR(RAND() * 10000))
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL 
     SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL 
     SELECT 9 UNION ALL SELECT 10) AS temp;

-- Insert random data into NhanVienQuanLy
INSERT INTO NhanVienQuanLy (id, NguoiDungId) 
SELECT 
    id,
    id
FROM
    (SELECT 1 AS id UNION ALL SELECT 2) AS temp;

-- Insert random data into NhanVienKho
INSERT INTO NhanVienKho (id, NguoiDungId) 
SELECT 
    id,
    id + 2
FROM
    (SELECT 1 AS id UNION ALL SELECT 2) AS temp;

-- Insert random data into NhanVienBanHang
INSERT INTO NhanVienBanHang (id, NguoiDungId) 
SELECT 
    id,
    id + 4
FROM
    (SELECT 1 AS id UNION ALL SELECT 2) AS temp;

-- Insert random data into KhachHang
INSERT INTO KhachHang (id, NguoiDungId)
SELECT
    id,
    id + 6
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

-- Insert random data into NguyenLieu
INSERT INTO NguyenLieu (id, ten, soLuong) 
SELECT
    id,
    CONCAT('NguyenLieu ', id),
    FLOOR(RAND() * 1000)
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS temp;

-- Insert random data into NhaCungCap
INSERT INTO NhaCungCap (id, ten, diaChi, sdt, NhanVienKhoId)
SELECT
    id,
    CONCAT('NhaCungCap ', id),
    CONCAT('Dia Chi ', id),
    CONCAT('09', LPAD(FLOOR(RAND() * 100000000), 8, '0')),
    FLOOR(RAND() * 2) + 1
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

-- Insert random data into Combo
INSERT INTO Combo (id, ten, NhanVienQuanLyId)
SELECT
    id,
    CONCAT('Combo ', id),
    FLOOR(RAND() * 2) + 1
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

-- Insert random data into MonAn
INSERT INTO MonAn (id, ten, gia, moTa)
SELECT
    id,
    CONCAT('Mon An ', id),
    FLOOR(RAND() * 100) + 100,
    CONCAT('Mo ta mon an ', id)
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

-- Insert random data into ComboMonAn
INSERT INTO ComboMonAn (ComboId, MonAnId)
SELECT
    ComboId,
    MonAnId
FROM
    (SELECT 1 AS ComboId, 1 AS MonAnId UNION ALL
     SELECT 2, 2 UNION ALL
     SELECT 3, 3 UNION ALL
     SELECT 4, 4) AS temp;

-- Insert random data into DonHang
INSERT INTO DonHang (id, ngayDat, KhachHangId, NhanVienBanHangId)
SELECT
    id,
    -- Assuming you have a user-defined function `random_date`, otherwise replace with appropriate date logic
    DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND() * 365) DAY),
    FLOOR(RAND() * 4) + 1,
    FLOOR(RAND() * 2) + 1
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

-- Insert random data into MonAnDonHang
INSERT INTO MonAnDonHang (MonAnId, DonHangId)
SELECT
    MonAnId,
    DonHangId
FROM
    (SELECT 1 AS MonAnId, 1 AS DonHangId UNION ALL
     SELECT 2, 2 UNION ALL
     SELECT 3, 3 UNION ALL
     SELECT 4, 4) AS temp;

-- Insert random data into DatBan
INSERT INTO DatBan (id, ngayDat, soBan, KhachHangId, NhanVienBanHangId)
SELECT
    id,
    DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND() * 365) DAY),
    FLOOR(RAND() * 10) + 1,
    FLOOR(RAND() * 4) + 1,
    FLOOR(RAND() * 2) + 1
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

-- Insert random data into ThanhVien
INSERT INTO ThanhVien (id, ngayGiaNhap, tienCauLacBo, KhachHangId)
SELECT
    id,
    DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND() * 365) DAY),
    FLOOR(RAND() * 1000) + 500,
    FLOOR(RAND() * 4) + 1
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;

-- Insert random data into HoaDon
INSERT INTO HoaDon (id, ngayThanhToan, tongTien, DonHangId)
SELECT
    id,
    DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND() * 365) DAY),
    FLOOR(RAND() * 1000) + 500,
    FLOOR(RAND() * 4) + 1
FROM
    (SELECT 1 AS id UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS temp;
