<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cetvrtazad.aspx.cs" Inherits="Auditorsika1.Cetvrtazad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">
        <div class="row text-center">
            <div class="m-4">
                Внесете име на валутата:
                <asp:TextBox ID="ImeValuta" runat="server"></asp:TextBox>
            </div>
            <br />
             <div class="m-4">
                Внесете вредност на валутата:
                 <asp:TextBox ID="VrednostValuta" runat="server"></asp:TextBox>
            </div>
               
            <br />
            <div class="m-4">
                <asp:Button ID="DodadiValuta" runat="server" Text="Додади валута" OnClick="DodadiValuta_Click" />
                <asp:Button ID="IzbrisiValuta" runat="server" Text="Избриши валута" OnClick="IzbrisiValuta_Click" />
            </div>
            <br />

            <div class="m-4">
                <asp:RadioButtonList ID="ListaValuti" runat="server" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged" AutoPostBack="True"></asp:RadioButtonList>
            </div>
            <hr />
         
            <div>
                Вкупно валути:
                <asp:Label ID="total" runat="server" Text="0"></asp:Label>
            </div>
            <hr />
              <div class="m-4">
                Изберете валута
                 <asp:TextBox ID="Vrednost" runat="server"></asp:TextBox>
            </div>
            <hr />
            <div>
                <asp:Label ID="status" runat="server" Text="Статус:"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
