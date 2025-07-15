<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hoadon.aspx.cs" Inherits="hotelmanagement.hoadon" %>

<!DOCTYPE html>
<html>
<head>
    <title>Hóa Đơn</title>
    <link href="styles/StyleSheet1.css" rel="stylesheet" />
    <style>
        body {
            background: #f4f8fb;
            font-family: 'Segoe UI', Arial, sans-serif;
        }
        .header {
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: white;
            padding: 30px 0 20px 0;
            text-align: center;
            border-radius: 0 0 20px 20px;
            box-shadow: 0 4px 16px rgba(44,62,80,0.08);
            margin-bottom: 20px;
        }
        .nav {
            display: flex;
            justify-content: center;
            gap: 30px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(44,62,80,0.07);
            padding: 15px 0;
            margin-bottom: 30px;
        }
        .nav a {
            color: #2c3e50;
            text-decoration: none;
            font-weight: 600;
            font-size: 18px;
            padding: 8px 18px;
            border-radius: 6px;
            transition: background 0.2s, color 0.2s;
        }
        .nav a:hover, .nav a:focus {
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: #fff;
        }
        .main-content {
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(44,62,80,0.10);
            padding: 40px 30px 30px 30px;
            max-width: 900px;
            margin: 0 auto;
        }
        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            font-size: 16px;
        }
        .gridview th, .gridview td {
            border: 1px solid #e0e6ed;
            padding: 12px 10px;
            text-align: center;
        }
        .gridview th {
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: #fff;
            font-weight: bold;
        }
        .gridview tr:nth-child(even) {
            background: #f4f8fb;
        }
        .gridview tr:hover {
            background: #eaf6fb;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Danh sách Hóa Đơn</h1>
        </div>

        <div class="nav">
            <a href="Trangchu.aspx">Trang chủ</a>
            <a href="Phong.aspx">Phòng</a>
            <a href="Khachhang.aspx">Khách hàng</a>
            <a href="Datphong.aspx">Đặt phòng</a>
            <a href="Traphong.aspx">Trả phòng</a>
            <a href="Hoadon.aspx">Hóa đơn</a>
        </div>

        <div class="main-content">
            <asp:GridView ID="gvHoaDon" runat="server" AutoGenerateColumns="False" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="MAHD" HeaderText="Mã HĐ" />
                    <asp:BoundField DataField="HOTEN" HeaderText="Khách hàng" />
                    <asp:BoundField DataField="TENPHONG" HeaderText="Phòng" />
                    <asp:BoundField DataField="NGAYLAP" HeaderText="Ngày lập" />
                    <asp:BoundField DataField="TONGTIEN" HeaderText="Tổng tiền (VND)" DataFormatString="{0:N0} đ" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>