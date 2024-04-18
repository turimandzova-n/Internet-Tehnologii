<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca3.aspx.cs" Inherits="Auditoriska_4.Zadaca3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">
       <div class="row">
           <div class="col-md-3">
               <asp:TextBox ID="name" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                   ID="RequiredFieldValidator1" 
                   runat="server" 
                   ErrorMessage="Задолжително е полето за името на испитот" 
                   ControlToValidate="name">

               </asp:RequiredFieldValidator>
              
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="grade" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator
                   class="text-danger"
                   ID="RequiredFieldValidator2" 
                   runat="server" 
                   ErrorMessage="Задолжително е полето за оцена" 
                   ControlToValidate="grade">

               </asp:RequiredFieldValidator>
               <asp:RangeValidator
                   class="text-danger"
                   ID="RangeValidator1" 
                   runat="server" 
                   ControlToValidate="grade"
                   ErrorMessage="Внесената оцена е невалидна!" 
                   MinimumValue="5" 
                   MaximumValue="10" 
                   Type="Integer">

               </asp:RangeValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="date" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                   ID="RequiredFieldValidator3" 
                   runat="server" 
                   ErrorMessage="Задолжително е полето за датум" 
                   ControlToValidate="date">

               </asp:RequiredFieldValidator>
               <asp:CompareValidator 
                   class="text-danger"
                   ID="CompareValidator1" 
                   runat="server" 
                   ControlToValidate="date"
                   ValueToCompare="2022-04-01"
                   ErrorMessage="Датумот е невалиден!" 
                   Operator="LessThanEqual"></asp:CompareValidator>
         </div>
       </div>

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Submit" runat="server" Text="Внеси" OnClick="Submit_Click" />
       </div>
        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
       </div>
   </div>
</asp:Content>
