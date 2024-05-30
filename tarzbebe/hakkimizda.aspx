<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="master.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="col-md-6">
       <p align="center" class="text text-primary" style="font-size:25px; margin-top: 3px;"><b>Çocuklar için daha fazla eğlence ve moda!</b> </p>
			<br>
			<p align="center" style="font-size: 18px;   text-indent: 40px;">Her gün yeni trendlerin ortaya çıktığı,satın alma alışkanlıklarının tamamen değiştiği bir dünyada yaşıyoruz.Tarz Bebe'nin hikâyesi,işte tam da çocukların hikayesi.Tarz Bebe nesli,kendilerini ifade edebilen yeniçağın nesli.</p>
			<br>
			<p align="center" style="font-size: 18px;   text-indent: 40px;" >0-12 yaş arası çocukların kendi stillerini bulacakları, kendilerini ifade edebilecekleri bir  Tarz Bebe’yi, Dünya ve Türkiye’de çocuk modasının öncü markası olarak yeniden tasarladık. </p>
			<br>



			
    </div>

    <div class="col-md-6" style="margin-bottom:80px;">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="img/bebekmodel2.jpg" style="width:600px; height:267px;">
    </div>

    <div class="item">
      <img src="img/bebekmodel1.jpg" style="width:600px; height:267px;">
    </div>

    <div class="item">
      <img src="img/bebekmodel5.jpg" style="width:600px; height:267px;">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

  
</div>
</asp:Content>
