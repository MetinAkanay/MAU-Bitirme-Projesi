<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminonerisikayet.aspx.cs" Inherits="master.adminonerisikayet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/stil.css" rel="stylesheet" type="text/css" />
</head>
<body  style="background-color:beige;">
    <form id="form1" runat="server">
    <div class="container">
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
        <img src="img/adminresimsikayet.jpg" class="img-responsive" style="width:520px; height:220px; margin-top:20px; margin-bottom:20px;" />
    <div>
    <table class="table table-bordered table-condensed table-hover" style="background-color:lightsteelblue; color:black;">

    <tr style="margin-left:20px; margin-right:20px; font-size:14px;">
    <th></th>

        <th>Ad</th>
    <th>Soyad</th>
    <th>E-Mail</th>
    <th>Telefon No</th>
    <th>Konu</th>
    <th>Mesaj</th>
    <th>Resim</th>
    
   
    </tr>

        <asp:Repeater runat="server" ID="tekrar">
            <ItemTemplate>
            <tr>
            <td></td>
            <td><%# Eval("ad") %></td>
            <td><%# Eval("soyad") %></td>
            <td><%# Eval("mail")%></td>
            <td><%# Eval("telefon") %></td>
            <td><%# Eval("konu") %></td>
            <td><%# Eval("mesaj") %></td>
            <td><%# Eval("resim") %></td>
           <td> <a href="onerisil.aspx?id=<%# Eval("oneri_sikayetid") %>" class="btn btn-danger">Sil <span class="glyphicon glyphicon-remove"></span> </a></td>
            
            </tr>


            
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div id="yon" runat="server"></div>
    </div>
    </div>
    </form>
</body>
</html>
