<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca1.aspx.cs" Inherits="Auditoriska_4.Zadaca1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">
       
        <div class="row">
           <
               div class="col-md-3">
               <asp:TextBox ID="email" runat="server" style="width: 100%"></asp:TextBox>
           </div>
          
        <div class="col-md-9 text-left">
            <asp:RequiredFieldValidator 
                class="text-danger"
                ID="RequiredFieldValidator1" 
                runat="server" 
                ErrorMessage="Задолжително!" ControlToValidate="email">
                

            </asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator
                   class="text-danger"
                   ID="emailVal" 
                   runat="server" 
                   ControlToValidate="email"
                   ValidationExpression="\S+@\w+\.\w+"
                   ErrorMessage="Вредноста за е-маил е невалидна!">

               </asp:RegularExpressionValidator>

           </div>
        
       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="password" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                ID="RequiredFieldValidator2" 
                runat="server" 
                ErrorMessage="Задолжително!" ControlToValidate="password">
                

            </asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator 
                   ID="passwordVal" 
                   runat="server" 
                   ControlToValidate="password"
                   ValidationExpression=".{5,}"
                   ErrorMessage="Внесената лозинка е невалидна!">

               </asp:RegularExpressionValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="cpassword" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                class="text-danger"
                ID="RequiredFieldValidator3" 
                runat="server" 
                ErrorMessage="Задолжително!" ControlToValidate="cpassword">
                

            </asp:RequiredFieldValidator>
               <asp:CompareValidator 
                   class="text-danger"
                   ID="cpassVal" 
                   ControlToValidate="cpassword"
                   runat="server" 
                   ErrorMessage="Лозинките не се совпаѓаат" 
                   ControlToCompare="password">

               </asp:CompareValidator>
           </div>
       </div>

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Register" runat="server" Text="Регистрирај се" OnClick="Register_Click" />
       </div>
        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
       </div>
   </div>
</asp:Content>
