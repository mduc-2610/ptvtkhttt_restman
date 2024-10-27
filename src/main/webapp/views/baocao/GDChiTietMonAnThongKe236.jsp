<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Date"%>
<%@ page import="com.restman.dao.*"%>
<%@ page import="com.restman.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết món ăn - RestMan</title>
<link rel="stylesheet" href="/RestMan/resources/css/style.css">
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<%
	DecimalFormat formatter = new DecimalFormat("#,###");
	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	
	String id = request.getParameter("id");
	String batDauStr = request.getParameter("batDau");
	String ketThucStr = request.getParameter("ketThuc");

	Date batDau = Date.valueOf(batDauStr);
	Date ketThuc = Date.valueOf(ketThucStr);

	MonAnThongKe236 monAn = null;
	List<DonHang236> listDonHang = null;
	MonAnDAO236 monAnDAO = new MonAnDAO236();
	DonHangDAO236 donHangDAO = new DonHangDAO236();
	
	if (id != null) {
		try {
			monAn = monAnDAO.getMonAnThongKe(Integer.parseInt(id), batDau, ketThuc);
			listDonHang = donHangDAO.getListDonHangByMonAn(monAn.getId(), batDau, ketThuc);
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	%>

	<div class="container">
		<div class="food-detail">
			<%-- <div class="food-image">
				<img
					src="/RestMan/resources/images/food/<%=monAn != null ? monAn.getId() + ".jpg" : "placeholder.jpg"%>"
					alt="<%=monAn != null ? monAn.getTen() : "Food Image"%>">
			</div> --%>
			<div class="food-info">
				<h2><%=monAn != null ? monAn.getTen() : "Tên món ăn không xác định"%></h2>
				<p class="price"><%=monAn != null ? formatter.format(monAn.getGia()) + " VNĐ" : "Giá không xác định"%></p>
				<div class="description">
					<h3>Mô tả</h3>
					<p><%=monAn != null ? monAn.getMoTa() : "Mô tả không xác định"%></p>
				</div>
			</div>
		</div>
	</div>
	<!-- Revenue report section -->
	<div class="container">
		<div class="report-detail">
			<h2>
				Chi tiết doanh thu -
				<%=monAn != null ? monAn.getTen() : "Tên món ăn không xác định"%></h2>
			<div class="period-info">
				<p>
					Thời gian:
					<%= dateFormat.format(batDau)%>
					-
					<%=dateFormat.format(ketThuc)%></p>
			</div>

			<div class="detail-stats">
				<div class="stat-card">
					<h3>Tổng số lần gọi</h3>
					<p class="stat-number"><%=monAn != null ? monAn.getSoLanGoi() : "0"%></p>
				</div>
				<div class="stat-card">
					<h3>Tổng doanh thu</h3>
					<p class="stat-number"><%=monAn != null ? monAn.getDoanhThu() + " VNĐ" : "0 VNĐ"%></p>
				</div>
				<div class="stat-card">
					<h3>Tổng số lượng đã bán</h3>
					<p class="stat-number"><%=monAn != null ? monAn.getSoLuongDaBan() : "0"%></p>
				</div>
			</div>
		</div>
	</div>

	<!--  -->
	<div class="container">
		<%
		if (listDonHang!= null && !listDonHang.isEmpty()) {
		%>
		<table class="report-table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Ngày đặt</th>
					<th>Khách Hàng Id</th>
					<th>Nhân Viên Id</th>
					<th>Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (DonHang236 donHang : listDonHang) {
				%>
				<tr>
					<td><%=donHang.getId()%></td>
					<td><%=dateFormat.format(donHang.getNgayDat())%></td>
					<td><%=donHang.getKhachHangId()%></td>
					<td><%=donHang.getNhanVienBanHangId()%></td>
					<td><a
						href="/RestMan/views/hoadon/GDChiTietHoaDon236.jsp?id=<%=donHang.getId() %>"
						class="btn-detail">Xem hóa đơn</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<%
		} else {
		%>
		<p>Không có đơn hàng nào cho món ăn này.</p>
		<%
		}
		%>
	</div>
	<jsp:include page="../common/footer.jsp" />
	<script src="/RestMan/resources/js/script.js"></script>
</body>
</html>
