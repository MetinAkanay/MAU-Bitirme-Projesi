<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="master.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="yon" runat="server"></div>

      <table>
    <tr>
    <th style="padding-left:70px;">Ürün</th>
    <th style="padding-left:370px;">Ürün Fiyat</th>
    <th style="padding-left:200px;">Ürün Kodu</th>
    </tr>
    </table>
    
    
    <asp:Repeater runat="server" ID="tekrar">      
       <ItemTemplate>
        <div class="row" style="border:1px solid #ebebe0; margin-bottom:20px; margin-top:10px;">

            
            <div class="col-md-3">
            <img src="<%#Eval("urun_resim") %>" style="width:200px; height:150px;" class="img img-responsive"/>
           
            </div>

            <div class="col-md-3">
            <h5 style="margin-left:-70px; margin-top:40px; font-size:17px;"><%#Eval("urun_cins") %></h5>
             <h5 style="margin-left:-70px; font-size:17px;"><%#Eval("urun_adi") %></h5>
             <h5 style="margin-left:-70px; font-size:17px;"><%#Eval("urun_yas") %></h5>

            </div>

            <div class="col-md-3" style="margin-left:-200px;">
            <p class="text-center text-danger" style="margin-top:60px;"><%# Eval ("urun_fiyat","{0:C}") %></p>
            </div>

            <div class="col-md-3"></div>
            <p style="margin-top:60px; margin-left:730px;"><%# Eval("urun_kodu") %></p>
            <img src="img/yerliuretim.png" style="float:right; width:95px; height:32px;" class="img img-responsive" />
            <a href="sepetsil.aspx?id=<%# Eval("urun_no") %>" class="btn btn-danger" style="float:right; margin-top:-50px;"><span class="glyphicon glyphicon-remove"></span>Ürünü Sil</a>
        </div>
     
        
        
        </ItemTemplate>
    </asp:Repeater>
    <h4 style="text-align:center; margin-left:-70px; margin-bottom:70px;">
    <asp:Label ID="sonuc" runat="server" Text="" CssClass="text-danger"></asp:Label>
    </h4>
</asp:Content>
