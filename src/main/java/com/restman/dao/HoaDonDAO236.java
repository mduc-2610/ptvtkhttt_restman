package com.restman.dao;

import com.restman.model.HoaDon236;
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
    
    public HoaDon236 getHoaDon(int id) {
        HoaDon236 hoaDon = null;
        String query = "SELECT \r\n"
        		+ "    hd.id, hd.ngayThanhToan, dh.id AS DonHangId,\r\n"
        		+ "    SUM(ma.gia * mad.soLuong) AS TongTien\r\n"
        		+ "FROM \r\n"
        		+ "    HoaDon236 hd\r\n"
        		+ "JOIN \r\n"
        		+ "    DonHang236 dh ON hd.DonHangId = dh.id\r\n"
        		+ "JOIN \r\n"
        		+ "    MonAnDonHang236 mad ON dh.id = mad.DonHangId\r\n"
        		+ "JOIN \r\n"
        		+ "    MonAn236 ma ON mad.MonAnId = ma.id\r\n"
        		+ "where hd.id = ? or dh.id = ? \r\n"
        		+ "GROUP BY \r\n"
        		+ "    hd.id";

        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            stmt.setInt(2, id);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                hoaDon = new HoaDon236();
                hoaDon.setId(rs.getInt("id"));
                hoaDon.setNgayThanhToan(rs.getDate("ngayThanhToan"));
                hoaDon.setTongTien(rs.getInt("tongTien"));
                hoaDon.setGhiChu(rs.getString("ghiChu"));
                hoaDon.setDonHangId(rs.getInt("DonHangId"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        MonAnDAO236 monAnDAO = new MonAnDAO236();
        List<MonAn236> listMonAn = monAnDAO.getMonAnByHoaDon(id);
        hoaDon.setListMonAn(listMonAn);
        
        return hoaDon;
    }

}
