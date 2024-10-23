<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.restman.dao.*" %>
<%@ page import="com.restman.model.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tìm kiếm món ăn - RestMan</title>
    <link rel="stylesheet" href="/RestMan/resources/css/style.css">
</head>
<body>
    <jsp:include page="../common/header.jsp" />

    <div class="container">
        <div class="search-section">
            <h2>Tìm kiếm món ăn</h2>
            <form method="get" action="GDTimKiemMonAn236.jsp">
                <div class="search-box">
                    <input type="text" 
                           name="query" 
                           id="searchInput" 
                           placeholder="Nhập tên món ăn..." 
                           value="<%= request.getParameter("query") != null ? request.getParameter("query") : "" %>">
                    <button type="submit">Tìm kiếm</button>
                </div>
            </form>
        </div>

        <div class="report-content">
            <%
            	DecimalFormat formatter = new DecimalFormat("#,###");
                String searchQuery = request.getParameter("query");
                if (searchQuery == null) {
                    searchQuery = "";
                }
                
                try {
                    MonAnDAO236 monAnDAO = new MonAnDAO236();
                    List<MonAn236> monAnList = monAnDAO.getListMonAn(searchQuery);
                    
                    if (!monAnList.isEmpty()) {
            %>
                        <table class="report-table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Tên món ăn</th>
                                    <th>Giá</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                                int stt = 1;
                                for (MonAn236 monAn : monAnList) {
                            %>
                                <tr>
                                    <td><%= stt++ %></td>
                                    <td><%= monAn.getTen() %></td>
                                    <td><%= formatter.format(monAn.getGia()) %> VNĐ</td>
                                    <td>
                                        <a href="/RestMan/views/monan/GDChiTietMonAn236.jsp?id=<%= monAn.getId() %>" 
                                           class="btn-detail">Xem chi tiết</a>
                                    </td>
                                </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
            <%
                    } else {
            %>
                        <p>Không tìm thấy kết quả nào cho "<%= searchQuery %>".</p>
            <%
                    }
                } catch (Exception e) {
            %>
                    <p>Đã xảy ra lỗi trong quá trình tìm kiếm. Vui lòng thử lại sau.</p>
            <%
                    e.printStackTrace();
                }
            %>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
    <script src="/RestMan/resources/js/script.js"></script>
</body>
</html>