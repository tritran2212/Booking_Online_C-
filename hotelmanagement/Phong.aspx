<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phong.aspx.cs" Inherits="hotelmanagement.Phong" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý Phòng</title>
    <link href="styles/StyleSheet1.css" rel="stylesheet" />
    <link href="styles/StyleSheet3.css" rel="stylesheet" />
    <style>
        /* Header */
        .header {
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: white;
            padding: 30px 0 20px 0;
            text-align: center;
            border-radius: 0 0 20px 20px;
            box-shadow: 0 4px 16px rgba(44,62,80,0.08);
            margin-bottom: 20px;
        }
        /* Navigation Bar */
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
        .nav a:hover, .nav a:focus {
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: #fff;
        }
        /* Main Content */
        .main-content {
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(44,62,80,0.10);
            padding: 40px 30px 30px 30px;
            max-width: 100%;
            margin: 0 auto;
        }
        /* ASP.NET Button ngoài form-container */
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
            margin-top: 25px;
            transition: background 0.3s, transform 0.2s;
        }
        .aspNet-Button:hover {
            background: linear-gradient(to right, #5B86E5, #36D1DC);
            transform: translateY(-2px) scale(1.04);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Quản lý Phòng</h1>
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
            <asp:GridView ID="gvPhong" runat="server" 
                AutoGenerateColumns="False"
                CssClass="gridview" 
                OnSelectedIndexChanged="gvPhong_SelectedIndexChanged"
                DataKeyNames="MaPhong"
                OnRowEditing="gvPhong_RowEditing"
                OnRowUpdating="gvPhong_RowUpdating"
                OnRowCancelingEdit="gvPhong_RowCancelingEdit"
                OnRowDeleting="gvPhong_RowDeleting">
                
                <Columns>
                    <asp:BoundField DataField="MaPhong" HeaderText="Mã phòng" />
                    <asp:BoundField DataField="TenPhong" HeaderText="Tên phòng" />
                    <asp:BoundField DataField="LoaiPhong" HeaderText="Loại phòng" />
                    <asp:BoundField DataField="GiaPhong" HeaderText="Giá phòng" DataFormatString="{0:N0} đ" />
                    <asp:BoundField DataField="TrangThai" HeaderText="Trạng thái" />
                    
                      <asp:TemplateField HeaderText="Hình ảnh">
                        <ItemTemplate>
                            <%-- Nếu có tên file thì hiện hình, không thì hiện text --%>
                            <asp:Image ID="imgHinhAnh" runat="server" ImageUrl='<%# "~/Images/" + Eval("HinhAnh") %>' Width="80px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="fuHinhAnh" runat="server" CssClass="aspNet-TextBox" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnAddPhong" runat="server" Text="Thêm Phòng Mới" CssClass="aspNet-Button" OnClick="btnAddPhong_Click" />
        </div>
    </form>
</body>
</html>

