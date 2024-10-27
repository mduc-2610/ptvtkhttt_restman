<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.restman.dao.*" %>
<%@ page import="com.restman.model.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết hóa đơn - RestMan</title>
    <link rel="stylesheet" href="/RestMan/resources/css/style.css">
</head>
<body>
    <jsp:include page="../common/header.jsp" />

    <%
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        DecimalFormat formatter = new DecimalFormat("#,###");
        HoaDon236 hoaDon = null;
        DonHang236 donHang = null;
        List<MonAnDonHang236> listMonAn = null;
        KhachHang236 khachHang = null;
        
        try {
            String idParam = request.getParameter("id");
            if (idParam != null && !idParam.trim().isEmpty()) {
                int id = Integer.parseInt(idParam);
                
                HoaDonDAO236 hoaDonDAO = new HoaDonDAO236();
                DonHangDAO236 donHangDAO = new DonHangDAO236();
                MonAnDAO236 monAnDAO = new MonAnDAO236();
                KhachHangDAO236 khachHangDAO = new KhachHangDAO236();

                hoaDon = hoaDonDAO.getHoaDon(id);
                
                if (hoaDon != null) {
                    donHang = donHangDAO.getDonHang(hoaDon.getDonHangId());
                    if (donHang != null) {
                        listMonAn = monAnDAO.getListMonAnByDonHang(donHang.getId());
                        khachHang = khachHangDAO.getKhachHang(donHang.getKhachHangId());
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>

    <div class="container">
        <div class="report-detail fade-in">
            <div class="report-header">
                <h2 style="font-weight: 300;">
                    <strong>Mã hóa đơn:</strong> 
                    <%= hoaDon != null ? String.format("%03d", hoaDon.getId()) : "---" %>
                </h2>
                <p class="period-info">
                    <strong>Ngày thanh toán:</strong> 
                    <%= hoaDon != null && hoaDon.getNgayThanhToan() != null ? 
                        dateFormat.format(hoaDon.getNgayThanhToan()) : "Không xác định" %>
                </p>
            </div>

            <!-- <div class="restaurant-info">
                <h3>RestMan</h3>
                <p><strong>Địa chỉ:</strong> Nguyễn Trãi, Hà Đông</p>
                <p><strong>SĐT:</strong> 0123456789</p>
            </div> -->
            
            <div class="customer-info">
                <h3>Thông tin khách hàng</h3>
                <p>
                    <strong>Tên khách hàng:</strong> 
                    <%= khachHang != null ? khachHang.getTen() : "Không xác định" %>
                </p>
                <p>
                    <strong>Địa chỉ:</strong> 
                    <%= khachHang != null ? khachHang.getDiaChi() : "Không xác định" %>
                </p>
                <p>
                    <strong>SĐT:</strong> 
                    <%= khachHang != null ? khachHang.getSdt() : "Không xác định" %>
                </p>
            </div>

            <h3>Thông tin đơn hàng</h3>
            <div class="report-table">
                <table class="report-content">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên món</th>
                            <th>Số lượng</th>
                            <th>Đơn giá</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                        if (listMonAn != null && !listMonAn.isEmpty()) { 
                            for (MonAnDonHang236 monAn : listMonAn) {
                                int id = monAn != null ? monAn.getMonAn().getId() : 0;
                                String ten = monAn != null ? monAn.getMonAn().getTen() : "Không xác định";
                                double gia = monAn != null ? monAn.getMonAn().getGia() : 0;
                                int soLuong = monAn != null ? monAn.getSoLuong() : 0;
                                double thanhTien = monAn != null ? monAn.getThanhTien() : 0;
                        %>
                            <tr>
                                <td><%= id %></td>
                                <td><%= ten %></td>
                                <td><%= soLuong %></td>
                                <td><%= formatter.format(gia) %> VNĐ</td>
                                <td><%= formatter.format(thanhTien) %> VNĐ</td>
                            </tr>
                        <% 
                            }
                        } else { 
                        %>
                            <tr>
                                <td colspan="5" class="text-center">Không có món ăn nào trong đơn hàng</td>
                            </tr>
                        <% 
                        } 
                        %>
                    </tbody>
                </table>
            </div>

            <div class="detail-stats">
                <div class="stat-card">
                    <h3>Tổng tiền</h3>
                    <p class="stat-number">
                        <%= hoaDon != null ? formatter.format(donHang.getTongTien()) : "0" %> VNĐ
                    </p>
                </div>
            </div>

            <div class="action-buttons">
                <button class="btn-primary" onclick="window.print()">In hóa đơn</button>
             </div>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
</body>
</html>