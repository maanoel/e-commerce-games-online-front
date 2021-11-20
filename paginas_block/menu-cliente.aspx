<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true"
    CodeFile="menu-cliente.aspx.cs" Inherits="paginas_menu_cliente" %>

<%@ Register Src="../paginas/control/control-usuario-menu.ascx" TagName="control"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <uc1:control ID="control1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 style="margin-bottom: 20px;">
        Dados da minha conta</h1>
    <ul>
        <li class="center_prod_box">
            <a href="alterar-senha.aspx">
                <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                <br /><label>Alterar senha</label>
            </a>
        </li>
        <li class="center_prod_box">
            <a href="dados-pessoais.aspx" title="Aqui vai a descrição">
                <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                <br /><label> Dados pessoais</label>
            </a>
        </li>
       <li class="center_prod_box">
            <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                <br /><label>Meus pedidos</label>
            </a>
        </li>
    </ul>
</asp:Content>
