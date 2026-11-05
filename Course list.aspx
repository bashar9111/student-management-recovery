<%@ Page Title="" Language="C#" MasterPageFile="~/page 1 .master" AutoEventWireup="true" CodeFile="Course list.aspx.cs" Inherits="Course_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        height: 26px;
    }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td colspan="2" style="text-align: center" class="auto-style6">Course Information</td>
    </tr>
    <tr>
        <td class="auto-style4">Course code</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 324px; text-align: left;" Text="Display" />
        </td>
    </tr>
    
    <tr>
        <td class="auto-style7" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseCOde" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CourseCOde" HeaderText="CourseCOde" ReadOnly="True" SortExpression="CourseCOde" />
                    <asp:BoundField DataField="Coursename" HeaderText="Coursename" SortExpression="Coursename" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [course] WHERE ([CourseCOde] = @CourseCOde)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="CourseCOde" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

