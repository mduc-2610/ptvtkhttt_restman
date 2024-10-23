package com.restman.model;

import java.util.Date;

import java.util.List;
public class DonHang236 {
    private int id;
    private Date ngayDat;
    private double tongTien;
    private int khachHangId;
    private int nhanVienBanHangId;
    private List<MonAn236> listMonAn;
    private KhachHang236 khachHang;
    
    public DonHang236() {}

    public DonHang236(int id, Date ngayDat, double tongTien) {
        this.id = id;
        this.ngayDat = ngayDat;
        this.tongTien = tongTien;
    }

    public List<MonAn236> getListMonAn() {
		return listMonAn;
	}

	public void setListMonAn(List<MonAn236> listMonAn) {
		this.listMonAn = listMonAn;
	}

	public KhachHang236 getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang236 khachHang) {
		this.khachHang = khachHang;
	}

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

    public double getTongTien() {
        return this.tongTien;
    }
    
    public int getKhachHangId() {
    	return this.khachHangId;
    }
    
    public int getNhanVienBanHangId() {
    	return this.nhanVienBanHangId;
    }
    

    public void setTongTien(double tongTien) {
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