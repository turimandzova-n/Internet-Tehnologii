<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca2.aspx.cs" Inherits="Auditoriska_4.Zadaca2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">4
    
    <div class="container" style="margin: 20px;">
       
        <div class="row">
           <div class="col-md-3">
               <asp:DropDownList ID="cities" runat="server">
                   <asp:ListItem>град</asp:ListItem>
                   <asp:ListItem>скопје</asp:ListItem>
                   <asp:ListItem>велес</asp:ListItem>
                   <asp:ListItem>охрид</asp:ListItem>
               </asp:DropDownList>
           </div>
            <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                    ID="cityVal" 
                    runat="server" 
                    ErrorMessage="Изберете град од листата!" 
                    InitialValue="(град)"
                    ControlToValidate="cities"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="row" style="margin-left: 0px; margin-top:10px;">
            <asp:Button ID="Submit" runat="server" Text="Button" OnClick="Submit_Click" />
        </div>
        <div class="row" style="margin-left: 0px; margin-top:10px;">
            <asp:Label ID="Label1" runat="server" Text="Селектираниот град е: "></asp:Label>
        </div>

        </div>
          

</asp:Content>
