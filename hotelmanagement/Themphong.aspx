<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Themphong.aspx.cs" Inherits="hotelmanagement.ThemPhong" %>

<!DOCTYPE html>
<html>
<head>
    <title>Thêm Phòng Mới</title>
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
            max-width: 500px;
            margin: 0 auto;
        }
        .form-title {
            text-align: center;
            color: #36D1DC;
            margin-bottom: 28px;
            font-size: 1.7rem;
            font-weight: bold;
        }
        .form-container label, .form-container .aspNet-TextBox, .form-container .aspNet-Button, .form-container select {
            display: block;
            width: 100%;
            margin-bottom: 12px;
        }
        .form-container label {
            font-weight: 600;
            margin-bottom: 4px;
            color: #2c3e50;
        }
        .aspNet-TextBox, .form-container select {
            padding: 10px 12px;
            border: 1px solid #b2bec3;
            border-radius: 6px;
            font-size: 1rem;
            margin-bottom: 18px;
            background: #f7fafd;
            transition: border 0.2s;
        }
        .aspNet-TextBox:focus, .form-container select:focus {
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
            <div class="form-title">Thêm Phòng Mới</div>
            <asp:Label ID="lblMaPhong" runat="server" Text="Mã phòng:"></asp:Label>
            <asp:TextBox ID="txtMaPhong" runat="server" CssClass="aspNet-TextBox" ForeColor="Red" OnTextChanged="txtMaPhong_TextChanged"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên phòng không được để trống " ControlToValidate="txtMaPhong"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="lblTenPhong" runat="server" Text="Tên phòng:"></asp:Label>
            <asp:TextBox ID="txtTenPhong" runat="server" CssClass="aspNet-TextBox"></asp:TextBox>

            <asp:Label ID="lblLoaiPhong" runat="server" Text="Loại phòng:"></asp:Label>
            <asp:DropDownList ID="ddlLoaiPhong" runat="server" CssClass="aspNet-TextBox">
                <asp:ListItem Text="Chọn loại phòng" Value="" />
                <asp:ListItem Text="Đơn" Value="Đơn" />
                <asp:ListItem Text="Đôi" Value="Đôi" />
                <asp:ListItem Text="VIP" Value="VIP" />
            </asp:DropDownList>

            <asp:Label ID="lblGiaPhong" runat="server" Text="Giá phòng (VND):"></asp:Label>
            <asp:TextBox ID="txtGiaPhong" runat="server" CssClass="aspNet-TextBox"></asp:TextBox>

            <asp:Label ID="lblTrangThai" runat="server" Text="Trạng thái:"></asp:Label>
            <asp:DropDownList ID="ddlTrangThai" runat="server" CssClass="aspNet-TextBox">
                <asp:ListItem Text="Chọn trạng thái" Value="" />
                <asp:ListItem Text="Trống" Value="Trống" />
                <asp:ListItem Text="Đang ở" Value="Đang ở" />
                <asp:ListItem Text="Đang dọn" Value="Đang dọn" />
            </asp:DropDownList>
            <asp:Label ID="lblHinhAnh" runat="server" Text="Hình ảnh:"></asp:Label>
            <asp:FileUpload ID="fuHinhAnh" runat="server" CssClass="aspNet-TextBox" />

            <asp:Button ID="btnSave" runat="server" Text="Lưu Phòng" CssClass="aspNet-Button" OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Hủy" CssClass="aspNet-Button" OnClick="btnCancel_Click" />
        </div>
    </form>
</body>
</html>
