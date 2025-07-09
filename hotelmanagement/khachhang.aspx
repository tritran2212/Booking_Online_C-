<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="hotelmanagement.KhachHang" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý Khách Hàng</title>
    <link href="Styles/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Quản lý Khách Hàng</h1>
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
            <asp:GridView ID="gvKhachHang" runat="server" AutoGenerateColumns="False" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="MAKH" HeaderText="Mã KH" />
                    <asp:BoundField DataField="HOTEN" HeaderText="Họ tên" />
                    <asp:BoundField DataField="CMND" HeaderText="CMND" />
                    <asp:BoundField DataField="SDT" HeaderText="SĐT" />
                    <asp:BoundField DataField="EMAIL" HeaderText="Email" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>

            <asp:Button ID="btnAddKhach" runat="server" Text="Thêm Khách Hàng" CssClass="aspNet-Button" OnClick="btnAddKhach_Click" />
        </div>
    </form>
</body>
</html>
