<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="master.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="container form-horizontal" style="margin-bottom:50px;">
 <h2 class="text-center text-danger"><span class="glyphicon glyphicon-lock"></span>Giriş Yap</h2>

    <div class="form-group">
       <asp:Label ID="Label1" runat="server" Text="E-Posta Adresiniz:" CssClass="col-md-4 control-label"><span class="glyphicon glyphicon-envelope"></span> <b>E-Posta Adresiniz:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txtposta" runat="server" CssClass="form-control" placeholder="ornek@example.com"></asp:TextBox>
        </div>

        <div class="col-md-3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtposta" CssClass="text-danger" 
                ErrorMessage="Posta Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Şifreniz:" CssClass="col-md-4 control-label"><span class="glyphicon glyphicon-lock"></span> <b>Şifreniz:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txtsfr" runat="server" CssClass="form-control" TextMode="password" placeholder="Şifreniz..."></asp:TextBox>
        </div>

        <div class="col-md-3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtsfr" CssClass="text-danger" 
                ErrorMessage="Şifre Boş Bırakılamaz"></asp:RequiredFieldValidator>
         </div>
    </div>

            <div class="text-center">
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-success" onclick="Button1_Click" />
        </div>

        <div class="text-center">
            <asp:Label ID="hata" runat="server" Text="" CssClass="text-danger"></asp:Label>
        </div>



 </div>
</asp:Content>
