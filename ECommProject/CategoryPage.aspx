<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="CategoryPage.aspx.cs" Inherits="ECommProject.CategoryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
<asp:ListView ID="ListView1" runat="server">
    <ItemTemplate>
        <div class="list">
            <table>
                <tr><td><img src="<%#Eval("Pphoto") %>"/></td></tr>
                <tr><td><%#Eval("Pname") %></td></tr>
                <tr><td><%#Eval("Pdescription") %></td></tr>
   
                <tr><td><a class="btn" href="PDetails.aspx?Productid=<%#Eval("PId") %>">VIEW</a></td></tr>
            </table>
        </div>
    </ItemTemplate>
</asp:ListView>



</asp:Content>
