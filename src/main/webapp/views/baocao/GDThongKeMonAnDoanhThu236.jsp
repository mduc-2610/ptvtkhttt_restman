<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="com.restman.dao.*" %>
<%@ page import="com.restman.model.*" %>

<%
	MonAnDAO236 monAnDAO = new MonAnDAO236();
    
    String startDateStr = request.getParameter("startDate");
    String endDateStr = request.getParameter("endDate");
    
    if (startDateStr == null || startDateStr.isEmpty()) {
        startDateStr = "2024-03-01";
    }
    if (endDateStr == null || endDateStr.isEmpty()) {
        endDateStr = "2024-10-31";
    }
    
    Date startDate = Date.valueOf(startDateStr);
    Date endDate = Date.valueOf(endDateStr);
    
    List<MonAn236> monAnList = monAnDAO.getListMonAnDoanhThu(startDate, endDate);
    
    /* int tongDoanhThu = 0;
    int tongSoLuongDaBan = 0;
    for (MonAn236 monAn : monAnList) {
        tongDoanhThu += monAn.getDoanhThu();
        tongSoLuongDaBan += monAn.getSoLuongDaBan();
    }
     */
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
                        <label for="startDate">Từ ngày:</label>
                        <input type="date" id="startDate" name="startDate" value="<%=startDateStr%>">
                    </div>
                    <div class="form-group">
                        <label for="endDate">Đến ngày:</label>
                        <input type="date" id="endDate" name="endDate" value="<%=endDateStr%>">
                    </div>
                    <button class="btn-stats" type="submit">Xem thống kê</button>
                </form>
            
        </div>

        <div class="report-content">
            <table class="report-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên món</th>
						<th>Số lượng đã bán</th>
                        <th>Doanh thu</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <%
					 for (MonAn236 monAn : monAnList) {
                    %>
                        <tr>
                            <td><%= monAn.getId() %></td>
                            <td><%= monAn.getTen() %></td>
                            <td><%= monAn.getSoLuongDaBan() %></td>
                            <td><%= formatter.format(monAn.getDoanhThu()) %> VNĐ</td>
                            <td>
                                <a href="/RestMan/views/baocao/GDChiTietMonAnThongKe236.jsp?id=<%= monAn.getId() %>&startDate=<%= startDate %>&endDate=<%= endDate %>" 
                                   class="btn-detail">Xem chi tiết</a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>

            <%-- <div class="report-summary">
                <h3>Tổng kết</h3>
                <p>Tổng doanh thu: <%= formatter.format(tongDoanhThu) %> VNĐ</p>
                <p>Tổng số món đã bán: <%= formatter.format(tongSoLuongDaBan) %></p>
            </div> --%>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
    
    <script>
        function validateDates() {
            var startDate = document.getElementById('startDate').value;
            var endDate = document.getElementById('endDate').value;
            
            if (startDate > endDate) {
                alert('Ngày bắt đầu không thể sau ngày kết thúc!');
                return false;
            }
            return true;
        }
        
        document.querySelector('form').onsubmit = validateDates;
    </script>
</body>
</html>