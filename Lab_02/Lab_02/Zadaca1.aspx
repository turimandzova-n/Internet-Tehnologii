<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca1.aspx.cs" Inherits="Lab_02.Zadaca1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="width: 400px">
        <div>
            <br />
            Име:
            <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
        </div>
        <div>
            Презиме:
           <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
        </div>
        <div>
            Од: <asp:DropDownList ID="ddlOd" runat="server">
                <asp:ListItem>Скопје</asp:ListItem>
                <asp:ListItem>Кавадарци</asp:ListItem>
                <asp:ListItem>Велес</asp:ListItem>
                <asp:ListItem>Маврово</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            До: <asp:DropDownList ID="ddlDo" runat="server">
                <asp:ListItem>Германија</asp:ListItem>
                <asp:ListItem>Русија</asp:ListItem>
                <asp:ListItem>Турција</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            Датум на тргање: 
            <asp:DropDownList ID="ddlDen" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="ddlMesec" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="ddlGodina" runat="server">
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            Време на тргање: <asp:DropDownList ID="ddlVreme" runat="server"></asp:DropDownList>
        </div>
        <div>
            Превозно средство: <asp:ListBox ID="lstSredstvo" runat="server">
                <asp:ListItem Value="Avion">Авион</asp:ListItem>
                <asp:ListItem Value="Voz">Воз</asp:ListItem>
            </asp:ListBox>
        </div>
        <div>
            Зона: 
        </div>
        <div>
            <asp:RadioButtonList ID="rblZona" runat="server">
                <asp:ListItem Value="P">Пушач</asp:ListItem>
                <asp:ListItem Value="N">Непушач</asp:ListItem>
            </asp:RadioButtonList>
            Класа: <asp:RadioButtonList ID="rblKlasa" runat="server">
                <asp:ListItem Value="E">Економска</asp:ListItem>
                <asp:ListItem Value="B">Бизнис</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            Послуга: <asp:CheckBoxList ID="cblPoslugaa" runat="server">
                <asp:ListItem Value="P">Пијалок</asp:ListItem>
                <asp:ListItem Value="K">Кафе</asp:ListItem>
                <asp:ListItem Value="O">Оброк</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <asp:Button ID="btnPodnesi" runat="server" Text="Button" OnClick="btnPodnesi_Click" />
        </div>
            </div>
        <div style="background-color: bisque"; float: right>

            <asp:Panel ID="pnlPanela1" runat="server" Visible="False">
                <div>
                    Почитуван патнику
                    <asp:Label ID="lblPatnik" runat="server" Text=""></asp:Label>
                    <br />
                    Издадена ви е карта за
                    <asp:Label ID="lblSredtsvo" runat="server" Text=""></asp:Label>
                    <br />
                    Со почетна дестинација
                    <asp:Label ID="lblOd" runat="server" Text=""></asp:Label>
                    <br />
                    И крајна дестинација
                    <asp:Label ID="lblDo" runat="server" Text=""></asp:Label>
                    <br />
                    Времето на поаѓање е
                    <asp:Label ID="lblVreme" runat="server" Text=""></asp:Label>
                    <br />
                    Вашето место на седење ќе биде во зоната за
                    <asp:Label ID="lblZona" runat="server" Text=""></asp:Label>
                    , 
             во
                    <asp:Label ID="lblKlasa" runat="server" Text=""></asp:Label>
                    класата 
            и во текот на патувањето ќе бидете послужени со
                    <asp:Label ID="lblPosluga" runat="server" Text=""></asp:Label>
                    
                </div>
            </asp:Panel>
            <div>
            
            <asp:Image ID="voz" runat="server" src="voz.jpg" Visible="False" ImageUrl="~/voz.jpg" Height="300px" Width="300px" />
            <asp:Image ID="avion" runat="server" Visible="False" ImageUrl="~/avion.jpg" Height="300px" Width="300px" />
        </div>
        <div>
            <asp:Label ID="lblPoraka" runat="server" Text=""></asp:Label>

        </div>
        </div>
        
    </div>
</asp:Content>
