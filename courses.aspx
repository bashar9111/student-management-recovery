<%@ Page Title="" Language="C#" MasterPageFile="~/page 1 .master" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style4 {
        width: 471px;
        height: 130px;
        background-color: #669999;
    }
    .auto-style5 {
        height: 42px;
    }
    .auto-style6 {
        height: 28px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style4" border="1">
    <tr>
        <td class="auto-style5">Course Name</td>
        <td class="auto-style5">Course Code</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="SAVE " OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

