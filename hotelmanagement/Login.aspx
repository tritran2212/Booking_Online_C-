<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="hotelmanagement.Login" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng Nhập</title>
    <link href="Styles/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="form-container">
      

        <asp:Label ID="lblUser" runat="server" Text="Tài khoản:"></asp:Label><br />
        <asp:TextBox ID="txtUser" runat="server" CssClass="aspNet-TextBox"></asp:TextBox><br />

        <asp:Label ID="lblPass" runat="server" Text="Mật khẩu:"></asp:Label><br />
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="aspNet-TextBox"></asp:TextBox><br />

        <asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập" CssClass="aspNet-Button" OnClick="btnLogin_Click" />
    </form>
</body>
</html>
