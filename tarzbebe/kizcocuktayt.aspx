<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="kizcocuktayt.aspx.cs" Inherits="master.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    	<link href="css/stil.css" rel="stylesheet" type="text/css" />

<div class="container">
 <asp:Repeater runat="server" ID="tekrar">
        
            <ItemTemplate>
            
            <div class="col-md-4 hover" style="text-align:center;  padding:5px; margin-bottom:20px;">
            
                
                 <a href="kizcocuktayturunozel.aspx?id=<%# Eval("urun_no") %>"><img src=<%#Eval("urun_resim") %> class="img-responsive" style="widht:400px; height:240px; margin:0px auto; margin-bottom:0px;" /></a>
                <h2 style="font-size:22px; margin-bottom:0px; margin-top:0px;""><%#Eval("urun_cins") %></h2>
                <h2 style="font-size:22px; margin-top:0px;"><%#Eval("urun_adi") %><%#Eval("urun_yas") %></h2></h2>
                <h3 style="font-size:20px; color:Red; margin-top:0px;"><%#Eval("urun_fiyat","{0:C}") %></h3>
                <p>
                <a href="sepeteekle.aspx?id=<%# Eval("urun_no") %>" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Sepete Ekle</a>
                </p>
            </div>
            </ItemTemplate>
        </asp:Repeater>
</div>
</asp:Content>
