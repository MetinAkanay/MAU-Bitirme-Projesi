<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="onerivesikayet.aspx.cs" Inherits="master.onerivesikayet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">

<div class="form-horizontal">

<div class="form-group">
    <div> <h3 style="text-align:center; margin-bottom:-8px;">Öneri&Şikayet Formu</h3>
  <a href="onerilersayfa.aspx" class="btn btn-success" style="margin-left:900px;"><span class="glyphicon glyphicon-shopping-cart"></span> Tüm öneri ve şikayetler</a>
    </div>

<p style="color:Red; margin-left:290px;">Zorunlu Alanlar(!)</p>

       <asp:Label ID="Label1" runat="server" Text="Adı:" CssClass="col-md-4 control-label"><b>Adınız(!)</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txtad" runat="server" CssClass="form-control" placeholder="Adınız..."></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtad" CssClass="text-danger" 
                ErrorMessage="Adınız Boş bırakılamaz"></asp:RequiredFieldValidator>
        </div>


       </div>

         <div class="form-group">
       <asp:Label ID="Label2" runat="server" Text="Soyad:" CssClass="col-md-4 control-label"><b>Soyadınız(!)</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txtsoyad" runat="server" CssClass="form-control" placeholder="Soyadınız..."></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtsoyad" CssClass="text-danger" 
                ErrorMessage="Soyad Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
       <asp:Label ID="Label3" runat="server" Text="mail:" CssClass="col-md-4 control-label"><b>E-mail adresiniz(!)</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" placeholder="Mail Adresiniz..."></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtmail" CssClass="text-danger" 
                ErrorMessage="Mail Adresi Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>


     <div class="form-group">
       <asp:Label ID="Label4" runat="server" Text="tel:" CssClass="col-md-4 control-label"><b>Telefon Numaranız:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txttel" runat="server" CssClass="form-control" placeholder="Telefon Numaranız..."></asp:TextBox>
        </div>

        <div class="col-md-4">
            
        </div>


    </div>

     <div class="form-group">
       <asp:Label ID="Label5" runat="server" Text="konu:" CssClass="col-md-4 control-label"><b>Konu(!)</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txtkonu" runat="server" CssClass="form-control" placeholder="Öneri&Şikayet"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtkonu" CssClass="text-danger" 
                ErrorMessage="Konu Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>


       <div class="form-group">
    <b><asp:Label ID="Label8" runat="server" Text="Mesaj" CssClass="col-md-4 control-label" ><b>Mesajınız(!)</b></asp:Label></b>
        <div class="col-md-4">
            <textarea id="txtmesaj" cols="50" rows="6" runat="server" class="form-control" style="resize:none;" placeholder="Mesajınız.."></textarea>
        </div>

            <div class="col-md-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtmesaj" CssClass="text-danger" 
                    ErrorMessage="Mesaj Boş Geçilemez"></asp:RequiredFieldValidator>
         </div>


    </div>

     

   

     

     <div class="form-group">
       <asp:Label ID="Label9" runat="server" Text="Ürün Resim:" CssClass="col-md-4 control-label"><b>Konu Hakkında Resim</b></asp:Label>
        <div class="col-md-4">
            <asp:FileUpload ID="dosya" runat="server" />
        </div>

        <div class="col-md-4">
           
        </div>

        

    </div>


</div> 

    <p class="text-center">
        <asp:Button ID="Button1" runat="server" Text="Gönder" 
            CssClass="btn btn-success" onclick="Button1_Click"  /></p>
    <div><asp:Image ID="Image1" runat="server" Height="65px" Width="159px" /></div>
    <asp:Label ID="hata" runat="server" Text=""></asp:Label>
    <div id="yon" runat="server"></div>

</div>

</div>
</asp:Content>
