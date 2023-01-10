<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="PDetails.aspx.cs" Inherits="ECommProject.PDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <asp:ListView ID="ListView2" runat="server">
    <ItemTemplate>
        <div class="list">
            <table>
                <tr><td><img src="<%#Eval("Pphoto") %>"/></td></tr>
                <tr><td><%#Eval("Pname") %></td></tr>
                <tr><td><%#Eval("Pdescription") %></td></tr>
                <tr><td><%#Eval("Pprice") %></td></tr>
            </table>
        </div>
    </ItemTemplate>
</asp:ListView>
</asp:Content>

