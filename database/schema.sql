-- Drop tables if they exist
USE restman;
DROP TABLE IF EXISTS MonAnDonHang;
DROP TABLE IF EXISTS ComboMonAn;
DROP TABLE IF EXISTS HoaDon;
DROP TABLE IF EXISTS ThanhVien;
DROP TABLE IF EXISTS DatBan;
DROP TABLE IF EXISTS DonHang;
DROP TABLE IF EXISTS MonAn;
DROP TABLE IF EXISTS Combo;
DROP TABLE IF EXISTS NguyenLieuNhaCungCap;
DROP TABLE IF EXISTS NhaCungCap;
DROP TABLE IF EXISTS NguyenLieu;
DROP TABLE IF EXISTS KhachHang;
DROP TABLE IF EXISTS NhanVienBanHang;
DROP TABLE IF EXISTS NhanVienKho;
DROP TABLE IF EXISTS NhanVienQuanLy;
DROP TABLE IF EXISTS NguoiDung;

-- Create tables

-- Bảng NguoiDung
CREATE TABLE NguoiDung (
    id INT PRIMARY KEY,
    ten VARCHAR(100),
    email VARCHAR(150),
    matKhau VARCHAR(50)
);

-- Bảng NhanVienQuanLy
CREATE TABLE NhanVienQuanLy (
    id INT PRIMARY KEY,
    NguoiDungId INT,
    CONSTRAINT FK_NhanVienQuanLy_NguoiDung FOREIGN KEY (NguoiDungId)
    REFERENCES NguoiDung(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Bảng NhanVienKho
CREATE TABLE NhanVienKho (
    id INT PRIMARY KEY,
    NguoiDungId INT,
    CONSTRAINT FK_NhanVienKho_NguoiDung FOREIGN KEY (NguoiDungId)
    REFERENCES NguoiDung(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Bảng NhanVienBanHang
CREATE TABLE NhanVienBanHang (
    id INT PRIMARY KEY,
    NguoiDungId INT,
    CONSTRAINT FK_NhanVienBanHang_NguoiDung FOREIGN KEY (NguoiDungId)
    REFERENCES NguoiDung(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Bảng KhachHang
CREATE TABLE KhachHang (
    id INT PRIMARY KEY,
    NguoiDungId INT,
    CONSTRAINT FK_KhachHang_NguoiDung FOREIGN KEY (NguoiDungId)
    REFERENCES NguoiDung(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Bảng NguyenLieu
CREATE TABLE NguyenLieu (
    id INT PRIMARY KEY,
    ten VARCHAR(50),
    soLuong INT
);

-- Bảng NhaCungCap
CREATE TABLE NhaCungCap (
    id INT PRIMARY KEY,
    ten VARCHAR(100),
    diaChi VARCHAR(150),
    sdt VARCHAR(15),
    NhanVienKhoId INT,
    CONSTRAINT FK_NhaCungCap_NhanVienKho FOREIGN KEY (NhanVienKhoId)
    REFERENCES NhanVienKho(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

-- Bảng NguyenLieuNhaCungCap
CREATE TABLE NguyenLieuNhaCungCap (
    NguyenLieuId INT,
    NhaCungCapId INT,
    PRIMARY KEY (NguyenLieuId, NhaCungCapId),
    CONSTRAINT FK_NguyenLieuNhaCungCap_NguyenLieu FOREIGN KEY (NguyenLieuId)
    REFERENCES NguyenLieu(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    
    CONSTRAINT FK_NguyenLieuNhaCungCap_NhaCungCap FOREIGN KEY (NhaCungCapId)
    REFERENCES NhaCungCap(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Bảng Combo
CREATE TABLE Combo (
    id INT PRIMARY KEY,
    ten VARCHAR(100),
    NhanVienQuanLyId INT,
    CONSTRAINT FK_Combo_NhanVienQuanLy FOREIGN KEY (NhanVienQuanLyId)
    REFERENCES NhanVienQuanLy(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

-- Bảng MonAn
CREATE TABLE MonAn (
    id INT PRIMARY KEY,
    ten VARCHAR(100),
    gia INT,
    moTa VARCHAR(500)
);

-- Bảng ComboMonAn
CREATE TABLE ComboMonAn (
    ComboId INT,
    MonAnId INT,
    PRIMARY KEY (ComboId, MonAnId),
    CONSTRAINT FK_ComboMonAn_Combo FOREIGN KEY (ComboId)
    REFERENCES Combo(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    CONSTRAINT FK_ComboMonAn_MonAn FOREIGN KEY (MonAnId)
    REFERENCES MonAn(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Bảng DonHang
CREATE TABLE DonHang (
    id INT PRIMARY KEY,
    ngayDat DATE,
    KhachHangId INT,
    NhanVienBanHangId INT,
    CONSTRAINT FK_DonHang_KhachHang FOREIGN KEY (KhachHangId)
    REFERENCES KhachHang(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    CONSTRAINT FK_DonHang_NhanVienBanHang FOREIGN KEY (NhanVienBanHangId)
    REFERENCES NhanVienBanHang(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

-- Bảng MonAnDonHang
CREATE TABLE MonAnDonHang (
    MonAnId INT,
    DonHangId INT,
    PRIMARY KEY (MonAnId, DonHangId),
    CONSTRAINT FK_MonAnDonHang_MonAn FOREIGN KEY (MonAnId)
    REFERENCES MonAn(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    CONSTRAINT FK_MonAnDonHang_DonHang FOREIGN KEY (DonHangId)
    REFERENCES DonHang(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Bảng DatBan
CREATE TABLE DatBan (
    id INT PRIMARY KEY,
    ngayDat DATE,
    soBan INT,
    KhachHangId INT,
    NhanVienBanHangId INT,
    CONSTRAINT FK_DatBan_KhachHang FOREIGN KEY (KhachHangId)
    REFERENCES KhachHang(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    CONSTRAINT FK_DatBan_NhanVienBanHang FOREIGN KEY (NhanVienBanHangId)
    REFERENCES NhanVienBanHang(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

-- Bảng ThanhVien
CREATE TABLE ThanhVien (
    id INT PRIMARY KEY,
    ngayGiaNhap DATE,
    tienCauLacBo INT,
    KhachHangId INT,
    CONSTRAINT FK_ThanhVien_KhachHang FOREIGN KEY (KhachHangId)
    REFERENCES KhachHang(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Bảng HoaDon
CREATE TABLE HoaDon (
    id INT PRIMARY KEY,
    ngayThanhToan DATE,
    tongTien INT,
    DonHangId INT,
    CONSTRAINT FK_HoaDon_DonHang FOREIGN KEY (DonHangId)
    REFERENCES DonHang(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
