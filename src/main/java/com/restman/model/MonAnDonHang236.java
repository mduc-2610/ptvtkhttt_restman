package com.restman.model;

import java.util.List;

public class MonAnDonHang236 {
    private MonAn236 monAn;
    private int soLuong;
    private int thanhTien;
    
    public MonAnDonHang236() {}
      
	public MonAn236 getMonAn() {
		return monAn;
	}

	public void setMonAn(MonAn236 monAn) {
		this.monAn = monAn;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public int getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(int thanhTien) {
		this.thanhTien = thanhTien;
	}

	@Override
	public String toString() {
		return "MonAnDonHang236 [monAn=" + monAn + ", soLuong=" + soLuong + ", thanhTien=" + thanhTien + "]";
	}
    
}