<%@ Page Title="Nhắn Tin" Language="C#" MasterPageFile="~/TrangChuUser.Master" AutoEventWireup="true" CodeBehind="TrangMessage.aspx.cs" Inherits="hotelmanagement.TrangMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .chat-container {
            max-width: 600px;
            margin: 40px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(44,62,80,0.1);
            padding: 20px;
        }

        .chat-title {
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: #fff;
            padding: 15px;
            border-radius: 8px 8px 0 0;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }

        .chat-history {
            height: 300px;
            overflow-y: auto;
            border: 1px solid #ddd;
            padding: 15px;
            margin-top: 10px;
            margin-bottom: 10px;
            background: #f9f9f9;
        }

        .chat-history p {
            margin: 8px 0;
        }

        .chat-input {
            display: flex;
            gap: 10px;
        }

        .chat-input input {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .chat-input button {
            padding: 10px 20px;
            background: linear-gradient(to right, #36D1DC, #5B86E5);
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .chat-input button:hover {
            background: linear-gradient(to right, #5B86E5, #36D1DC);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeroContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="chat-container">
        <div class="chat-title">Trò chuyện với chúng tôi</div>
        <div id="chatHistory" class="chat-history">
            <p><strong>AI:</strong> Xin chào! Tôi có thể giúp gì cho bạn?</p>
        </div>
        <div class="chat-input">
            <input type="text" id="txtUserMessage" placeholder="Nhập tin nhắn của bạn..." />
            <button type="button" onclick="sendMessage()">Gửi</button>
        </div>
    </div>

    <script>
        function sendMessage() {
            var input = document.getElementById('txtUserMessage');
            var message = input.value.trim();
            if (message === "") return;

            var chat = document.getElementById('chatHistory');
            var userMessage = document.createElement('p');
            userMessage.innerHTML = "<strong>Bạn:</strong> " + message;
            chat.appendChild(userMessage);

            var aiReply = document.createElement('p');
            aiReply.innerHTML = "<strong>AI:</strong> " + generateAIReply(message);
            chat.appendChild(aiReply);

            input.value = "";
            chat.scrollTop = chat.scrollHeight;
        }

        function generateAIReply(userInput) {
    const input = userInput.toLowerCase();

    if (input.includes("phòng")) {
        if (input.includes("loại") || input.includes("kiểu")) {
            return "Khách sạn hiện có phòng đơn, phòng đôi, phòng VIP và phòng gia đình. Bạn muốn chọn loại nào?";
        }
        if (input.includes("trống") || input.includes("còn")) {
            return "Bạn cần kiểm tra phòng trống cho ngày nào? Vui lòng cung cấp ngày đến và ngày đi!";
        }
        return "Bạn muốn đặt phòng? Tôi sẵn sàng hỗ trợ. Bạn cần đặt cho mấy người và mấy đêm?";
    }

    if (input.includes("giá") || input.includes("bao nhiêu") || input.includes("chi phí")) {
        return "Giá phòng dao động từ 500.000đ đến 2.000.000đ/đêm tuỳ loại và ngày đặt. Bạn muốn biết giá cụ thể loại phòng nào?";
    }

    if (input.includes("giờ") && input.includes("check")) {
        return "Giờ check-in là 14:00 và check-out trước 12:00. Bạn cần đặt sớm hoặc check-in muộn chứ?";
    }

    if (input.includes("dịch vụ") || input.includes("tiện ích")) {
        return "Khách sạn có hồ bơi, nhà hàng, phòng gym, wifi miễn phí, xe đưa đón sân bay. Bạn muốn biết thêm dịch vụ nào?";
    }

    if (input.includes("vị trí") || input.includes("ở đâu") || input.includes("địa chỉ")) {
        return "Khách sạn tọa lạc ngay trung tâm thành phố, gần sân bay và các điểm du lịch nổi tiếng.";
    }

    if (input.includes("khuyến mãi") || input.includes("ưu đãi")) {
        return "Hiện tại chúng tôi có ưu đãi giảm giá 10% cho khách đặt phòng trước 7 ngày. Bạn quan tâm chứ?";
    }

    if (input.includes("hủy phòng") || input.includes("chính sách")) {
        return "Bạn có thể hủy phòng miễn phí trước 48h. Sau thời gian này phí hủy sẽ áp dụng. Bạn có cần hỗ trợ không?";
    }

    if (input.includes("liên hệ") || input.includes("số điện thoại")) {
        return "Bạn có thể liên hệ qua số 0346760598 hoặc email vantriqn2212@gmail.com.";
    }

    if (input.includes("cảm ơn") || input.includes("thanks")) {
        return "Rất vui được hỗ trợ bạn! Chúc bạn một ngày tốt lành!";
    }

    if (input.includes("hello") || input.includes("xin chào") || input.includes("hi")) {
        return "Xin chào! Tôi là trợ lý ảo, tôi có thể giúp gì cho bạn hôm nay?";
    }

    return "Xin lỗi, tôi chưa hiểu rõ ý bạn. Bạn có thể nói chi tiết hơn được không?";
}
    </script>
</asp:Content>
