package com.restman.model;

import java.util.Date;

import java.util.List;
public class DonHang236 {
    private int id;
    private Date ngayDat;
    private int tongTien;
    private int khachHangId;
    private int nhanVienBanHangId;
    
    public DonHang236() {}

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgayDat() {
        return ngayDat;
    }

    public void setNgayDat(Date ngayDat) {
        this.ngayDat = ngayDat;
    }

    public int getTongTien() {
        return this.tongTien;
    }
    
    public int getKhachHangId() {
    	return this.khachHangId;
    }
    
    public int getNhanVienBanHangId() {
    	return this.nhanVienBanHangId;
    }
    

    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }


    public void setKhachHangId(int khachHangId) {
    	this.khachHangId = khachHangId;
    }
    
    public void setNhanVienBanHangId(int nhanVienBanHangId) {
    	this.nhanVienBanHangId = nhanVienBanHangId;
    }

	@Override
	public String toString() {
		return "DonHang236 [id=" + id + ", ngayDat=" + ngayDat + ", tongTien=" + tongTien + ", khachHangId="
				+ khachHangId + ", nhanVienBanHangId=" + nhanVienBanHangId + "]";
	}
    
    
}