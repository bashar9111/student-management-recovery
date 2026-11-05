<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student Data.aspx.cs" Inherits="Student_Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .auto-style4 {
        width: 60%;
        background-color: #669999;
    }
        .auto-style6 {
            height: 6px;
        }
    .auto-style5 {
        width: 97px;
    }
        .auto-style7 {
            height: 19px;
        }
        .auto-style8 {
            height: 19px;
        }
        .auto-style9 {
            width: 97px;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style4">
    <tr>
        <td colspan="2" style="text-align: center" class="auto-style6">Student Information</td>
    </tr>
    <tr>
        <td class="auto-style5">ID</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
   
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 324px" Text="Display" />
        </td>
    </tr>
</table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [student] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
