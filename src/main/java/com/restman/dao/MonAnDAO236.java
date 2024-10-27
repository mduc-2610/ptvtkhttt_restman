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
import com.restman.model.MonAnDonHang236;
import com.restman.model.MonAnThongKe236;
import com.restman.util.DBUtil;

public class MonAnDAO236 extends DAO {
   
    public MonAn236 getMonAn(int id) throws SQLException {
    	MonAn236 monAn = null;
        String query = "SELECT * FROM MonAn236 WHERE id = ?";
        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                monAn = new MonAn236();
                monAn.setId(rs.getInt("id"));
                monAn.setTen(rs.getString("ten"));
                monAn.setMoTa(rs.getString("moTa"));
                monAn.setGia(rs.getInt("gia"));
            }
            
        }
        
        return monAn;
    }

    public List<MonAn236> getListMonAnByTen(String ten) throws SQLException {
        List<MonAn236> listMonAn = new ArrayList<>();
        String query = "SELECT * FROM MonAn236 WHERE ten LIKE ? ";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            String searchPattern = "%" + ten + "%";
            pstmt.setString(1, searchPattern);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
            	MonAn236 monAn = new MonAn236();
                monAn.setId(rs.getInt("id"));
                monAn.setTen(rs.getString("ten"));
                monAn.setMoTa(rs.getString("moTa"));
                monAn.setGia(rs.getInt("gia"));
                listMonAn.add(monAn);
            }
        }
        return listMonAn;
    }

    public MonAnThongKe236 getMonAnThongKe(int id, Date batDau, Date ketThuc) throws SQLException {
    	MonAnThongKe236 monAn = null;
    	String query = "SELECT ma.id AS id, ma.ten AS ten, ma.gia AS gia, ma.moTa as moTa, " +
    					"COUNT(mad.monAnId) AS soLanGoi, " +
		                "SUM(mad.soLuong * ma.gia) AS doanhThu, " +
		                "SUM(mad.soLuong) AS soLuongDaBan " +
		                "FROM MonAn236 ma " +
		                "LEFT JOIN MonAnDonHang236 mad ON ma.id = mad.monAnId " +
		                "LEFT JOIN DonHang236 dh ON mad.donHangId = dh.id " +
		                "WHERE ma.id = ? AND dh.ngayDat BETWEEN ? AND ? " +
		                "GROUP BY ma.id, ma.ten, ma.gia ";
        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, id);
            pstmt.setDate(2, batDau);
            pstmt.setDate(3, ketThuc);
            ResultSet rs = pstmt.executeQuery();
            
            
            if (rs.next()) {
                monAn = new MonAnThongKe236();
                monAn.setId(rs.getInt("id"));
                monAn.setTen(rs.getString("ten"));
                monAn.setMoTa(rs.getString("moTa"));
                monAn.setGia(rs.getInt("gia"));
                monAn.setSoLanGoi(rs.getInt("soLanGoi"));
                monAn.setSoLuongDaBan(rs.getInt("soLuongDaBan"));
                monAn.setDoanhThu(rs.getInt("doanhThu"));
            }
        }
        
        return monAn;
    }

    public List<MonAnThongKe236> getListMonAnDoanhThu(Date batDau, Date ketThuc) throws SQLException {
        List<MonAnThongKe236> listMonAnDoanhThu = new ArrayList<>();
        
        String query = "SELECT ma.id AS id, ma.ten AS ten, " +
                       "COUNT(mad.MonAnId) AS soLanGoi, " +
                       "SUM(mad.soLuong * ma.gia) AS doanhThu, " +
                       "SUM(mad.soLuong) AS soLuongDaBan " +
                       "FROM MonAn236 ma " +
                       "LEFT JOIN MonAnDonHang236 mad ON ma.id = mad.monAnId " +
                       "LEFT JOIN DonHang236 dh ON mad.donHangId = dh.id " +
                       "WHERE dh.ngayDat BETWEEN ? AND ? " +
                       "GROUP BY ma.id, ma.ten ";
        
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setDate(1, batDau);
            pstmt.setDate(2, ketThuc);
            
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
            	MonAnThongKe236 monAnDoanhThu = new MonAnThongKe236();
                monAnDoanhThu.setId(rs.getInt("id"));
                monAnDoanhThu.setTen(rs.getString("ten"));
                monAnDoanhThu.setSoLanGoi(rs.getInt("soLanGoi")); 
                monAnDoanhThu.setSoLuongDaBan(rs.getInt("soLuongDaBan"));
                monAnDoanhThu.setDoanhThu(rs.getInt("doanhThu")); 
                listMonAnDoanhThu.add(monAnDoanhThu);
            }
        }
        
        return listMonAnDoanhThu;
    }
    
    public List<MonAnDonHang236> getListMonAnByDonHang(int donHangId) throws SQLException {
        List<MonAnDonHang236> monAnDonHangList = new ArrayList<>();
        String query = "SELECT ma.id, ma.ten, ma.gia, mad.soLuong, " +
                      "(ma.gia * mad.soLuong) AS thanhTien " +
                      "FROM MonAn236 ma " +
                      "JOIN MonAnDonHang236 mad ON ma.id = mad.monAnId " +
                      "WHERE mad.donHangId = ?";

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, donHangId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                	MonAnDonHang236 monAnDonHang = new MonAnDonHang236();
                	MonAn236 monAn = new MonAn236();
                    monAn.setId(rs.getInt("id"));
                    monAn.setTen(rs.getString("ten"));
                    monAn.setGia(rs.getInt("gia"));
                    monAnDonHang.setMonAn(monAn);
                    monAnDonHang.setSoLuong(rs.getInt("soLuong"));
                    monAnDonHang.setThanhTien(rs.getInt("thanhTien"));
                    monAnDonHangList.add(monAnDonHang);
                }
            }
        }
        return monAnDonHangList;
    }

}