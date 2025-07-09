<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phong.aspx.cs" Inherits="hotelmanagement.Phong" %>

<!DOCTYPE html>
<html>
<head>
    <title>Quản lý Phòng - Khách Sạn</title>
    <link href="Styles/StyleSheet3.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <img src="Images/logo.png" class="logo" alt="Hotel Logo" />
            <h1>Quản Lý Phòng</h1>
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
            <h2>Danh sách phòng</h2>

            <asp:GridView ID="gvPhong" runat="server" AutoGenerateColumns="False" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="MAPHONG" HeaderText="Mã phòng" />
                    <asp:BoundField DataField="TENPHONG" HeaderText="Tên phòng" />
                    <asp:BoundField DataField="LOAIPHONG" HeaderText="Loại phòng" />
                    <asp:BoundField DataField="GIAPHONG" HeaderText="Giá phòng" DataFormatString="{0:N0} đ" />
                    <asp:BoundField DataField="TRANGTHAI" HeaderText="Trạng thái" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>

             <asp:Button ID="btnAddPhong" runat="server" Text="Thêm Phòng Mới" CssClass="aspNet-Button" OnClick="btnAddPhong_Click" />
        </div>
    </form>
</body>
</html>

