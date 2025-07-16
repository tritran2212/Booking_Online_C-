<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="hotelmanagement.KhachHang" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý Khách Hàng</title>
    <link href="styles/StyleSheet1.css" rel="stylesheet" />
    <link href="styles/StyleSheet3.css" rel="stylesheet" />
    <style>
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
        .nav a:hover {
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: #fff;
        }
        .main-content {
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(44,62,80,0.10);
            padding: 40px 30px 30px 30px;
            max-width: 100%;
            margin: 0 auto;
        }
        .aspNet-Button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            border: none;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(44,62,80,0.10);
            cursor: pointer;
            margin-top: 15px;
            transition: background 0.3s, transform 0.2s;
        }
        .aspNet-Button:hover {
            background: linear-gradient(to right, #5B86E5, #36D1DC);
            transform: translateY(-2px) scale(1.04);
        }
        .aspNet-TextBox {
            margin: 5px;
            padding: 8px;
            width: 200px;
        }
    </style>
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

            <h3>Thêm Khách Hàng Mới</h3>
            <asp:TextBox ID="txtMaKH" runat="server" placeholder="Mã KH" CssClass="aspNet-TextBox" />
            <asp:TextBox ID="txtHoTen" runat="server" placeholder="Họ tên" CssClass="aspNet-TextBox" />
            <asp:TextBox ID="txtCMND" runat="server" placeholder="CMND" CssClass="aspNet-TextBox" />
            <asp:TextBox ID="txtSDT" runat="server" placeholder="SĐT" CssClass="aspNet-TextBox" />
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="aspNet-TextBox" />
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Thêm Khách Hàng" CssClass="aspNet-Button" OnClick="btnSave_Click" />

            <hr />

            <asp:GridView ID="gvKhachHang" runat="server" AutoGenerateColumns="False" CssClass="gridview"
                OnRowEditing="gvKhachHang_RowEditing"
                OnRowUpdating="gvKhachHang_RowUpdating"
                OnRowCancelingEdit="gvKhachHang_RowCancelingEdit"
                OnRowDeleting="gvKhachHang_RowDeleting"
                DataKeyNames="MaKH">
                <Columns>
                    <asp:BoundField DataField="MaKH" HeaderText="Mã KH" ReadOnly="True"/>
                    <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
                    <asp:BoundField DataField="CMND" HeaderText="CMND" />
                    <asp:BoundField DataField="SDT" HeaderText="SĐT" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
