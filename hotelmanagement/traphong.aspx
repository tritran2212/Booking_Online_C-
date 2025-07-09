<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="traphong.aspx.cs" Inherits="hotelmanagement.traphong" %>

<!DOCTYPE html>
<html>
<head>
    <title>Trả Phòng</title>
    <link href="Styles/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <h2>Trả Phòng</h2>

        <label>Chọn phòng đang ở:</label>
        <asp:DropDownList ID="ddlPhongDangO" runat="server" CssClass="aspNet-TextBox" AutoPostBack="true" OnSelectedIndexChanged="ddlPhongDangO_SelectedIndexChanged">
        </asp:DropDownList><br />

        <asp:Panel ID="pnlThongTin" runat="server" Visible="false">
            <label>Họ tên khách:</label>
            <asp:Label ID="lblHoTen" runat="server" /><br />

            <label>Ngày nhận phòng:</label>
            <asp:Label ID="lblNgayNhan" runat="server" /><br />

            <label>Ngày trả phòng:</label>
            <asp:Label ID="lblNgayTra" runat="server" /><br />

            <label>Giá phòng/ngày:</label>
            <asp:Label ID="lblGiaPhong" runat="server" /><br />

            <label>Số ngày ở:</label>
            <asp:Label ID="lblSoNgay" runat="server" /><br />

            <label><b>Tổng tiền:</b></label>
            <asp:Label ID="lblTongTien" runat="server" Font-Bold="true" /><br /><br />

            <asp:Button ID="btnXacNhanTra" runat="server" Text="Xác nhận trả phòng" CssClass="aspNet-Button" OnClick="btnXacNhanTra_Click" />
        </asp:Panel>
    </form>
</body>
</html>
