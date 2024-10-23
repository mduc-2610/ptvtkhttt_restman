<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RestMan - Hệ thống quản lý nhà hàng</title>
    <link rel="stylesheet" href="/RestMan/resources/css/style.css">
</head>
<body>
    <jsp:include page="common/header.jsp" />
    
    <div class="container">
        <div class="dashboard">
            <h2>Chức năng chính</h2>
            <div class="feature-grid">
                <div class="feature-card">
                    <img src="https://beptueu.vn/hinhanh/tintuc/top-15-hinh-anh-mon-an-ngon-viet-nam-khien-ban-khong-the-roi-mat-9.jpg" alt="Tìm kiếm" style="width: 100%; height: 50%;">
                    <h3>Tìm kiếm món ăn</h3>
                    <p>Tìm kiếm thông tin các món ăn trong thực đơn</p>
                    <a href="/RestMan/views/monan/GDTimKiemMonAn236.jsp" class="btn-primary feature-card-button">Truy cập</a>
                </div>
                <div class="feature-card">
                    <img src="https://thongke.cesti.gov.vn/images/DV_PTDL/TKMT-P1-Trungtam/Picture1.png" alt="Báo cáo" style="width: 100%; height: 50%;">
                    <h3>Báo cáo</h3>
                    <p>Xem thống kê các loại</p>
                    <a href="/RestMan/views/baocao/GDBaoCao236.jsp" class="btn-primary feature-card-button">Truy cập</a>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="common/footer.jsp" />
    <script src="js/script.js"></script>
</body>
</html>