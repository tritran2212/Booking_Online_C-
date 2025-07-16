<%@ Page Title="Liên Hệ" Language="C#" MasterPageFile="~/TrangChuUser.Master" AutoEventWireup="true" CodeBehind="TrangLienHe.aspx.cs" Inherits="hotelmanagement.TrangLienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-container {
            max-width: 600px;
            margin: 40px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(44,62,80,0.1);
            padding: 30px;
            text-align: center;
        }

        .contact-container h2 {
            color: #36D1DC;
            margin-bottom: 20px;
        }

        .contact-container p {
            font-size: 18px;
            color: #2c3e50;
            margin: 10px 0;
        }

        .contact-container a {
            color: #5B86E5;
            text-decoration: none;
            font-weight: bold;
        }

        .contact-container a:hover {
            text-decoration: underline;
        }

        .contact-container .btn-message {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 28px;
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            text-decoration: none;
        }

        .contact-container .btn-message:hover {
            background: linear-gradient(to right, #5B86E5, #36D1DC);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeroContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-container">
        <h2>Liên hệ với chúng tôi</h2>
        <p><strong>Số điện thoại:</strong> 0346 760 598</p>
        <p><strong>Email:</strong> <a href="mailto:vantriqn2212@gmail.com">vantriqn2212@gmail.com</a></p>
        <a href="TrangMessage.aspx" class="btn-message">Nhắn tin cho chúng tôi</a>
    </div>
</asp:Content>