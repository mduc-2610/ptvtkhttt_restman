package com.restman.model;

import java.util.List;

public class MonAn236 {
    private int id;
    private String ten;
    private String moTa;
    private int gia;
    private int soLanGoi;
    private int soLuongDaBan;
    private int soLuong;
    private int doanhThu;
    private int thanhTien;
    public int getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(int thanhTien) {
		this.thanhTien = thanhTien;
	}

	private List<DonHang236> listDonHang;

    public MonAn236() {}

    public MonAn236(int id, String ten, String moTa, int gia) {
        this.id = id;
        this.ten = ten;
        this.moTa = moTa;
        this.gia = gia;
    }
    
    public MonAn236(int id, String ten, String moTa, int gia, int soLanGoi, int soLuongDaBan, int doanhThu) {
        this.id = id;
        this.ten = ten;
        this.moTa = moTa;
        this.gia = gia;
        this.soLanGoi = soLanGoi;
        this.soLuongDaBan = soLuongDaBan;
        this.doanhThu = doanhThu;
    }

    public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public int getDoanhThu() {
    	return doanhThu;
    }
    
    public int getSoLanGoi() {
    	return soLanGoi;
    }
    
    public int getSoLuongDaBan() {
    	return soLuongDaBan;
    }
    
    public void setTenMonAn(String tenMonAn) {
        this.ten = tenMonAn;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public int getGia() {
        return gia;
    }
    
    public List<DonHang236> getListDonHang() {
    	return this.listDonHang;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }
    
    public void setDoanhThu(int doanhThu) {
    	this.doanhThu = doanhThu;
    }
    
    public void setSoLanGoi(int soLanGoi) {
    	this.soLanGoi = soLanGoi;
    }
    
    public void setSoLuongDaBan(int soLuongDaBan) {
    	this.soLuongDaBan = soLuongDaBan;
    }
    
    public void setListDonHang(List<DonHang236> listDonHang) {
    	this.listDonHang = listDonHang;
    }
    
    @Override
    public String toString() {
        return "MonAn{" +
               "id=" + id +
               ", tenMonAn='" + ten + '\'' +
               ", moTa='" + moTa + '\'' +
               ", gia=" + gia +
               '}';
    }
}