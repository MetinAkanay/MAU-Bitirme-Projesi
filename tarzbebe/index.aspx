<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="master.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">	
	<link href="css/stil.css" rel="stylesheet" type="text/css" />
<div class="container">




    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-bottom:20px;">
  <!-- Indicators -->
						  <ol class="carousel-indicators">
						    <li data-target="#myCarousel" data-slide-to="0" class="active" ></li>
						    <li data-target="#myCarousel" data-slide-to="1" ></li>
						  
						  
						   
						  </ol>

						  <!-- Wrapper for slides -->
						  <div class="carousel-inner">
						    <div class="item active">
						      <img src="img/res1.jpg" alt="tarzbebe">
						      <div class="carousel-caption">
						      
						      </div>
						    </div>

						    <div class="item">
						      <img src="img/res2.jpg" alt="tarzbebe">
						      <div class="carousel-caption">
						      
						      </div>

                               <a class="left carousel-control" href="#myCarousel" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left"></span>
						    <span class="sr-only">Geri</span>
						  </a>
						  <a class="right carousel-control" href="#myCarousel" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right"></span>
						    <span class="sr-only">İleri</span>
						  </a>
						</div>

                         <a class="left carousel-control" href="#myCarousel" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left"></span>
						    <span class="sr-only">Geri</span>
						  </a>
						  <a class="right carousel-control" href="#myCarousel" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right"></span>
						    <span class="sr-only">İleri</span>
						  </a>
						</div>



        <asp:Repeater runat="server" ID="tekrar">
        
            <ItemTemplate>
            
            
            <div class="col-md-4 hover" style="text-align:center; padding:5px; margin-bottom:20px;">
            
                
                <a href="indexurunozel.aspx?id=<%#Eval("urun_no") %>"><img src=<%#Eval("urun_resim") %> class="img-responsive" style="widht:400px; height:240px; margin:0px auto; margin-bottom:0px;" /></a>
                <h2 style="font-size:22px; margin-bottom:0px; margin-top:0px;""><%#Eval("urun_cins") %></h2>
                <h2 style="font-size:22px; margin-top:0px;"><%#Eval("urun_adi") %><%#Eval("urun_yas") %></h2></h2>
                <h3 style="font-size:20px; color:Red; margin-top:0px;"><%#Eval("urun_fiyat") %> ₺</h3>
                <p>
                <a href="sepeteekle.aspx?id=<%# Eval("urun_no") %>" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Sepete Ekle</a>
                </p>
            </div>
            </ItemTemplate>
        </asp:Repeater>
</div>
    </div>
</asp:Content>
