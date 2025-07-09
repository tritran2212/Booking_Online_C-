<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hoadon.aspx.cs" Inherits="hotelmanagement.hoadon" %>

<!DOCTYPE html>
<html>
<head>
    <title>Hóa Đơn</title>
    <link href="Styles/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Danh sách Hóa Đơn</h1>
        </div>

        <div class="nav">
            <a href="TrangChu.aspx">Trang chủ</a>
            <a href="Phong.aspx">Phòng</a>
            <a href="KhachHang.aspx">Khách hàng</a>
            <a href="DatPhong.aspx">Đặt phòng</a>
            <a href="TraPhong.aspx">Trả phòng</a>
            <a href="HoaDon.aspx">Hóa đơn</a>
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
