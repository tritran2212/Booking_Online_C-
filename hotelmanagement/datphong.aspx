<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatPhong.aspx.cs" Inherits="hotelmanagement.DatPhong" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Đặt Phòng</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 420px;
            margin: 60px auto;
            padding: 30px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: #36D1DC;
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #5B86E5;
        }

        #lblThongBao {
            text-align: center;
            display: block;
            margin-bottom: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Đặt Phòng</h2>
            
            <asp:Label ID="lblThongBao" runat="server" ForeColor="Green" Font-Bold="True" />

            <label>Mã phòng:</label>
            <asp:TextBox ID="txtMaPhong" runat="server" ReadOnly="true" />

            <label>Mã khách hàng:</label>
            <asp:TextBox ID="txtMaKH" runat="server" />

            <label>Ngày nhận:</label>
            <asp:TextBox ID="txtNgayNhan" runat="server" TextMode="Date" />

            <label>Ngày trả:</label>
            <asp:TextBox ID="txtNgayTra" runat="server" TextMode="Date" />

            <asp:Button ID="btnDatPhong" runat="server" Text="Xác nhận đặt phòng" CssClass="btn" OnClick="btnDatPhong_Click" />
        </div>
    </form>
</body>
</html>