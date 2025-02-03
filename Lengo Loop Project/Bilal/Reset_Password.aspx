<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reset_Password.aspx.cs" Inherits="Library_Website.Bilal.Reset_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <style>
        .text-center {
            font-size: 19px;
            margin-bottom: 25px;
            color: #7d0ed7ba;
            font-weight: bold;
        }

        #saveCanghes {
            background-color: #7d0ed7ba;
            border-style: none;
            font-weight: bold;
        }

        #cancel {
            font-weight: bold;
        }

        .alert {
            margin-top: 15px;
        
        }

        #ErrorMessage,SuccessMessage {

            font-size:12px;
            display:inline-block;
            width:108%;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container p-5 rounded border mt-5 w-25">
            <h1 class="text-center">Set A New Password</h1>

            <asp:Label ID="ErrorMessage" runat="server" CssClass="alert alert-danger" Visible="false"></asp:Label>
            <asp:Label ID="SuccessMessage" runat="server" CssClass="alert alert-success" Visible="false"></asp:Label>

      
            <div class="mb-3">
                <label for="currentpass" class="form-label">Current Password</label>
                <asp:TextBox runat="server" ID="C_Pass" TextMode="Password" Width="100%" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="newpass" class="form-label">New Password</label>
                <asp:TextBox runat="server" ID="newpass" TextMode="Password" Width="100%" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="confirm" class="form-label">Confirm Password</label>
                <asp:TextBox runat="server" ID="confirm" TextMode="Password" Width="100%" class="form-control" />
            </div>

       
            <div class="row justify-content-between">
                <asp:Button ID="cancel" runat="server" class="col-4 btn btn-secondary" OnClick="cancel_Click" Text="Cancel" />
                <asp:Button ID="saveCanghes" runat="server" class="col-6 btn btn-warning" OnClick="saveCanghes_Click" Text="Save Changes" />
            </div>
        </div>
    </form>
</body>
</html>
