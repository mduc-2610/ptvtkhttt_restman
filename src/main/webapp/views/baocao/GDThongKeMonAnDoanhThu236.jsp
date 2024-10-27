<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="com.restman.dao.*"%>
<%@ page import="com.restman.model.*"%>

<%
    String batDauStr = request.getParameter("batDau");
    String ketThucStr = request.getParameter("ketThuc");
    String errorMessage = "";

    boolean showData = true;
    List<MonAnThongKe236> monAnList = null;
    Date batDau = null;
    Date ketThuc = null;

    if ((batDauStr == null || batDauStr.isEmpty()) && (ketThucStr != null && !ketThucStr.isEmpty()) ||
        (batDauStr != null && !batDauStr.isEmpty()) && (ketThucStr == null || ketThucStr.isEmpty())) {
        showData = false;
        errorMessage = "Vui lòng chọn đầy đủ cả ngày bắt đầu và ngày kết thúc.";
    }
    else if (batDauStr == null || batDauStr.isEmpty() || ketThucStr == null || ketThucStr.isEmpty()) {
        showData = false;
        errorMessage = "Vui lòng nhập khoảng thời gian để xem báo cáo.";
    }
    else {
            batDau = Date.valueOf(batDauStr);
            ketThuc = Date.valueOf(ketThucStr);

            if (batDau.compareTo(ketThuc) > 0) {
                showData = false;
                errorMessage = "Ngày bắt đầu không thể sau ngày kết thúc!";
            } else {
                MonAnDAO236 monAnDAO = new MonAnDAO236();
                monAnList = monAnDAO.getListMonAnDoanhThu(batDau, ketThuc);
            }
         
    }

    DecimalFormat formatter = new DecimalFormat("#,###");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Báo cáo doanh thu - RestMan</title>
    <link rel="stylesheet" href="/RestMan/resources/css/style.css">
</head>
<body>
    <jsp:include page="../common/header.jsp" />

    <div class="container">
        <div class="report-header">
            <h2>Thống kê món ăn theo doanh thu</h2>
            <form class="date-range" method="get" action="">
                <div class="form-group">
                    <label for="batDau">Từ ngày:</label>
                    <input type="date" id="batDau" name="batDau" value="<%= batDauStr != null ? batDauStr : "" %>">
                </div>
                <div class="form-group">
                    <label for="ketThuc">Đến ngày:</label>
                    <input type="date" id="ketThuc" name="ketThuc" value="<%= ketThucStr != null ? ketThucStr : "" %>">
                </div>
                <button class="btn-stats" type="submit">Xem thống kê</button>
            </form>
        </div>

        <% if (!errorMessage.isEmpty()) { %>
            <p class="error-message"><%= errorMessage %></p>
        <% } %>

        <% if (showData && monAnList != null) { %>
            <% if (!monAnList.isEmpty()) { %>
                <div class="report-content">
                    <table class="report-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tên món</th>
                                <th>Doanh thu</th>
                                <th>Số lần gọi</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (MonAnThongKe236 monAn : monAnList) { %>
                                <tr>
                                    <td><%= monAn.getId() %></td>
                                    <td><%= monAn.getTen() %></td>
                                    <td><%= formatter.format(monAn.getDoanhThu()) %> VNĐ</td>
                                    <td><%= monAn.getSoLanGoi() %></td>
                                    <td>
                                        <a href="/RestMan/views/baocao/GDChiTietMonAnThongKe236.jsp?id=<%= monAn.getId() %>&batDau=<%= batDauStr %>&ketThuc=<%= ketThucStr %>" class="btn-detail">Xem chi tiết</a>
                                    </td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            <% } else { %>
                <p>Không có dữ liệu món ăn nào trong khoảng thời gian này.</p>
            <% } %>
        <% } %>
    </div>

    <jsp:include page="../common/footer.jsp" />
</body>
</html>