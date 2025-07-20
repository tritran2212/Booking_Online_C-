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
         .card-container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
        padding: 20px;
    }

    .room-card {
        width: 250px;
        background: #fff;
        border-radius: 16px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        padding: 16px;
        text-align: center;
        transition: transform 0.3s ease;
    }

    .room-card:hover {
        transform: translateY(-5px);
    }

    .room-card img {
        width: 100%;
        height: 160px;
        object-fit: cover;
        border-radius: 12px;
    }

    .room-card h3 {
        font-size: 18px;
        margin: 10px 0 5px;
    }

    .card-buttons {
        margin-top: 10px;
        display: flex;
        justify-content: space-between;
        gap: 10px;
    }

    .btn-detail, .btn-book {
        flex: 1;
        padding: 6px;
        border: none;
        border-radius: 6px;
        color: white;
        cursor: pointer;
    }

    .btn-detail {
        background: #3498db;
    }

    .btn-book {
        background: #2ecc71;
    }

    .btn-detail:hover {
        background: #2980b9;
    }

    .btn-book:hover {
        background: #27ae60;
    }
    .room-list {}
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
    <h2 style="text-align:center; margin: 40px 0;">Danh sách phòng hiện có</h2>

    <div class="card-container">
        <asp:DataList ID="dlPhong" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" CssClass="room-list" OnSelectedIndexChanged="dlPhong_SelectedIndexChanged" Width="740px">
            <ItemTemplate>
                <div class="room-card">
                    <asp:Image ID="imgHinhAnh" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhAnh") %>' Width="150px" />
                    <h3><%# Eval("TenPhong") %></h3>
                    <p>Loại phòng: <%# Eval("LoaiPhong") %></p>
                    <p>Giá: <strong><%# String.Format("{0:#,##0} VND", Eval("GiaPhong")) %></strong></p>
                    <p>Trạng thái: <%# Eval("TrangThai") %></p>
                    <div class="card-buttons">
                        <asp:Button runat="server" Text="Xem chi tiết" CssClass="btn-detail" CommandArgument='<%# Eval("MaPhong") %>' />
                        <asp:Button runat="server" Text="Đặt phòng" CssClass="btn-book" CommandArgument='<%# Eval("MaPhong") %>' OnClick="Unnamed2_Click"  />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>