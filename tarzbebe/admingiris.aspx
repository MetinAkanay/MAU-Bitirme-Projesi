<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="master.admingiris" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title>Admin Giriş</title>
</head>
<body style="background-color:skyblue;">
    <form id="form1" runat="server" class="form-horizontal">
    
       
        <div style="border:3px solid black; width:1000px;height:600px; margin-left:350px;margin-top:100px; background-color:white;"> 
    <img src="img/adm.png"/ style="margin-left:400px; margin-top:100px;">
        <div style="margin-left:15px;"> 
    <div class="form-group" style="margin-top:30px;">

    
    
        <b><asp:Label ID="Label1" runat="server" Text="Admin Kullanıcı Adı:" CssClass="col-md-4 control-label"></asp:Label></b>

        <div class="col-md-5">
            <asp:TextBox ID="txtadmink" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-4"></div>

       
    </div>

     <div class="form-group" style="margin-top:17px;">
    
    
        <b><asp:Label ID="Label2" runat="server" Text="Admin Şifre:" CssClass="col-md-4 control-label "></asp:Label></b>
        
        <div class="col-md-5">
            <asp:TextBox ID="txtadmins" runat="server" CssClass="form-control" TextMode="password"></asp:TextBox>
        </div>

        <div class="col-md-3"></div>

       
    </div>

    <div class="text-center">
        <asp:Button ID="Button1" runat="server" Text="Giriş Yap" 
            CssClass="btn btn-success" onclick="Button1_Click" />
        <br />
        <asp:Label ID="hata" runat="server" Text=""></asp:Label>

        
    </div>

 

        </div>
       </div>
    </form>
</body>
</html>
