package com.restman.model;

import java.util.Date;
import java.util.List;

public class HoaDon236 {
    private int id; 
    private Date ngayThanhToan;
    private double tongTien; 
    private String ghiChu; 
    private int donHangId;
    private List<MonAn236> listMonAn;
    

    public List<MonAn236> getListMonAn() {
		return listMonAn;
	}

	public void setListMonAn(List<MonAn236> listMonAn) {
		this.listMonAn = listMonAn;
	}

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

    public double getTongTien() { 
        return tongTien; 
    }

    public void setTongTien(double tongTien) { 
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
