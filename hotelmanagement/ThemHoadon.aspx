<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemHoadon.aspx.cs" Inherits="hotelmanagement.ThemHoadon" %>

<!DOCTYPE html>
<html>
<head>
    <title>Thêm Hóa Đơn</title>
    <link href="styles/StyleSheet1.css" rel="stylesheet" />
    <style>
        body {
            background: #f4f8fb;
            font-family: 'Segoe UI', Arial, sans-serif;
        }

        .main-content {
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(44,62,80,0.10);
            padding: 40px 30px 30px 30px;
            max-width: 500px;
            margin: 50px auto;
        }

        .form-title {
            text-align: center;
            color: #36D1DC;
            margin-bottom: 28px;
            font-size: 1.7rem;
            font-weight: bold;
        }

        .form-container label,
        .form-container .aspNet-TextBox,
        .form-container .aspNet-Button {
            display: block;
            width: 100%;
            margin-bottom: 12px;
        }

        .form-container label {
            font-weight: 600;
            margin-bottom: 4px;
            color: #2c3e50;
        }

        .aspNet-TextBox {
            padding: 10px 12px;
            border: 1px solid #b2bec3;
            border-radius: 6px;
            font-size: 1rem;
            background: #f7fafd;
            transition: border 0.2s;
        }

        .aspNet-TextBox:focus {
            border: 1.5px solid #36D1DC;
            outline: none;
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
            margin-top: 10px;
            margin-right: 10px;
            transition: background 0.3s, transform 0.2s;
        }

        .aspNet-Button:hover {
            background: linear-gradient(to right, #5B86E5, #36D1DC);
            transform: translateY(-2px) scale(1.04);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <div class="main-content">
            <div class="form-title">Thêm Hóa Đơn Mới</div>

            <asp:Label ID="lblMaDatPhong" runat="server" Text="Mã Đặt Phòng:"></asp:Label>
            <asp:TextBox ID="txtMaDatPhong" runat="server" CssClass="aspNet-TextBox"></asp:TextBox>

            <asp:Label ID="lblNgayLap" runat="server" Text="Ngày Lập:"></asp:Label>
            <asp:TextBox ID="txtNgayLap" runat="server" CssClass="aspNet-TextBox"></asp:TextBox>

            <asp:Label ID="lblTongTien" runat="server" Text="Tổng Tiền:"></asp:Label>
            <asp:TextBox ID="txtTongTien" runat="server" CssClass="aspNet-TextBox"></asp:TextBox>

            <asp:Button ID="btnSave" runat="server" Text="Lưu" CssClass="aspNet-Button" OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Hủy" CssClass="aspNet-Button" OnClick="btnCancel_Click" />
        </div>
    </form>
</body>
</html>
