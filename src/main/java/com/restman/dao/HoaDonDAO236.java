package com.restman.dao;

import com.restman.model.DonHang236;
import com.restman.model.HoaDon236;
import com.restman.model.KhachHang236;
import com.restman.model.MonAn236;
import com.restman.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class HoaDonDAO236 {
    private Connection connection;

    public HoaDonDAO236() {
        connection = DBUtil.getConnection();
    }
    
    public HoaDon236 getHoaDon(int id) throws SQLException {
        HoaDon236 hoaDon = null;
        String query = "SELECT hd.id, hd.ngayThanhToan, hd.donHangId, hd.ghiChu, " +
                "SUM(ma.gia * mad.soLuong) AS tongTien " +
                "FROM HoaDon236 hd " +
                "JOIN DonHang236 dh ON hd.donHangId = dh.id " +
                "JOIN MonAnDonHang236 mad ON dh.id = mad.donHangId " +
                "JOIN MonAn236 ma ON mad.monAnId = ma.id " +
                "WHERE hd.id = ? " +
                "GROUP BY hd.id, hd.ngayThanhToan, hd.donHangId, hd.ghiChu";    
        
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                hoaDon = new HoaDon236();
                hoaDon.setId(rs.getInt("id"));
                hoaDon.setNgayThanhToan(rs.getDate("ngayThanhToan"));
                hoaDon.setTongTien(rs.getInt("tongTien"));
                hoaDon.setGhiChu(rs.getString("ghiChu"));
                hoaDon.setDonHangId(rs.getInt("donHangId"));  

                DonHangDAO236 donHangDAO = new DonHangDAO236();
                DonHang236 donHang = donHangDAO.getDonHang(hoaDon.getDonHangId());
                hoaDon.setDonHang(donHang);
            }
        }
        return hoaDon;
    }
}
