<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sedmazad.aspx.cs" Inherits="Auditorsika1.Sedmazad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        
        <div class="row m-4">
            <asp:ImageButton ID="ImageButton" runat="server" ImageUrl="~/Photo.jpg" OnClick="ImageButton1_Click" />
        </div>
        <div class="row m-4">
            <asp:Label ID="Label" runat="server" Text="Label"></asp:Label>
        </div>
    </div>

</asp:Content>
