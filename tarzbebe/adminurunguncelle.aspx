<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminurunguncelle.aspx.cs" Inherits="master.adminurunguncelle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ürün Güncelle</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:beige;">
    <form id="form1" runat="server" class="form-horizontal">
    <h3 style="text-align:center; color:Red;">ÜRÜN GÜNCELLE</h3>
<div style="margin-top:10px;">

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
    <p class="text-center">
    <asp:Button ID="Button1" runat="server" Text="Güncelle" 
            CssClass="btn btn-success text-center" onclick="Button1_Click" />
    </p>

   
</div>
<div id="yon" runat="server"></div>
    </form>
</body>
</html>
