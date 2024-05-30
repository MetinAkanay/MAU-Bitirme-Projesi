<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="erkekbebeksortkapriurunozel.aspx.cs" Inherits="master.erkekbebeksortkapriurunozel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container">
        <div class="row">

    <asp:Repeater runat="server" ID="tekrar">
        <ItemTemplate>
        
        <div class="col-md-6" style="margin-top:30px;">
                <img src=<%#Eval("urun_resim") %> class="img-responsive aw-zoom" style="margin:0px auto; margin-bottom:0px;" /></a>
                </div>

                <div class="col-md-6" style="margin-left:-70px; margin-top:25px;">
                <p>
                <h2 style="font-size:22px; margin-bottom:0px; margin-top:0px;""><%#Eval("urun_cins") %></h2>
                <h2 style="font-size:22px; margin-top:0px;"><%#Eval("urun_adi") %><%#Eval("urun_yas") %></h2></h2>
                <h3 style="font-size:16px; color: #909090;; margin-top:0px;">Taksitli Fiyat: <%#Eval("urun_taksitlifiyat","{0:C}")%></h3>
                <h2 style="font-size:25px; color:Red; margin-top:11px;">Peşin Fiyat: <%#Eval("urun_fiyat","{0:C}")%></h3>
                </p>
                <hr style="margin-left: 0px; text-align: center; width: 350px; border:1px solid #e6e6e6">
                <p>
                    <asp:DropDownList ID="DropDownList1" runat="server" style="width:200px; height:30px; background-color:white; color:Red;">
                    <asp:ListItem Value=”-1″>Yaş Seçiniz</asp:ListItem>
                    <asp:ListItem Value=”0″>0</asp:ListItem>
                    <asp:ListItem Value=”1″>1</asp:ListItem>
                    <asp:ListItem Value=”2″>2</asp:ListItem>
                    <asp:ListItem Value=”3″>3</asp:ListItem>
                   
                    
                    </asp:DropDownList>
                 </p>
                 <hr style="margin-left: 0px; text-align: center; width: 350px; border:1px solid #e6e6e6">

                 <p>
                 
                 
                Adet Seçiniz: <input type="number" name="adett" min="1" max="5" style="color:Red;">
                    
                 </p>

                 <hr style="margin-left: 0px; text-align: center; width: 350px; border:1px solid #e6e6e6">

                </div>
                
                <div>
                <p class="text-center" style="margin-left:15px;">
                <a href="sepeteekle.aspx?id=<%# Eval("urun_no") %>" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Sepete Ekle</a>
                </p>
                </div>

                <p class="text-primary text-center" style="font-size:20px; margin-top:25px;">Tüm Siparişlerde Kargo Bedava !</p>
           
           
                <div style="margin-left:5px;">
                <p class="text-center" style="font-size:20px; margin-top:20px;">Ürün Özellikleri</p>
                <p class="text-center" style="font-size:17px; color:#707070;">Ürün Kodu: <%#Eval("urun_kodu") %></p>
                <p class="text-center" style="font-size:17px; color:#707070;">Kumaş: <%#Eval("urun_kumas") %></p>
                </div>

                <img src="img/yerliuretim.png" class="img-responsive" style="float:right; margin-top:-250px;" />



                
        
        </div>
        </ItemTemplate>
        </asp:Repeater>
        </div>
        </div>
</asp:Content>
