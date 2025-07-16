<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChuUser.Master" AutoEventWireup="true" CodeBehind="TrangChuUser.aspx.cs" Inherits="hotelmanagement.TrangChuUser1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .hero-container {
            overflow-x: auto;
            overflow-y: hidden;
            white-space: nowrap;
            scroll-behavior: smooth;
            -webkit-overflow-scrolling: touch;
        }

        .hero-slider {
            display: inline-flex;
            gap: 20px;
            padding: 20px;
        }

        .hero-slider img {
            width: 80vw;
            max-width: 80vw;
            height: auto;
            border-radius: 16px;
            object-fit: cover;
            flex-shrink: 0;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            transition: transform 0.3s ease;
        }

        .hero-slider img:hover {
            transform: scale(1.02);
        }

        .hero-container::-webkit-scrollbar {
            display: none; /* Ẩn thanh cuộn cho đẹp */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeroContent" runat="server">
    <div class="hero-container">
        <div class="hero-slider">
            <img src="https://a0.muscache.com/im/pictures/miso/Hosting-24151308/original/c1484972-8204-4f51-80fb-6cc47ab8f96e.jpeg?im_w=1200" alt="Slide 1" />
            <img src="https://a0.muscache.com/im/pictures/hosting/Hosting-U3RheVN1cHBseUxpc3Rpbmc6MTE0NTI2NTI5NzA5NTE5NjY2Mg%3D%3D/original/aec52e4e-36fd-4937-9044-70772dfc5821.jpeg?im_w=1200" alt="Slide 2" />
            <img src="https://a0.muscache.com/im/pictures/hosting/Hosting-1126839634398201811/original/77860971-521c-49bd-9a8f-b7480ce0e958.jpeg?im_w=1200" alt="Slide 3" />
            <img src="https://a0.muscache.com/im/pictures/hosting/Hosting-U3RheVN1cHBseUxpc3Rpbmc6MTMyOTQ1MzAyMjEyOTk3Mzk2MA%3D%3D/original/0fe6e1a9-d7cb-48d1-b287-f43ab364af4c.jpeg?im_w=1200" alt="Slide 4" />
            <img src="https://a0.muscache.com/im/pictures/miso/Hosting-625884718258416241/original/1151d46d-9472-48c8-b4cb-4b1e50a2d8d1.jpeg?im_w=1200" alt="Slide 5" />
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center; margin-top:40px;">Chào mừng bạn đến với Airbnb</h2>
</asp:Content>