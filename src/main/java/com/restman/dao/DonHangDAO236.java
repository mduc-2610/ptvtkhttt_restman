package com.restman.dao;

import com.restman.model.DonHang236;
import com.restman.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DonHangDAO236 {
    private Connection connection;

    public DonHangDAO236() {
        connection = DBUtil.getConnection();
    }

    public List<DonHang236> getListDonHangByMonAn(int monAnId, Date startDate, Date endDate) throws SQLException {
        List<DonHang236> donHangList = new ArrayList<>();
        String query = "\r\n"
        		+ "SELECT dh.id, dh.ngayDat, dh.KhachHangId, dh.NhanVienBanHangId FROM MonAn236 ma \r\n"
        		+ "LEFT JOIN MonAnDonHang236 mad on ma.id = mad.MonAnId\r\n"
        		+ "LEFT JOIN DonHang236 dh on mad.DonHangId = dh.id \r\n"
        		+ "where ma.id = ? and dh.ngayDat BETWEEN ? and ?";
        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, monAnId);
            pstmt.setDate(2, startDate);
            pstmt.setDate(3, endDate);
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
            	DonHang236 donHang = new DonHang236();
                donHang.setId(rs.getInt("id"));
                donHang.setNgayDat(rs.getDate("ngayDat"));
                donHang.setKhachHangId(rs.getInt("KhachHangId"));
                donHang.setNhanVienBanHangId(rs.getInt("NhanVienBanHangId"));
                donHangList.add(donHang);
            }
        }
        
        return donHangList;
    }

    public DonHang236 getDonHang(int id) throws SQLException {
    	DonHang236 donHang = null;
        String query = "SELECT * FROM DonHang WHERE Id = ?";
        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                donHang = new DonHang236();
                donHang.setId(rs.getInt("Id"));
                donHang.setNgayDat(rs.getDate("NgayDat"));
                donHang.setTongTien(rs.getDouble("TongTien"));
            }
        }
        
        return donHang;
    }
}