<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca_2b.aspx.cs" Inherits="Lab_02.Zadaca_2b" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
            <div>
            <br />
            Име:
            <asp:TextBox ID="Ime" runat="server"></asp:TextBox>
            </div>

        <div>
            Презиме:
           <asp:TextBox ID="prezime" runat="server"></asp:TextBox>
        </div>
       
        <div>
            ФИНКИ ID:
           <asp:TextBox ID="finkiid" runat="server"></asp:TextBox> @finki.ukim.mk
        </div>

        <div>
           Лозинка <asp:TextBox ID="lozinka" runat="server"></asp:TextBox>
        </div>

         <div>
           Потврда <asp:TextBox ID="potvrdalozinka" runat="server"></asp:TextBox>
        </div>
      
        <div>
           Адреса <asp:TextBox ID="adresa" runat="server"></asp:TextBox>
                       
        </div>

        <div>
           Телефон <asp:TextBox ID="telefon" runat="server"></asp:TextBox>
        </div>

            <div>
              Пол <asp:RadioButtonList ID="pol" runat="server">
                    <asp:ListItem Value="1">Женско</asp:ListItem>
                    <asp:ListItem Value="2">Машко</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <div>
                Датум на раѓање 
                <asp:Calendar ID="Calendar1" runat="server" ShowGridLines="True"></asp:Calendar>
            </div>
            <div>
                Занимање:
                <asp:DropDownList ID="zanimanje" runat="server">
                    <asp:ListItem>занимање</asp:ListItem>
                    <asp:ListItem>IT инженер</asp:ListItem>
                    <asp:ListItem>кувар</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                Година на вршење на избраната дејност:
                <asp:TextBox ID="dejnost" runat="server"></asp:TextBox>
            </div>
         <div>
            <asp:Button ID="btnPodnesi" runat="server" Text="Внеси" OnClick="btnPodnesi_Click" />
        </div>
    <br />
    <div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    <br />
    <asp:RequiredFieldValidator 
               class="text-danger"
               ID="RequiredFieldValidator1" 
               runat="server" 
               ErrorMessage="Внеси име!" ControlToValidate="Ime">

         </asp:RequiredFieldValidator>
    <br />

        <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator2" 
                    runat="server" 
                    ErrorMessage="Внеси презиме!" ControlToValidate="prezime">

        </asp:RequiredFieldValidator>
    <br />
         <asp:RegularExpressionValidator 
                class="text-danger"
                ID="RegularExpressionValidator1" 
                runat="server" 
                ErrorMessage="Неправилен формат на ID!" 
                ControlToValidate="finkiid" 
                ValidationExpression="\S+(.){1,}\S{1,}(_){1,}\d{2}">

         </asp:RegularExpressionValidator>
    <br />
         <asp:CompareValidator 
                 class="text-danger"
                 ID="CompareValidator1" 
                 runat="server" 
                 ErrorMessage="Различни лозинки!" 
                 ControlToValidate="potvrdalozinka" 
                 ControlToCompare="lozinka">

             </asp:CompareValidator>
    <br />
        <asp:RequiredFieldValidator 
                class="text-danger"
                ID="RequiredFieldValidator3" 
                runat="server" 
                ErrorMessage="Внеси адреса!" ControlToValidate="adresa">

            </asp:RequiredFieldValidator>
    <br />
        <asp:RegularExpressionValidator 
            class="text-danger"
            ID="RegularExpressionValidator2" 
            runat="server" 
            ErrorMessage="Неточно внесен број!" 
            ControlToValidate="telefon" 
            ValidationExpression="\+[389]{3}(\s)[0-9]\d{0,1}(\s)[0-9]{3}(\s)[0-9]{3}">

        </asp:RegularExpressionValidator>
    <br />
        <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator4" 
                    runat="server" 
                    ErrorMessage="Изберeте Пол!" InitialValue="0"
                    ControlToValidate="pol">

        </asp:RequiredFieldValidator>
    <br />
        <asp:RequiredFieldValidator 
            class="text-danger"
            ID="RequiredFieldValidator5" 
            runat="server" 
            ErrorMessage="Изберете занимање!" 
            ControlToValidate="zanimanje" 
            InitialValue="(занимање)">

        </asp:RequiredFieldValidator>
    <br />
        <asp:RegularExpressionValidator 
            class="text=danger"
            ID="RegularExpressionValidator3" 
            runat="server" 
            ErrorMessage="Изберете дејност!" 
            ControlToValidate="dejnost" 
            ValidationExpression="[0-9]+">

        </asp:RegularExpressionValidator>

</asp:Content>
