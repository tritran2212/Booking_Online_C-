<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="hotelmanagement.Trangchu" %>
<!DOCTYPE html>
<html>
<head>
    <title> Quản Lý Khách Sạn</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="Styles/StyleSheet2.css" rel="stylesheet" />

    <style>
       body {
    font-family: 'Roboto', Arial, sans-serif;
    background: #f6f8fa;
    margin: 0;
    padding: 0;
    color: #222;
}

.nav {
    display: flex;
    justify-content: center;
    gap: 30px;
    background: #fff;
    box-shadow: 0 2px 8px rgba(0,0,0,0.04);
    padding: 18px 0;
    border-radius: 0 0 18px 18px;
    margin-bottom: 30px;
}

.nav a {
    text-decoration: none;
    color: #222;
    font-weight: 500;
    font-size: 18px;
    padding: 8px 18px;
    border-radius: 8px;
    transition: background 0.2s, color 0.2s;
}

.nav a:hover {
    background: #007bff;
    color: #fff;
}

.dashboard {
    display: flex;
    justify-content: center;
    gap: 32px;
    margin: 40px 0 30px 0;
}

.card {
    background: #fff;
    border-radius: 18px;
    box-shadow: 0 4px 24px rgba(0,0,0,0.08);
    padding: 32px 40px;
    text-align: center;
    min-width: 180px;
    transition: transform 0.2s, box-shadow 0.2s;
}

.card:hover {
    transform: translateY(-6px) scale(1.03);
    box-shadow: 0 8px 32px rgba(0,0,0,0.12);
}

.card h3 {
    font-size: 2.5rem;
    margin: 0 0 10px 0;
    color: #007bff;
    font-weight: 700;
}

.card p {
    margin: 0;
    color: #555;
    font-size: 1.1rem;
}

.gallery {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 30px 0;
    width: 100vw;
    max-width: 100vw;
    padding: 0;
    box-sizing: border-box;
}

.gallery img {
    border-radius: 18px;
    box-shadow: 0 4px 24px rgba(0,0,0,0.10);
    width: 100%;
    max-width: 100vw;
    height: auto;
    display: block;
    object-fit: cover;
}

.map-container {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 30px 0;
    width: 100vw;
    max-width: 100vw;
    box-sizing: border-box;
}

.map-embed-wrapper {
    width: 100vw;
    max-width: 100vw;
    height: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.map-embed-wrapper iframe {
    border-radius: 18px;
    box-shadow: 0 4px 24px rgba(0,0,0,0.10);
    width: 100%;
    height: 100%;
    border: 0;
    display: block;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
   
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
            <img src="Images/5219124.jpg" />
        </div>

        <!-- Google Map -->
        <div class="map-container">
                <div class="map-embed-wrapper">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.143903993638!2d106.6643008146209!3d10.800619792303203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752930c9b1bdb5%3A0x6c87495e2e1f09e0!2zMTIzIE5ndXnhu4VuIFRy4bqjaSwgUGjGsOG7nW5nIDcsIFF14bqtbiAxMiwgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1700000000000" allowfullscreen=""></iframe>
                </div>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <p>&copy; 2025 Khách Sạn ABC | Địa chỉ: 123 Nguyễn Trãi, TP. HCM | Hotline: 0123 456 789</p>
        </footer>
    </form>
</body>
</html>



  