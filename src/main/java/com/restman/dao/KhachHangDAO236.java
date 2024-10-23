package com.restman.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.restman.model.*;
import com.restman.util.DBUtil;

public class KhachHangDAO236 {
    private Connection connection;

    public KhachHangDAO236() {
        connection = DBUtil.getConnection();
    }

    public KhachHang236 getKhachHang(int id) throws SQLException {
    	KhachHang236 khachHang = null;
        String query = "SELECT nd.* FROM KhachHang236 kh " + 
        			"JOIN NguoiDung236 nd on nd.id = kh.nguoiDungId " + 
        			"WHERE kh.id = ?";

        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                khachHang = new KhachHang236();
                khachHang.setId(rs.getInt("id"));
                khachHang.setTen(rs.getString("ten"));
                khachHang.setEmail(rs.getString("email"));
                khachHang.setMatKhau(rs.getString("matKhau"));
                khachHang.setTuoi(rs.getInt("tuoi"));
                khachHang.setDiaChi(rs.getString("diaChi"));
                khachHang.setSdt(rs.getString("sdt"));
            }
        } 
        return khachHang;
    }
    
    public KhachHang236 getKhachHangByHoaDon(int hoaDonId) throws SQLException {
        KhachHang236 khachHang = null;
        
        String query = "SELECT kh.id, kh.ten, kh.tuoi, kh.diaChi, kh.sdt " +
                       "FROM KhachHang236 kh " +
                       "JOIN DonHang236 dh ON kh.id = dh.khachHangId " +
                       "JOIN HoaDon236 hd ON dh.id = hd.donHangId " +
                       "WHERE hd.id = ?";

        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, hoaDonId);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                khachHang = new KhachHang236();
                khachHang.setId(rs.getInt("id"));
                khachHang.setTen(rs.getString("ten"));
                khachHang.setDiaChi(rs.getString("diaChi"));
                khachHang.setSdt(rs.getString("sdt"));
            }
        }
        return khachHang;
    }

}
