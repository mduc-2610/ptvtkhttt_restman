<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Formatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Date" %>
<%@ page import="com.restman.dao.*" %>
<%@ page import="com.restman.model.*" %>
<%
	DecimalFormat formatter = new DecimalFormat("#,###");
%>
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
        String id = request.getParameter("id");
        MonAn236 monAn = null;

        if (id != null) {
            try {
                MonAnDAO236 monAnDAO = new MonAnDAO236();
                monAn = monAnDAO.getMonAn(Integer.parseInt(id));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>

    <div class="container">
        <div class="food-detail">
            <%-- <div class="food-image">
                <img src="/RestMan/resources/images/food/<%= monAn != null ? monAn.getId() + ".jpg" : "placeholder.jpg" %>" alt="<%= monAn != null ? monAn.getTen() : "Food Image" %>">
            </div> --%>
            <div class="food-info">
                <h2><%= monAn != null ? monAn.getTen() : "Tên món ăn không xác định" %></h2>
                <p class="price"><%= monAn != null ? formatter.format(monAn.getGia()) + " VNĐ" : "Giá không xác định" %></p>
                <div class="description">
                    <h3>Mô tả</h3>
                    <p><%= monAn != null ? monAn.getMoTa() : "Mô tả không xác định" %></p>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
    <script src="/RestMan/resources/js/script.js"></script>
</body>
</html>
