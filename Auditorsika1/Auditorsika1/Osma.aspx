<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Osma.aspx.cs" Inherits="Auditorsika1.Osma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-5">
            <div class="m-4">
                Изберете боја на позадина:
                <br />
                <asp:DropDownList ID="boja" runat="server"></asp:DropDownList>
            </div>
                <div class="m-4">
                Изберете фонт:
                <br />
                <asp:DropDownList ID="Font" runat="server"></asp:DropDownList>
            </div>
            <div class="m-4">
                Изберете боја на фонт:
                <br />
                <asp:DropDownList ID="FontColor" runat="server"></asp:DropDownList>
            </div>
            <div class="m-4">
                Големина на фонт:
                <br />
                <asp:TextBox ID="FontSize" runat="server"></asp:TextBox>
            </div>
            <div class="m-4">
                Тип на рамка:
                <br />
                <asp:RadioButtonList ID="BorderType" runat="server"></asp:RadioButtonList>
            </div>
            <div class="m-4">
                 Слика:
                <br />
                <asp:CheckBox ID="ShowImg" runat="server" />
            </div>
            <div class="m-4">
                Слика:
                <br />
                <asp:TextBox ID="ShortText" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="m-4">
                <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
            </div>
                </div>
            <div class="col-5">
                <asp:Panel ID="Cestitka" runat="server">
                    <asp:Label ID="Poraka" runat="server" Text="Label"></asp:Label>
                    <asp:Image ID="Slika" runat="server" Visible="False" ImageUrl="~/Photo.jpg" />
                </asp:Panel>
            </div>
        </div>

    </div>
</asp:Content>
