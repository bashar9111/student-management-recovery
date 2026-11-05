<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logein.aspx.cs" Inherits="logein" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            background-color: #996633;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">LOGIN PAGE</td>
            </tr>
            <tr>
                <td>ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>PASSWORD</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 197px" Text="SING IN " Width="73px" PostBackUrl="~/Home.aspx" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
