package com.restman.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.restman.model.DonHang236;
import com.restman.model.MonAn236;
import com.restman.util.DBUtil;

public class MonAnDAO236 {
    private Connection connection;

    public MonAnDAO236() {
        connection = DBUtil.getConnection();
    }
    
    public MonAn236 getMonAn(int id) throws SQLException {
    	MonAn236 monAn = null;
        String query = "SELECT * FROM MonAn236 WHERE id = ?";
        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                monAn = new MonAn236();
                monAn.setId(rs.getInt("id"));
                monAn.setTenMonAn(rs.getString("ten"));
                monAn.setMoTa(rs.getString("moTa"));
                monAn.setGia(rs.getInt("gia"));
            }
            
        }
        
        return monAn;
    }

    public List<MonAn236> getListMonAn(String keyword) throws SQLException {
        List<MonAn236> listMonAn = new ArrayList<>();
        String query = "SELECT * FROM MonAn236 WHERE ten LIKE ? OR CAST(id AS CHAR) LIKE ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            String searchPattern = "%" + keyword + "%";
            pstmt.setString(1, searchPattern);
            pstmt.setString(2, searchPattern);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
            	MonAn236 monAn = new MonAn236();
                monAn.setId(rs.getInt("id"));
                monAn.setTenMonAn(rs.getString("ten"));
                monAn.setMoTa(rs.getString("moTa"));
                monAn.setGia(rs.getInt("gia"));
                listMonAn.add(monAn);
            }
        }
        return listMonAn;
    }

    public MonAn236 getMonAnThongKe(int id, Date startDate, Date endDate) throws SQLException {
    	MonAn236 monAn = null;
    	String query = "SELECT ma.id AS id, ma.ten AS ten, ma.gia AS gia, ma.moTa as moTa, " +
                "COUNT(mad.MonAnId) AS soLanGoi, " +
                "SUM(mad.soLuong * ma.gia) AS doanhThu, " +
                "SUM(mad.soLuong) AS soLuongDaBan " +
                "FROM MonAn236 ma " +
                "LEFT JOIN MonAnDonHang236 mad ON ma.id = mad.MonAnId " +
                "LEFT JOIN DonHang236 dh ON mad.DonHangId = dh.id " +
                "WHERE ma.id = ? AND dh.NgayDat BETWEEN ? AND ? " +
                "GROUP BY ma.id, ma.ten, ma.gia " 
//                + 
//                "ORDER BY doanhThu DESC"
                ;

        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, id);
            pstmt.setDate(2, startDate);
            pstmt.setDate(3, endDate);
            ResultSet rs = pstmt.executeQuery();
            
            
            if (rs.next()) {
                monAn = new MonAn236();
                monAn.setId(rs.getInt("id"));
                monAn.setTenMonAn(rs.getString("ten"));
                monAn.setMoTa(rs.getString("moTa"));
                monAn.setGia(rs.getInt("gia"));
                monAn.setSoLanGoi(rs.getInt("soLanGoi"));
                monAn.setSoLuongDaBan(rs.getInt("soLuongDaBan"));
                monAn.setDoanhThu(rs.getInt("doanhThu"));
            }
        }
        DonHangDAO236 donHangDAO = new DonHangDAO236();
        List<DonHang236> listDonHang = donHangDAO.getListDonHangByMonAn(monAn.getId(), startDate, endDate);
        if(!listDonHang.isEmpty()) {
        	monAn.setListDonHang(listDonHang);
        }
        
        return monAn;
    }

    public List<MonAn236> getListMonAnDoanhThu(Date startDate, Date endDate) throws SQLException {
        List<MonAn236> listMonAnDoanhThu = new ArrayList<>();
        
        String query = "SELECT ma.id AS id, ma.ten AS ten, " +
                       "COUNT(mad.MonAnId) AS soLanGoi, " +
                       "SUM(mad.soLuong * ma.gia) AS doanhThu, " +
                       "SUM(mad.soLuong) AS soLuongDaBan " +
                       "FROM MonAn236 ma " +
                       "LEFT JOIN MonAnDonHang236 mad ON ma.id = mad.MonAnId " +
                       "LEFT JOIN DonHang236 dh ON mad.DonHangId = dh.id " +
                       "WHERE dh.NgayDat BETWEEN ? AND ? " +
                       "GROUP BY ma.id, ma.ten " +
                       "ORDER BY doanhThu DESC";
        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setDate(1, startDate);
            pstmt.setDate(2, endDate);
            
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
                MonAn236 monAnDoanhThu = new MonAn236();
                monAnDoanhThu.setId(rs.getInt("id"));
                monAnDoanhThu.setTenMonAn(rs.getString("ten"));
                monAnDoanhThu.setSoLanGoi(rs.getInt("soLanGoi")); 
                monAnDoanhThu.setSoLuongDaBan(rs.getInt("soLuongDaBan"));
                monAnDoanhThu.setDoanhThu(rs.getInt("doanhThu")); 
                listMonAnDoanhThu.add(monAnDoanhThu);
            }
        }
        
        return listMonAnDoanhThu;
    }
    
    public List<MonAn236> getMonAnByHoaDon(int hoaDonId) {
        List<MonAn236> monAnList = new ArrayList<>();
        String query = "SELECT ma.id, ma.ten, ma.gia, mad.soLuong, " +
                       "(ma.gia * mad.soLuong) AS thanhTien " +
                       "FROM HoaDon236 hd " +
                       "JOIN DonHang236 dh ON hd.DonHangId = dh.id " +
                       "JOIN MonAnDonHang236 mad ON dh.id = mad.DonHangId " +
                       "JOIN MonAn236 ma ON mad.MonAnId = ma.id " +
                       "WHERE hd.id = ?";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, hoaDonId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    MonAn236 monAn = new MonAn236();
                    monAn.setId(rs.getInt("id"));
                    monAn.setTen(rs.getString("ten"));
                    monAn.setGia(rs.getInt("gia"));
                    monAn.setSoLuong(rs.getInt("soLuong"));
                    monAn.setThanhTien(rs.getInt("thanhTien"));
                    monAnList.add(monAn);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return monAnList;
    }

}