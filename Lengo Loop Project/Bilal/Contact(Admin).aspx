<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact(Admin).aspx.cs" Inherits="Library_Website.Bilal.Contact_Admin_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;

            color: white;
        }

        .container {
            display: flex;
            width: 100%;
            max-width: 1400px;
            height: 100vh;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            overflow: hidden;
            animation: fadeIn 1s ease-in-out;
            margin-top: 200px;
        }

        .users-list {
            width: 25%;
            background-color: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-right: 1px solid rgba(255, 255, 255, 0.2);
        }

            .users-list h2, .messages-container h2 {
                margin-top: 0;
                font-size: 24px;
                color: #fff;
            }

            .users-list ul {
                list-style: none;
                padding: 0;
            }

                .users-list ul li {
                    padding: 15px;
                    margin: 10px 0;
                    background-color: rgba(255, 255, 255, 0.1);
                    border-radius: 10px;
                    cursor: pointer;
                    transition: transform 0.3s ease, background-color 0.3s ease;
                    animation: slideIn 0.5s ease-in-out;
                }

                    .users-list ul li:hover {
                        background-color: rgba(255, 255, 255, 0.2);
                        transform: translateX(10px);
                    }

        .messages-container {
            flex: 1;
            display: flex;
            flex-direction: column;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.05);
        }

        #messages {
            flex: 1;
            overflow-y: auto;
            padding-right: 10px;
            margin-bottom: 20px;
        }

        .message {
            padding: 15px;
            margin-bottom: 15px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            animation: fadeInMessage 0.5s ease-in-out;
        }

        .reply_section {
            display: flex;
            gap: 10px;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
        }

            .reply_section textarea {
                flex: 1;
                padding: 10px;
                border: none;
                border-radius: 10px;
                background-color: rgba(255, 255, 255, 0.1);
                color: white;
            }

        .Form-1 {
            width: 900px;
        }

        #reply_button {
            padding: 12px;
            border-radius: 5px;
            width: 100px;
            cursor: pointer;
            background-color: transparent;
            color: white;
            border-color: #a312bd;
            transition: 0.5s;
        }

            #reply_button:hover {
                background-color: black;
            }

        textarea {
            resize: none;
        }

        /*--------------------------*/

        body {
            background: #7d0ed7ba;
        }


        .circle {
            position: absolute;
            border-radius: 50%;
            background: white;
            animation: ripple 15s infinite;
            box-shadow: 0px 0px 1px 0px #508fb9;
        }

        .small {
            width: 200px;
            height: 200px;
            left: -100px;
            bottom: -100px;
        }

        .medium {
            width: 400px;
            height: 400px;
            left: -200px;
            bottom: -200px;
        }

        .large {
            width: 600px;
            height: 600px;
            left: -300px;
            bottom: -300px;
        }

        .xlarge {
            width: 800px;
            height: 800px;
            left: -400px;
            bottom: -400px;
        }

        .xxlarge {
            width: 1000px;
            height: 1000px;
            left: -500px;
            bottom: -500px;
        }

        .shade1 {
            opacity: 0.2;
        }

        .shade2 {
            opacity: 0.5;
        }

        .shade3 {
            opacity: 0.7;
        }

        .shade4 {
            opacity: 0.8;
        }

        .shade5 {
            opacity: 0.9;
        }

        @keyframes ripple {
            0% {
                transform: scale(0.8);
            }

            50% {
                transform: scale(1.2);
            }

            100% {
                transform: scale(0.8);
            }
        }

        li {
            color: black;
        }

        .reply_section textarea:focus {
            border-style: none;
        }
                .btn-link {
    color:#7d0ed7ba!important;
    text-decoration: none !important;
}
        a{
    text-decoration:none!important;
}
        /*--------------------------*/
    </style>

    <script>
        function loadMessages(messages) {


            const usersList = document.getElementById('usersList');
            const messagesContainer = document.getElementById('messagesContainer');

            usersList.innerHTML = '';
            messagesContainer.innerHTML = '';


            const uniqueUsers = {};
            messages.forEach(message => {
                if (!uniqueUsers[message.Email]) {
                    uniqueUsers[message.Email] = [];
                }
                uniqueUsers[message.Email].push(message);
            });


            Object.keys(uniqueUsers).forEach((userEmail, index) => {
                const li = document.createElement('li');
                li.textContent = userEmail;
                li.style.animationDelay = `${index * 0.2}s`;
                li.addEventListener('click', () => {
                    showUserMessages(userEmail, uniqueUsers[userEmail]);
                });
                usersList.appendChild(li);
            });


            if (Object.keys(uniqueUsers).length > 0) {
                showUserMessages(Object.keys(uniqueUsers)[0], uniqueUsers[Object.keys(uniqueUsers)[0]]);
            }
        }

        function showUserMessages(userEmail, messages) {


            const messagesContainer = document.getElementById('messagesContainer');
            messagesContainer.innerHTML = '';


            document.getElementById('selectedUserEmail').value = userEmail;

            messages.forEach((message, index) => {
                const messageElement = document.createElement('div');
                messageElement.classList.add('message');
                messageElement.innerHTML = `<strong style="color: black;">${message.Name}:</strong> ${message.Message}`;
                messageElement.style.animationDelay = `${index * 0.2}s`;
                messagesContainer.appendChild(messageElement);
            });
        }



    </script>

</head>
<body>
    <form id="form1" runat="server" class="Form-1">

        <div>

            <div class="ripple-background">
                <div class="circle xxlarge shade1"></div>
                <div class="circle xlarge shade2"></div>
                <div class="circle large shade3"></div>
                <div class="circle medium shade4"></div>
                <div class="circle small shade5"></div>
            </div>

            <div class="container">
                <div class="users-list">
                    <h2 style="color: black;">Users</h2>
                    <ul id="usersList" runat="server"></ul>
                </div>
                <div class="messages-container">
                    <h2 style="color: black;">Messages</h2>
                    <div id="messagesContainer" runat="server"></div>
                    <div class="reply_section">
                        <textarea id="reply_input" placeholder="Write your response here..." runat="server"></textarea>
                        <asp:Button ID="reply_button" runat="server" Text="Send" OnClick="reply_button_Click" />
                        <input type="hidden" id="selectedUserEmail" name="selectedUserEmail" runat="server" />
                    </div>

                </div>

            </div>



        </div>

    </form>



</body>
</html>
