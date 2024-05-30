<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="onerilersayfa.aspx.cs" Inherits="tarzbebe.onerilersayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <table class="table table-bordered table-condensed table-hover">

    <tr style="margin-left:20px; margin-right:20px; font-size:14px;">
  

    <th>Adı</th>
    <th>Soyadı</th>
    <th>Mesaj</th>
    
   
    </tr>

        <asp:Repeater runat="server" ID="tekrar">
            <ItemTemplate>
            <tr>
            
          
           <td><%# Eval("ad") %></td>
            <td><%# Eval("soyad") %></td>
            <td><%# Eval("mesaj")%></td>

            </tr>


            
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div id="yon" runat="server"></div>
    </div>
</asp:Content>
