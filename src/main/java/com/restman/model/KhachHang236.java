package com.restman.model;

public class KhachHang236 extends NguoiDung236 {
    private int id;
    private int nguoiDungId;

    public KhachHang236() {}

    public KhachHang236(int id, int nguoiDungId) {
        this.id = id;
        this.nguoiDungId = nguoiDungId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNguoiDungId() {
        return nguoiDungId;
    }

    public void setNguoiDungId(int nguoiDungId) {
        this.nguoiDungId = nguoiDungId;
    }
}
