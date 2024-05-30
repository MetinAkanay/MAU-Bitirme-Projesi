<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="uyeol.aspx.cs" Inherits="master.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <img src="img/uyeol.jpg" class="img-responsive" style="margin:0px auto;" /> 
 <div class="form-horizontal" style="margin-left:200px; margin-bottom:50px;">
 
     
    <div class="form-group">
    <b><asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı:" CssClass="col-md-3 control-label" ></asp:Label></b>
        <div class="col-md-4">
            <asp:TextBox ID="txtkull" runat="server" CssClass="form-control" placeholder="Kullanıcı Adınız..."></asp:TextBox>
        </div>

            <div class="col-md-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtkull" CssClass="text-danger" 
                    ErrorMessage="Kullanıcı Adı Boş Geçilemez"></asp:RequiredFieldValidator>
        </div>


    </div>

    <div class="form-group">
    <b><asp:Label ID="Label4" runat="server" Text="Ad:" CssClass="col-md-3 control-label" ></asp:Label></b>
        <div class="col-md-4">
            <asp:TextBox ID="txtad" runat="server" CssClass="form-control" placeholder="Adınız..."></asp:TextBox>
        </div>

            <div class="col-md-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtad" CssClass="text-danger" 
                    ErrorMessage="Ad Boş Geçilemez"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
    <b><asp:Label ID="Label5" runat="server" Text="Soyad:" CssClass="col-md-3 control-label" ></asp:Label></b>
        <div class="col-md-4">
            <asp:TextBox ID="txtsoyad" runat="server" CssClass="form-control" placeholder="Soyadınız.."></asp:TextBox>
        </div>

            <div class="col-md-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtsoyad" CssClass="text-danger" 
                    ErrorMessage="Soyad Boş Geçilemez"></asp:RequiredFieldValidator>
         </div>


    </div>

    <div class="form-group">
    <b><asp:Label ID="Label2" runat="server" Text="Şifre:" CssClass="col-md-3 control-label"></asp:Label></b>
        <div class="col-md-4">
            <asp:TextBox ID="txtsfr" runat="server" CssClass="form-control" TextMode="password" placeholder="Şifreniz *****"></asp:TextBox>
        </div>

            <div class="col-md-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtsfr" CssClass="text-danger" 
                    ErrorMessage="Şifre Boş Geçilemez"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
    <b><asp:Label ID="Label3" runat="server" Text="Şifre Tekrarı:" CssClass="col-md-3 control-label"></asp:Label></b>
        <div class="col-md-4">
            <asp:TextBox ID="txtsfr2" runat="server" CssClass="form-control" TextMode="password" placeholder="Şifre Tekrarı *****"></asp:TextBox>
        </div>

            <div class="col-md-4"><asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtsfr" ControlToValidate="txtsfr2" CssClass="text-danger" 
                    ErrorMessage="Şifreleriniz Uyuşmuyor Kontrol Edin."></asp:CompareValidator>
         &nbsp;</div>


    </div>

     

    <div class="form-group">
    <b><asp:Label ID="Label7" runat="server" Text="E-Posta:" CssClass="col-md-3 control-label" ></asp:Label></b>
        <div class="col-md-4">
            <asp:TextBox ID="txtposta" runat="server" CssClass="form-control" placeholder="ornek@example.com"></asp:TextBox>
        </div>

            <div class="col-md-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtposta" CssClass="text-danger" 
                    ErrorMessage="Posta Boş Geçilemez"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
    <b><asp:Label ID="Label8" runat="server" Text="Adres" CssClass="col-md-3 control-label" ></asp:Label></b>
        <div class="col-md-4">
            <textarea id="txtadres" cols="50" rows="6" runat="server" class="form-control" style="resize:none;" placeholder="Adresiniz..."></textarea>
        </div>

            <div class="col-md-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtadres" CssClass="text-danger" 
                    ErrorMessage="Adres Boş Geçilemez"></asp:RequiredFieldValidator>
         </div>


    </div>

    
    <div class="text-center" style="margin-right:200px;">
        <asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="btn btn-success" 
            onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Temizle" 
            CssClass="btn btn-danger" onclick="Button2_Click" />
            
    </div>

    <div class="text-center" style="margin-right:200px;">
        <a href="girisyap.aspx">Zaten Üyemisiniz ? Tıkla Ve Giriş Yap.</a>
    </div>


        <div class="text-center" style="margin-top:20px;">
            <asp:Label ID="lblhata" runat="server" Text=""></asp:Label>
        </div>

</div>

<div id="yon" runat="server"></div>

</asp:Content>
