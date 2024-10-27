package com.restman.model;

import java.util.Date;
import java.util.List;

public class HoaDon236 {
    private int id;
    private Date ngayThanhToan;
    private int tongTien;
    private String ghiChu;
    private int donHangId;
    
    public HoaDon236() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getNgayThanhToan() {
		return ngayThanhToan;
	}

	public void setNgayThanhToan(Date ngayThanhToan) {
		this.ngayThanhToan = ngayThanhToan;
	}

	public int getTongTien() {
		return tongTien;
	}

	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public int getDonHangId() {
		return donHangId;
	}

	public void setDonHangId(int donHangId) {
		this.donHangId = donHangId;
	}
    
}