<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Auditorsika1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Auditosika1-zadaca1</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-12 text-center">
            <div class="m-3">
            Изберете град:
            <br />
            <asp:ListBox ID="ListaGradovi" runat="server" SelectionMode="Multiple">
                <asp:ListItem Value="0">Скопје</asp:ListItem>
                <asp:ListItem Value="50">Велес</asp:ListItem>
                <asp:ListItem Value="120">Kавадарци</asp:ListItem>
                </asp:ListBox>
            </div>
            <div class="m-3">
                <asp:Button ID="PrikaziGrad" runat="server" Text="Прикажи град" OnClick="PrikaziGrad_Click" />
            </div>
             <div class="m-3">
                 Селектираниот град е: <asp:Label ID="SelektiranGrad" runat="server" Text="(none)"></asp:Label>
            </div>
            <div class="m-3">
                Оддалечен од Скопје е: <asp:Label ID="Oddalecenost" runat="server" Text="(none)"></asp:Label>
            </div>


        </div>

        
    </div>

</asp:Content>
