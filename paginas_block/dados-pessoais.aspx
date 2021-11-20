<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true"
    CodeFile="dados-pessoais.aspx.cs" Inherits="paginas_block_dados_pessoais" %>

<%@ Register Src="../paginas/control/control-usuario-menu.ascx" TagName="control"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="<%:ResolveUrl("../Scripts/jsValidacoes/validar-campos.js")%>" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <uc1:control ID="control2" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>
        Dados pessoais</h1>
    <center>
        <asp:Panel ID="panelAviso" runat="server">
            <p>
                <span style="color: Red;">
                    <%=usurioLogado %></span> Utilize informações verdadeiras em seu cadastro para
                que possamos ter agilidade em nossos serviços e que você possa participar de nossas
                promoções.</p>
            <br />
            <p>
                r Caso deseje alterar algum dos dados, insira a nova informação e clique no botão
                enviar.</p>
        </asp:Panel>
    </center>
    <br />
    <center>
        <asp:Panel ID="panelUsuarioInvalido" runat="server" Style="width: 495px; height: 40px;
            margin-top: 10px; margin-bottom: 10px;" Visible="False" BackColor="Tomato">
            <img src="../Images/erro.png.png" alt="Mensagem de erro" class="flutuar_esquerda" />
            <h2 class="flutuar_esquerda">
                <span>ERRO: </span>Ocorreu um erro. Tente novamente</h2>
        </asp:Panel>
    </center>
    <table style="width: 100%;" class="borda-table">
        <tr>
            <td class="style1 td-borda">
                <label>
                    Email</label>
            </td>
            <td class="style3 td-borda">
                <asp:TextBox ID="tbEmail" runat="server" class="text-box-padrao" MaxLength="100"></asp:TextBox><br />
            </td>
            <td class="td-borda">
                <asp:RequiredFieldValidator ID="validatorEmail" runat="server" ControlToValidate="tbEmail"
                    ErrorMessage="O email é obrigatório.&lt;br/&gt;" Font-Size="8pt" ForeColor="Red">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="regularValidatorEmail" runat="server" ControlToValidate="tbEmail"
                    Font-Size="8pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email inexistente.</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1 td-borda">
                <label>
                    Confirmar Email</label>
            </td>
            <td class="style3 td-borda">
                <asp:TextBox ID="tbConfirmarEmail" runat="server" class="text-box-padrao" MaxLength="100"></asp:TextBox><br />
            </td>
            <td class="td-borda">
                <asp:RequiredFieldValidator ID="validatorCofirmaEmail" runat="server" ControlToValidate="tbConfirmarEmail"
                    ErrorMessage="É necessário confirmar o email.&lt;br/&gt;" Font-Size="8pt" ForeColor="Red">*</asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="validatorCompareEmail" runat="server" ControlToCompare="tbEmail"
                    ControlToValidate="tbConfirmarEmail" Font-Size="8pt" ForeColor="Red">Confirmação invalida.</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style1 td-borda">
                <label>
                    Nome</label>
            </td>
            <td class="style3 td-borda">
                <asp:TextBox ID="tbNome" runat="server" class="text-box-padrao" MaxLength="255"></asp:TextBox><br />
            </td>
            <td class="td-borda">
                <asp:RequiredFieldValidator ID="validatorNome" runat="server" ControlToValidate="tbNome"
                    ErrorMessage="O nome é obrigatório.&lt;br/&gt;" Font-Size="8pt" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1 td-borda">
                <label>
                    Data de nascimento</label>
            </td>
            <td class="style3 td-borda">
                <asp:TextBox ID="tbDtNascimento" runat="server" class="text-box-padrao" MaxLength="10"></asp:TextBox><br />
            </td>
            <td class="td-borda">
                <asp:RequiredFieldValidator ID="validatorDataNascimento" runat="server" ControlToValidate="tbDtNascimento"
                    ErrorMessage="A  data de nascimento é obrigatória.&lt;br/&gt;" Font-Size="8pt"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="tbDtNascimento" Font-Size="8pt" ForeColor="Red" ValidationExpression="(((0[1-9]|[12][0-9]|3[01])([/])(0[13578]|10|12)([/])(\d{4}))|(([0][1-9]|[12][0-9]|30)([/])(0[469]|11)([/])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([/])(02)([/])(\d{4}))|((29)(\.|-|\/)(02)([/])([02468][048]00))|((29)([/])(02)([/])([13579][26]00))|((29)([/])(02)([/])([0-9][0-9][0][48]))|((29)([/])(02)([/])([0-9][0-9][2468][048]))|((29)([/])(02)([/])([0-9][0-9][13579][26])))">Utilize o formato dd/mm/yyyy</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1 td-borda">
                <label>
                    Telefone</label>
            </td>
            <td class="style3 td-borda">
                <asp:TextBox ID="tbTelefone" runat="server" class="text-box-padrao" MaxLength="13"></asp:TextBox><br />
            </td>
            <td class="td-borda">
                <asp:RegularExpressionValidator ID="regularValidatorTelefone" runat="server" ControlToValidate="tbTelefone"
                    Font-Size="8pt" ForeColor="Red" ValidationExpression="[0-9]{2}-[0-9]{3,4}-[0-9]{4,5}">Utilize o formato [xx] [xxxx xxxx]</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1 td-borda">
                <label>
                    Ultimo acesso em</label>
            </td>
            <td class="style3 td-borda">
                <asp:TextBox ID="tbUltimoAcesso" runat="server" Enabled="False" Style="width: 140px;"></asp:TextBox><br />
            </td>
            <td class="td-borda">
            </td>
        </tr>
    </table>
    <hr />
    <center class="margem-topo">
        <asp:ImageButton ID="btSalvar" runat="server" alt="" ImageUrl="~/Images/bt_enviar_cima.png"
            onmouseout="this.src='../Images/bt_enviar_cima.png';" onmouseover="this.src='../Images/bt_enviar_baixo.png';"
            OnClick="btCadastrar_Click" />
    </center>
    <hr />
    <asp:ValidationSummary ID="validatorGeral" runat="server" DisplayMode="SingleParagraph"
        Font-Size="7pt" ForeColor="Red" />
    <!-- JavaScript que altera a cor de fundo dos campos, caso não sejam validados-->
    <script src="../Scripts/AlterarCorCampoInvalido.js" type="text/javascript"></script>
</asp:Content>
