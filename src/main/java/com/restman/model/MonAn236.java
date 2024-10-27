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
    
    public MonAn236() {}

    public int getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(int thanhTien) {
		this.thanhTien = thanhTien;
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