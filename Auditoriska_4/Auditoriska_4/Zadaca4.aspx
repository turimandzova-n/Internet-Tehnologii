<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca4.aspx.cs" Inherits="Auditoriska_4.Zadaca4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">
       
        <div class="row">
           <
               div class="col-md-3">
               <asp:TextBox ID="email" runat="server" style="width: 100%"></asp:TextBox>
           </div>
          
        <div class="col-md-9 text-left">
           uhijiji
           </div>
        

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Register" runat="server" Text="Регистрирај се" OnClick="Register_Click" />
       </div>

        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
       </div>
   </div>
</asp:Content>
