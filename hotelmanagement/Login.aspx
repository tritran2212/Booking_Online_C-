<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="hotelmanagement.Login" %>

<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            font-family: 'Segoe UI', Arial, sans-serif;
        }
        .login-container {
            background: #fff;
            width: 400px;
            margin: 100px auto;
            padding: 40px 30px;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(44, 62, 80, 0.2);
        }
        .login-container h2 {
            text-align: center;
            color: #36D1DC;
            margin-bottom: 30px;
        }
        .login-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #2c3e50;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 12px 0 ;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            background: #f7fafd;
            transition: border 0.2s;
        }
        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border: 1.5px solid #36D1DC;
            outline: none;
        }
        .login-container input[type="submit"] {
            width: 100%;
            padding: 12px 0;
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
        }
        .login-container input[type="submit"]:hover {
            background: linear-gradient(to right, #5B86E5, #36D1DC);
            transform: translateY(-2px) scale(1.02);
        }
        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Đăng nhập</h2>
            <asp:Label ID="lblUsername" runat="server" Text="Tên đăng nhập:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

            <asp:Label ID="lblPassword" runat="server" Text="Mật khẩu:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" />

            <asp:Label ID="lblError" runat="server" CssClass="error-message"></asp:Label>
        </div>
    </form>
</body>
</html>