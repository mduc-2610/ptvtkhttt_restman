<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RestMan - Hệ thống quản lý nhà hàng</title>
    <link rel="stylesheet" href="/RestMan/resources/css/style.css">
</head>
<body>
    <jsp:include page="../common/header.jsp" />
    
    <div class="container">
        <div class="dashboard">
            <div class="feature-grid">
                <div class="feature-card">
                    <img src="https://thongke.cesti.gov.vn/images/DV_PTDL/TKMT-P1-Trungtam/Picture1.png" alt="Báo cáo" style="width: 100%; height: 50%;">
                    <h3>Báo cáo doanh thu</h3>
                    <p>Xem thống kê doanh thu theo món ăn</p>
                    <a href="/RestMan/views/baocao/GDThongKeMonAnDoanhThu236.jsp" class="btn-primary">Thống kê món ăn theo doanh thu</a>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
    <script src="js/script.js"></script>
</body>
</html>