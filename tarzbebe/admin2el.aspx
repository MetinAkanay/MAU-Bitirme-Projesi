<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin2el.aspx.cs" Inherits="tarzbebe.admin2el" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/stil.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:beige;">
     <form id="form1" runat="server" class="container">
    
    <div id="tasarim" class="col-md-4">

			<div id="menu" style="margin-bottom:100px;">
				<ul>
					<li><a href="index.aspx">Anasayfa</a></li>
					<li><a href="admin.aspx">Ürünler</a></li>
					<li><a href="uyeler.aspx">Üyeler</a></li>
                      <li><a href="admin2el.aspx">2.el ürünler</a></li>
                       <li><a href="2elurunlerlistelemeadmin.aspx">2.el satışta olanlar</a></li>
                    <li><a href="adminonerisikayet.aspx">Öneri Ve Şikayetler</a></li>
					
				</ul>
			</div>
	</div>

    <img src="img/urunlerimiz.png" / class="col-md-5" style=" margin-top:50px;">


    <div>

    <table class="table table-bordered table-condensed table-hover" style="background-color:lightsteelblue; color:black;">

    <tr style="margin-left:20px; margin-right:20px; font-size:14px;">
    <th></th>

        <th>Ürün İd</th>
    <th>Ürün Ad</th>
    <th>Ürün Fiyat</th>
    <th>Ürün Yaş</th>
    <th>Ürün Kategori</th>
    <th>Ürün Cinsiyet</th>
    <th>Ürün Kodu</th>
    <th>Ürün Kumaş</th>
        <th>Tel</th>
    <th>Ürün Taksitli Fiyat</th>
    <th>Ürün Resim Yolu</th>
    
   
    </tr>
     <a href="adminurunekle.aspx"><img src="img/ürün ekle.gif" style="width:180px; height:85px; margin-top:70px; margin-left:100px;" /></a>
     <h4 class="text-center" style="margin-right:-70px;">Ürün Ekle</h4>

        <asp:Repeater runat="server" ID="tekrar">
            <ItemTemplate>
            <tr>
            
            <td><a href="admin2elurunguncelle.aspx?id=<%# Eval("urun_no") %>" class="btn btn-primary"><span class="glyphicon glyphicon-refresh"></span> Güncelle ve Ekle</a></td>
            <td><%# Eval("urun_no") %></td>
            <td><%# Eval("urun_adi") %></td>
            <td><%# Eval("urun_fiyat","{0:C}")%></td>
            <td><%# Eval("urun_yas") %></td>
            <td><%# Eval("urun_kategori") %></td>
            <td><%# Eval("urun_cins") %></td>
            <td><%# Eval("urun_kodu") %></td>
            <td><%# Eval("urun_kumas") %></td>
                 <td><%# Eval("tel") %></td>
            <td><%# Eval("urun_taksitlifiyat","{0:C}")%></td>
            <td><%# Eval("urun_resim") %></td>
 <td> <a href="2elsatistaolanlarsil.aspx?id=<%# Eval("urun_no") %>" class="btn btn-danger">Sil <span class="glyphicon glyphicon-remove"></span> </a></td>            </tr>


            
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div id="yon" runat="server"></div>
    </div>
    </form>
</body>
</html>
