package com.restman.dao;

import com.restman.model.DonHang236;
import com.restman.model.KhachHang236;
import com.restman.model.MonAn236;
import com.restman.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DonHangDAO236 extends DAO {
	
    public List<DonHang236> getListDonHangByMonAn(int monAnId, Date batDau, Date ketThuc) throws SQLException {
        List<DonHang236> donHangList = new ArrayList<>();
        String query = "SELECT dh.id, dh.ngayDat, dh.khachHangId, dh.nhanVienBanHangId "
        		+ "FROM MonAn236 ma "
        		+ "LEFT JOIN MonAnDonHang236 mad ON ma.id = mad.monAnId "
        		+ "LEFT JOIN DonHang236 dh ON mad.donHangId = dh.id "
        		+ "WHERE ma.id = ? AND dh.ngayDat BETWEEN ? AND ?";

        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, monAnId);
            pstmt.setDate(2, batDau);
            pstmt.setDate(3, ketThuc);
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
            	DonHang236 donHang = new DonHang236();
                donHang.setId(rs.getInt("id"));
                donHang.setNgayDat(rs.getDate("ngayDat"));
                donHang.setKhachHangId(rs.getInt("khachHangId"));
                donHang.setNhanVienBanHangId(rs.getInt("nhanVienBanHangId"));
                donHangList.add(donHang);
            }
        }
        
        return donHangList;
    }

    public DonHang236 getDonHang(int id) throws SQLException {
        DonHang236 donHang = null;
//        String query = "SELECT * FROM DonHang236 " +
//                      "WHERE id = ?";
        String query = "SELECT dh.*, " +
		        "SUM(ma.gia * mad.soLuong) AS tongTien " +
		        "FROM DonHang236 dh " +
		        "JOIN MonAnDonHang236 mad ON dh.id = mad.donHangId " +
		        "JOIN MonAn236 ma ON mad.monAnId = ma.id " +
		        "WHERE dh.id = ? " +
		        "GROUP BY dh.id";
        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                donHang = new DonHang236();
                donHang.setId(rs.getInt("id"));
                donHang.setNgayDat(rs.getDate("ngayDat"));
                donHang.setTongTien(rs.getInt("tongTien"));
                donHang.setKhachHangId(rs.getInt("khachHangId"));
                donHang.setNhanVienBanHangId(rs.getInt("nhanVienBanHangId"));
            }
        }
        return donHang;
    }
}