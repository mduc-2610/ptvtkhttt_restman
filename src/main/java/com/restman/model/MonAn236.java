package com.restman.model;

import java.util.List;

public class MonAn236 {
    private int id;
    private String ten;
    private String moTa;
    private int gia;
    
    public MonAn236() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
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

	@Override
	public String toString() {
		return "MonAn236 [id=" + id + ", ten=" + ten + ", moTa=" + moTa + ", gia=" + gia + "]";
	}
    
}