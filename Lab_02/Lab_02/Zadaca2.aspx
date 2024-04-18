<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca2.aspx.cs" Inherits="Lab_02.Zadaca2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        Стринг: <asp:TextBox ID="String" runat="server"></asp:TextBox>
        
        <asp:RegularExpressionValidator 
            class="text-danger"
           
            ID="RegularExpressionValidator2" 
            runat="server" 
            ErrorMessage="Неточно внесен број!" 
            ControlToValidate="String" 
            ValidationExpression="[A-Z]+\d{0,}\_{0,}\d{2}" </asp:RegularExpressionValidator>
       
        <asp:Button ID="Button2" runat="server" Text="Валидирај" OnClick="Button1_Click" />
        Телефонски број: <asp:TextBox ID="Validiraj" runat="server"></asp:TextBox>
        
        <asp:RegularExpressionValidator 
            class="text-danger"
            ID="RegularExpressionValidator1" 
            runat="server" 
            ErrorMessage="Неточно внесен број!" 
            ControlToValidate="Validiraj" 
            ValidationExpression="\+[389]{3}(\s)[0-9]\d{0,1}(\s)[0-9]{3}(\s)[0-9]{3}">

        </asp:RegularExpressionValidator>
        <asp:Button ID="Button1" runat="server" Text="Валидирај" OnClick="Button1_Click" />
    </div>
</asp:Content>
