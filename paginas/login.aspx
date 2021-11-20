<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="paginas_acesso_negado" %>

<%@ Register Src="~/paginas/control/control-login.ascx" TagName="control" TagPrefix="uc1" %>
<%@ Register Src="~/paginas/control/control-usuario-login-novo.ascx" TagName="control"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Scripts/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style4
        {
            background: none repeat scroll 0% 0% rgb(232, 232, 232);
            text-align: center;
            border-bottom: 1px solid rgb(174, 181, 189);
            font-weight: bold;
            width: 403px;
        }
        .style5
        {
            width: 403px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="panelRegistro" runat="server">
        <h1>
            Se registe ou faça o login</h1>
        <asp:Panel ID="panelUsuarioInvalido" class="acesso-negado" runat="server">
            <img src="../Images/erro.png.png" alt="Mensagem de erro" class="flutuar_esquerda" /><h2>
                <span>ERRO: </span>Você não tem permissão pra acessar está página.</h2>
        </asp:Panel>
        <asp:Panel ID="panelCadastroLogin" runat="server">
            <table>
                <tr>
                    <td class="style4">
                        Novo cliente
                    </td>
                    <td class="style4">
                        Cliente cadastrado
                    </td>
                </tr>
                <tr>
                    <td>
                        <center>
                            <p>
                                Caso não possua cadastro em nosso site faça agora mesmo seu cadastro e desfrute
                                dos nossos produtos, promoções e todos benefícios do VendaDeKKs.
                            </p>
                            <br />
                            <b><a href="cadastrar.aspx" style="font-size: 12px;">Me Cadastrar</a></b>
                        </center>
                    </td>
                    <td>
                        <center>
                            <uc2:control ID="control1" runat="server" />
                        </center>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>

    <asp:Panel ID="panelNegarLogados" class="acesso-negado" runat="server">
        <img src="../Images/erro.png.png" alt="Mensagem de erro" class="flutuar_esquerda" /><h2>
            <span>ERRO: </span>Você já se encontra logado no sistema.</h2>
    </asp:Panel>
</asp:Content>
