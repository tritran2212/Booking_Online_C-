<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="hotelmanagement.Trangchu" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang Chủ - Quản Lý Khách Sạn</title>
     <link href="Styles/StyleSheet2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Banner -->
        <div class="hero">
            <h1>Chào mừng đến Khách Sạn Thanh Phương </h1>
            <p>Trải nghiệm dịch vụ đẳng cấp 5 sao</p>
        </div>

        <!-- Navigation -->
        <div class="nav">
            <a href="TrangChu.aspx">Trang chủ</a>
            <a href="Phong.aspx">Phòng</a>
            <a href="KhachHang.aspx">Khách hàng</a>
            <a href="DatPhong.aspx">Đặt phòng</a>
            <a href="TraPhong.aspx">Trả phòng</a>
            <a href="HoaDon.aspx">Hóa đơn</a>
        </div>

        <!-- Dashboard cards -->
        <div class="dashboard">
            <div class="card">
                <h3>15</h3>
                <p>Phòng Trống</p>
            </div>
            <div class="card">
                <h3>10</h3>
                <p>Khách Đang Ở</p>
            </div>
            <div class="card">
                <h3>12,500,000 đ</h3>
                <p>Doanh Thu Hôm Nay</p>
            </div>
        </div>

        <!-- Gallery -->
        <div class="gallery">
            <img src="Images/5219124.jpg" style="width:800px; height:350px;" />

        </div>

        <!-- Google Map -->
        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.143903993638!2d106.6643008146209!3d10.800619792303203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752930c9b1bdb5%3A0x6c87495e2e1f09e0!2zMTIzIE5ndXnhu4VuIFRy4bqjaSwgUGjGsOG7nW5nIDcsIFF14bqtbiAxMiwgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1700000000000" width="100%" height="300" style="border:0;" allowfullscreen=""></iframe>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <p>&copy; 2025 Khách Sạn ABC | Địa chỉ: 123 Nguyễn Trãi, TP. HCM | Hotline: 0123 456 789</p>
        </footer>
    </form>
</body>
</html>



  