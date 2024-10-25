<%@page import="com.restman.model.MonAn236"%>
<%@page import="java.util.List"%>
<%@page import="com.restman.dao.MonAnDAO236"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.restman.dao.HoaDonDAO236" %>
<%@ page import="com.restman.model.HoaDon236" %>
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
        int id = Integer.parseInt(request.getParameter("id"));
    	int monAnId = Integer.parseInt(request.getParameter("monAnId"));
        
        HoaDonDAO236 hoaDonDAO = new HoaDonDAO236();
        HoaDon236 hoaDon = hoaDonDAO.getHoaDon(id);
        
        
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        DecimalFormat formatter = new DecimalFormat("#,###");
        
        if (hoaDon == null) {
    %>
        <div class="container">
            <div class="alert alert-danger">Hóa đơn không tồn tại hoặc đã bị xóa.</div>
            <div class="action-buttons">
                <a href="/RestMan/views/baocao/GDThongKeMonAnDoanhThu236.jsp" class="btn-secondary">Quay lại</a>
            </div>
        </div>
    <% 
        } else { 
    %>
    <div class="container">
        <div class="report-detail fade-in">
            <div class="report-header">
                <h2>Hóa đơn #HD<%= String.format("%03d", hoaDon.getId()) %></h2>
                <p class="period-info"><strong>Ngày thanh toán:</strong> <%= dateFormat.format(hoaDon.getNgayThanhToan()) %></p>
            </div>

            <div class="restaurant-info">
                <h3>RestMan Restaurant</h3>
                <p>Nguyễn Trãi, Hà Đông</p>
                <p>SĐT: 0123456789</p>
            </div>

            <div class="customer-info">
			    <h3>Thông tin</h4>
			    <p><strong>Mã đơn hàng:</strong> DH<%= String.format("%03d", hoaDon.getDonHangId()) %></p>
			    <p><strong>Ghi chú:</strong> <%= hoaDon.getGhiChu() != null ? hoaDon.getGhiChu() : "Không có" %></p>
			</div>


            <h3>Chi tiết đơn hàng</h4>
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
				        <% if (hoaDon.getListMonAn() != null && !hoaDon.getListMonAn().isEmpty()) { %>
				            <% for (MonAn236 monAn : hoaDon.getListMonAn()) { %>
				                <tr>
				                    <td><%= monAn.getId() %></td>
				                    <td><%= monAn.getTen() %></td>
				                    <td><%= monAn.getSoLuong() %></td> 
				                    <td><%= formatter.format(monAn.getGia()) %> VNĐ</td>
				                    <td><%= formatter.format(monAn.getThanhTien()) %> VNĐ</td>
				                </tr>
				            <% } %>
				        <% } else { %>
				            <tr>
				                <td colspan="5" class="text-center">Đang cập nhật chi tiết đơn hàng...</td>
				            </tr>
				        <% } %>
				    </tbody>
				</table>

            </div>

            <div class="detail-stats">
                <div class="stat-card">
                    <h3>Tổng tiền</h3>
                    <p class="stat-number"><%= formatter.format(hoaDon.getTongTien()) %> VNĐ</p>
                </div>
            </div>

            <div class="action-buttons">
                <button class="btn-primary" onclick="window.print()">In hóa đơn</button>
                <a href="/RestMan/views/baocao/GDChiTietMonAnThongKe236.jsp?id=<%= monAnId %>" class="btn-secondary">Quay lại</a>
            </div>
        </div>
    </div>

    <% 
        } 
    %>

    <jsp:include page="../common/footer.jsp" />
</body>
</html>
