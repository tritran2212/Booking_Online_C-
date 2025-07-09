<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themphong.aspx.cs" Inherits="hotelmanagement.ThemPhong" %>


<!DOCTYPE html>
<html>
<head>
    <title>Thêm Phòng Mới - Khách Sạn</title>
    <link href="Styles/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <h2>Thêm Phòng Mới</h2>

        <asp:Label ID="lblMaPhong" runat="server" Text="Mã phòng:"></asp:Label>
        <asp:TextBox ID="txtMaPhong" runat="server" CssClass="aspNet-TextBox"></asp:TextBox><br />

        <asp:Label ID="lblTenPhong" runat="server" Text="Tên phòng:"></asp:Label>
        <asp:TextBox ID="txtTenPhong" runat="server" CssClass="aspNet-TextBox"></asp:TextBox><br />

        <asp:Label ID="lblLoaiPhong" runat="server" Text="Loại phòng:"></asp:Label>
        <asp:DropDownList ID="ddlLoaiPhong" runat="server" CssClass="aspNet-TextBox">
            <asp:ListItem Text="Chọn loại phòng" Value="" />
            <asp:ListItem Text="Đơn" Value="Đơn" />
            <asp:ListItem Text="Đôi" Value="Đôi" />
            <asp:ListItem Text="VIP" Value="VIP" />
        </asp:DropDownList><br />

        <asp:Label ID="lblGiaPhong" runat="server" Text="Giá phòng (VND):"></asp:Label>
        <asp:TextBox ID="txtGiaPhong" runat="server" CssClass="aspNet-TextBox"></asp:TextBox><br />

        <asp:Label ID="lblTrangThai" runat="server" Text="Trạng thái:"></asp:Label>
        <asp:DropDownList ID="ddlTrangThai" runat="server" CssClass="aspNet-TextBox">
            <asp:ListItem Text="Chọn trạng thái" Value="" />
            <asp:ListItem Text="Trống" Value="Trống" />
            <asp:ListItem Text="Đang ở" Value="Đang ở" />
            <asp:ListItem Text="Đang dọn" Value="Đang dọn" />
        </asp:DropDownList><br /><br />

        <asp:Button ID="btnSave" runat="server" Text="Lưu Phòng" CssClass="aspNet-Button" OnClick="btnSave_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Hủy" CssClass="aspNet-Button" OnClick="btnCancel_Click" />
    </form>
</body>
</html>
