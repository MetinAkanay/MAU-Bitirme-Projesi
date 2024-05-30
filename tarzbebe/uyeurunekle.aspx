<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="uyeurunekle.aspx.cs" Inherits="tarzbebe.uyeurunekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-horizontal">

    <div class="form-group">
       <asp:Label ID="Label1" runat="server" Text="Ürün Adı:" CssClass="col-md-4 control-label"><b>Ürün Adı:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txturunad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txturunad" CssClass="text-danger" 
                ErrorMessage="Ürün Adı Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


       </div>

         <div class="form-group">
       <asp:Label ID="Label2" runat="server" Text="Ürün Fiyat:" CssClass="col-md-4 control-label"><b>Ürün Fiyatı:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txturunfiyat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txturunfiyat" CssClass="text-danger" 
                ErrorMessage="Fiyat Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
       <asp:Label ID="Label3" runat="server" Text="Ürün Yaş:" CssClass="col-md-4 control-label"><b>Ürün Yaşı:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txturunyas" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txturunyas" CssClass="text-danger" 
                ErrorMessage="Yaş Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>


     <div class="form-group">
       <asp:Label ID="Label4" runat="server" Text="Ürün Kategori:" CssClass="col-md-4 control-label"><b>Ürün Kategori:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txturunkategori" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txturunkategori" CssClass="text-danger" 
                ErrorMessage="Kategori Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
       <asp:Label ID="Label5" runat="server" Text="Ürün Cins:" CssClass="col-md-4 control-label"><b>Ürün Cinsiyet:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txturuncinsiyet" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txturuncinsiyet" CssClass="text-danger" 
                ErrorMessage="Cinsiyet Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
       <asp:Label ID="Label7" runat="server" Text="Ürün taksitli Fiyat:" CssClass="col-md-4 control-label"><b>Ürün Taksitli Fiyatı:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txturuntaksitlifiyat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txturuntaksitlifiyat" CssClass="text-danger" 
                ErrorMessage="Taksitli Fiyat Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>


      <div class="form-group">
       <asp:Label ID="Label6" runat="server" Text="Ürün kodu:" CssClass="col-md-4 control-label"><b>Ürün Kodu:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txturunkod" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txturunkod" CssClass="text-danger" 
                ErrorMessage="Ürün Kodu Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>


    </div>

     <div class="form-group">
       <asp:Label ID="Label8" runat="server" Text="Ürün Kumaş:" CssClass="col-md-4 control-label"><b>Ürün Kumaş:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txturunkumas" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txturunkumas" CssClass="text-danger" 
                ErrorMessage="Kumaş Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>

        

    </div>
          <div class="form-group">
       <asp:Label ID="Label10" runat="server" Text="Tel :" CssClass="col-md-4 control-label"><b>Telefon numarası:</b></asp:Label>
        <div class="col-md-4">
            <asp:TextBox ID="txttelno" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txttelno" CssClass="text-danger" 
                ErrorMessage="Telefon numarası Boş Bırakılamaz"></asp:RequiredFieldValidator>
        </div>

        

    </div>

     <div class="form-group">
       <asp:Label ID="Label9" runat="server" Text="Ürün Resim:" CssClass="col-md-4 control-label"><b>Ürün Resim:</b></asp:Label>
        <div class="col-md-4">
            <asp:FileUpload ID="dosya" runat="server" />
        </div>

        <div class="col-md-4">
           
        </div>
         <br /><br />
         <div style="margin-left:450px;">
             <asp:Image ID="Image1" runat="server" Height="100px" Width="200px"/>


         </div>

    </div>


</div> 
 <br /><br />
    <p class="text-center"><asp:Button ID="Button1" runat="server" Text="Ürünü Oluştur" 
            CssClass="btn btn-success" onclick="Button1_Click" /></p>
   
    <asp:Label ID="hata" runat="server" Text=""></asp:Label>
    <div id="yon" runat="server"></div>

 
</asp:Content>
