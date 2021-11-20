<%@ Control Language="C#" AutoEventWireup="true" CodeFile="control-menu-horizontal.ascx.cs"
    Inherits="paginas_control_control_menu_horizontal" %>
<div class="horizontal-nav full-width horizontalNav-notprocessed">
    <ul class="menu">
        <li><a href= "<%:ResolveUrl("../default.aspx")%>">Principal</a></li>
        <li><a href="#">Informações</a></li>
        <li><a href="#">Notícias</a></li>
        <li><a href="#">Quem Somos</a></li>
        <li><a href="<%:ResolveUrl("../fale-conosco.aspx")%>">Fale Conosco</a></li>
        <li></li>
    </ul>
</div>
