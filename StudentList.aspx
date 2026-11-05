<%@ Page Title="" Language="C#" MasterPageFile="~/page 1 .master" AutoEventWireup="true" CodeFile="StudentList.aspx.cs" Inherits="StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <table class="auto-style4">
    <tr>
        <td colspan="2" style="text-align: center" class="auto-style6">Student Information</td>
    </tr>
    <tr>
        <td class="auto-style4">ID</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </td>
    </tr>
   
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 324px" Text="Display" />
        </td>
    </tr>
</table>
    
  
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>

