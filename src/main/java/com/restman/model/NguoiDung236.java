package com.restman.model;

public class NguoiDung236 {
    private int id;
    private String ten;
    private String email;
    private String matKhau;
    private int tuoi;
    private String diaChi;
    private String sdt;

    public NguoiDung236() {}

    public NguoiDung236(int id, String ten, String email, String matKhau, int tuoi, String diaChi, String sdt) {
        this.id = id;
        this.ten = ten;
        this.email = email;
        this.matKhau = matKhau;
        this.tuoi = tuoi;
        this.diaChi = diaChi;
        this.sdt = sdt;
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

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public int getTuoi() {
		return tuoi;
	}

	public void setTuoi(int tuoi) {
		this.tuoi = tuoi;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	@Override
	public String toString() {
		return "NguoiDung [id=" + id + ", ten=" + ten + ", email=" + email + ", matKhau=" + matKhau + ", tuoi=" + tuoi
				+ ", diaChi=" + diaChi + ", sdt=" + sdt + "]";
	}

    
}
