<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hoadon.aspx.cs" Inherits="hotelmanagement.Hoadon" %>

<!DOCTYPE html>
<html>
<head>
    <title>Quản lý Hóa Đơn</title>
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
        .aspNet-Button {
            display: inline-block;
            padding: 12px 32px;
            font-size: 17px;
            font-weight: bold;
            color: #fff;
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            border: none;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(44,62,80,0.10);
            cursor: pointer;
            margin-bottom: 20px;
            transition: background 0.3s, transform 0.2s;
        }
        .aspNet-Button:hover {
            background: linear-gradient(to right, #5B86E5, #36D1DC);
            transform: translateY(-2px) scale(1.04);
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
            
            <asp:GridView ID="gvHoaDon" runat="server" AutoGenerateColumns="False" DataKeyNames="MaHD"
                OnRowEditing="gvHoaDon_RowEditing" OnRowUpdating="gvHoaDon_RowUpdating"
                OnRowCancelingEdit="gvHoaDon_RowCancelingEdit" OnRowDeleting="gvHoaDon_RowDeleting"
                CssClass="gridview">

                <Columns>
                    <asp:BoundField DataField="MaHD" HeaderText="Mã HĐ" ReadOnly="true" />
                    <asp:BoundField DataField="MaDatPhong" HeaderText="Mã Đặt Phòng" />
                    <asp:BoundField DataField="NgayLap" HeaderText="Ngày Lập" />
                    <asp:BoundField DataField="TongTien" HeaderText="Tổng Tiền (VND)" />

                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnAddHoaDon" runat="server" Text="Thêm Hóa Đơn" OnClick="btnAddHoaDon_Click" CssClass="aspNet-Button" />
        </div>
    </form>
</body>
</html>
