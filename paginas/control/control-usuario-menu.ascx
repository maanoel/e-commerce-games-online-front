<%@ Control Language="C#" AutoEventWireup="true" CodeFile="control-usuario-menu.ascx.cs"
    Inherits="paginas_control_control_usuario_menu" %>
<asp:Panel runat="server" ID="panelUsuarioMenu">
    <div class="title_box">
        Minha Conta</div>
    <ul class="left_menu">
        <li class="even"><a href= "<%:ResolveUrl("../../paginas_block/menu-cliente.aspx")%>">Minha conta</a></li>
        <li class="odd"><a href="#">Meu carrinho</a></li>
        <li class="even"><a href="#">Menus pedidos</a></li>
        <li class="odd"><a href="#">Finalizar pedidos</a></li>
        <li class="even">
            <asp:LoginStatus ID="LoginStatus2" runat="server" LogoutText="Sair" 
                LogoutAction="Redirect" LogoutPageUrl="~/paginas/default.aspx"/>
        </li>
    </ul>
</asp:Panel>
