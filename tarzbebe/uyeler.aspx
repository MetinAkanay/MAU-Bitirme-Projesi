<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyeler.aspx.cs" Inherits="master.uyeler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <img src="img/uyeler.jpg" / class="col-md-5" style="width:500px; height:170px; margin-top:10px;">
    <div>
    <table class="table table-bordered table-condensed table-hover" style="background-color:lightsteelblue; color:black;">

    <tr style="margin-left:20px; margin-right:20px; font-size:14px;">
    <th></th>

        <th>Üye Id</th>
    <th>Üye Kullanıcı Adı</th>
    <th>Üye Ad</th>
    <th>Üye Soyad</th>
    <th>Üye Şifre</th>
    <th>Üye E-posta</th>
    <th>Üye Adres</th>
    
   
    </tr>

        <asp:Repeater runat="server" ID="tekrar">
            <ItemTemplate>
            <tr>
            <td></td>
            <td><%# Eval("uye_no") %></td>
            <td><%# Eval("uyekull") %></td>
            <td><%# Eval("uyead")%></td>
            <td><%# Eval("uyesoyad") %></td>
            <td><%# Eval("uyesifre") %></td>
            <td><%# Eval("uyeposta") %></td>
            <td><%# Eval("uyeadres") %></td>
         
            <td> <a href="adminuyesil.aspx?id=<%# Eval("uye_no") %>" class="btn btn-danger">Bu Üyeyi Sil</a></td>
            </tr>


            
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div id="yon" runat="server"></div>
    </div>
    
    </form>
</body>
</html>
