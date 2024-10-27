package com.restman.model;

import java.util.List;

public class MonAnThongKe236 extends MonAn236 {
    private int soLanGoi;
    private int soLuongDaBan;
    private int soLuong;
    private int doanhThu;
    private int thanhTien;
    
    public MonAnThongKe236() {}

	public int getSoLanGoi() {
		return soLanGoi;
	}

	public void setSoLanGoi(int soLanGoi) {
		this.soLanGoi = soLanGoi;
	}

	public int getSoLuongDaBan() {
		return soLuongDaBan;
	}

	public void setSoLuongDaBan(int soLuongDaBan) {
		this.soLuongDaBan = soLuongDaBan;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public int getDoanhThu() {
		return doanhThu;
	}

	public void setDoanhThu(int doanhThu) {
		this.doanhThu = doanhThu;
	}

	public int getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(int thanhTien) {
		this.thanhTien = thanhTien;
	}

	@Override
	public String toString() {
		return "MonAnThongKe236 [soLanGoi=" + soLanGoi + ", soLuongDaBan=" + soLuongDaBan + ", soLuong=" + soLuong
				+ ", doanhThu=" + doanhThu + ", thanhTien=" + thanhTien + "]";
	}
	
    
}