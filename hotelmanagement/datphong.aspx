<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datphong.aspx.cs" Inherits="hotelmanagement.datphong" %>

<!DOCTYPE html>
<html>
<head>
    <title>Đặt Phòng</title>
    <link href="Styles/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <h2>Đặt Phòng Khách Sạn</h2>

        <label>Loại phòng:</label>
        <asp:DropDownList ID="ddlLoaiPhong" runat="server" CssClass="aspNet-TextBox">
            <asp:ListItem Text="Chọn loại phòng" Value="" />
            <asp:ListItem Text="Đơn" />
            <asp:ListItem Text="Đôi" />
            <asp:ListItem Text="VIP" />
        </asp:DropDownList><br />

        <label>Ngày nhận phòng:</label>
        <asp:TextBox ID="txtNgayNhan" runat="server" TextMode="Date" CssClass="aspNet-TextBox"></asp:TextBox><br />

        <label>Ngày trả phòng:</label>
        <asp:TextBox ID="txtNgayTra" runat="server" TextMode="Date" CssClass="aspNet-TextBox"></asp:TextBox><br />

        <asp:Button ID="btnTimPhong" runat="server" Text="Tìm Phòng" CssClass="aspNet-Button" OnClick="btnTimPhong_Click" /><br /><br />

        <asp:GridView ID="gvPhongTrong" runat="server" AutoGenerateColumns="False" CssClass="gridview" OnRowCommand="gvPhongTrong_RowCommand">
            <Columns>
                <asp:BoundField DataField="MAPHONG" HeaderText="Mã phòng" />
                <asp:BoundField DataField="TENPHONG" HeaderText="Tên phòng" />
                <asp:BoundField DataField="LOAIPHONG" HeaderText="Loại" />
                <asp:BoundField DataField="GIAPHONG" HeaderText="Giá (VND)" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnDat" runat="server" Text="Đặt phòng" CommandName="Dat" CommandArgument='<%# Eval("MAPHONG") %>' CssClass="aspNet-Button" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

