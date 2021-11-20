<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true"
    CodeFile="ragnarok-online.aspx.cs" Inherits="paginas_Jogos_ragnarok_online" %>

<%@ Register Src="control/control-login.ascx" TagName="control" TagPrefix="uc1" %>
<%@ Register Src="control/control-usuario-menu.ascx" TagName="control" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="<%:ResolveUrl("../Scripts/jsValidacoes/validar-campos.js")%>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>
        Ragnarok Online</h1>
    <center>
        <img src="../Images/Jogos/ragnarok-venda.PNG" alt="Ragnarok Online, thor, asgard,odin" />
        <asp:Panel ID="panelAviso" runat="server">
            Um dos games online de maior sucesso nos últimos tempos, Ragnarök Online. Agora
            você pode comprar suas moedas e detornas dentro do universo de Ragnarök.<br />
            Para comprar zenys é muito fácil, escolha seu servidor, a quantidade de zenys desejada
            e clique em enviar.
            <br />
            <br />
            <span style="color: red">Os Zenys são entregues por trade dentro do jogo. A entrega
                geralmente é imediata, mas o prazo máximo dos zenys é de até 2 dias. Para saber
                sobre o nosso estoque atual, consulte o atendimento online. </span>
        </asp:Panel>
        <br />
        <asp:Panel ID="painelMensagemAviso" runat="server" Visible="false">
            <img src="../Images/erro.png.png" alt="Mensagem de erro" class="flutuar_esquerda" />
            <h2 class="flutuar_esquerda">
                <span>ERRO: </span>
                <%=mensagemAviso%></h2>
        </asp:Panel>
        <asp:Panel ID="painelValoresEntrada" runat="server">
            <table>
                <tr>
                    <td>
                        <label>
                            <b>Servidor Ragnarok:</b>
                        </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlServidores" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="SER_NOME" DataValueField="SER_ID_SERVIDOR">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vendadekks_testeConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:vendadekks_testeConnectionString.ProviderName %>"
                            SelectCommand="SELECT SER_NOME,SER_ID_SERVIDOR FROM SERVIDOR WHERE JOGO_JOG_ID = 1 ORDER BY SER_NOME">
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <label class="margin-bottom-vinte">
                            &nbsp;<b>Quantidade:</b>
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbQuantidade" runat="server" MaxLength="4"></asp:TextBox>
                    </td>
                    <td>
                        <asp:ImageButton ID="btCadastrar" runat="server" alt="" ImageUrl="~/Images/bt_enviar_cima.png"
                            onmouseout="this.src='../Images/bt_enviar_cima.png';" onmouseover="this.src='../Images/bt_enviar_baixo.png';"
                            OnClick="btCadastrar_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="painelValoresSaida" runat="server" Visible="false">
            <table>
                <tr class="estilo-detalhes-compra">
                    <td>
                        <center>
                            <b>Servidor</b>
                        </center>
                    </td>
                    <td>
                        <center>
                            <b>Quantidade</b>
                        </center>
                    </td>
                    <td>
                        <center>
                            <b>Preço</b>
                        </center>
                    </td>
                    <td>
                        <center>
                            <b>Adicionar ao carrinho</b>
                        </center>
                    </td>
                </tr>
                <tr>
                    <td>
                        <center>
                            <asp:Label ID="lbServidor" runat="server" Text=""></asp:Label>
                        </center>
                    </td>
                    <td>
                        <center>
                            <asp:Label ID="lbQuantidade" runat="server" Text=""></asp:Label>
                        </center>
                    </td>
                    <td>
                        <center>
                            <asp:Label ID="lbPreco" runat="server" Text=""></asp:Label>
                        </center>
                    </td>
                    <td>
                        <center>
                            <asp:ImageButton ID="ibComprar" runat="server" alt="" ImageUrl="~/Images/bt-comprar.png" />
                        </center>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <div style="margin-bottom: 50px;">
        </div>
    </center>
</asp:Content>
