<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true"
    CodeFile="cadastrar.aspx.cs" Inherits="Paginas_Cadastrar2" %>

<%@ Register Src="~/paginas/control/Control-Login.ascx" TagName="Control" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="<%:ResolveUrl("../Scripts/jsValidacoes/validar-campos.js")%>" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="panelGeralCadastro" runat="server">
        <h1>
            Novo Cadastro</h1>
        <center>
            <asp:Panel ID="panelAviso" runat="server">
                <p>
                    Utilize informações verdadeiras na hora do seu cadastro para que possamos ter agilidade
                    em nossos serviços e que você poassa participar de nossas promoções.</p>
                <br />
                <p>
                    Para proseguir com seu cadastro preencha os campos abaixo, o campo telefone não
                    é obrigatório, todos os outros campos são obrigatórios.</p>
            </asp:Panel>
        </center>
        <center>
            <asp:Panel ID="panelUsuarioInvalido" runat="server" Style="width: 495px; height: 40px;
                margin-top: 10px;" Visible="False" BackColor="Tomato">
                <img src="../Images/erro.png.png" alt="Mensagem de erro" class="flutuar_esquerda" />
                <h2 class="flutuar_esquerda">
                    <span>ERRO: </span>
                    <%=mensagemErro%></h2>
            </asp:Panel>
        </center>
        <h2>
            Informações de Login
        </h2>
        <asp:Panel ID="panelInformacoesLogin" runat="server">
            <table style="width: 100%;" class="borda-table">
                <tr>
                    <td class="style1 td-borda" id="td-dados-cliente">
                        <label>
                            Login</label>
                    </td>
                    <td class="style3 td-borda">
                        <asp:TextBox ID="tbLogin" runat="server" class="bt-botao-asp text-box-padrao" MaxLength="15"></asp:TextBox>
                    </td>
                    <td class="td-borda">
                        <asp:RequiredFieldValidator ID="validatorLogin" runat="server" ControlToValidate="tbLogin"
                            ErrorMessage="O login é obrigatório.&lt;br/&gt;" Font-Size="8pt" ForeColor="Red">*</asp:RequiredFieldValidator>
                        &nbsp;<asp:CustomValidator ID="customValidatorLogin" runat="server" ControlToValidate="tbLogin"
                            Font-Size="8pt" ForeColor="Red" OnServerValidate="customValidatorLogin_ServerValidate">Mínimo 4 caracteres.</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1 td-borda">
                        <label>
                            Senha</label>
                    </td>
                    <td class="style3 td-borda">
                        <asp:TextBox ID="tbSenha" runat="server" class="bt-botao-asp text-box-padrao" type="password" MaxLength="8"></asp:TextBox>
                    </td>
                    <td class="td-borda">
                        <asp:RequiredFieldValidator ID="validatorSenha" runat="server" ControlToValidate="tbSenha"
                            ErrorMessage="A senha é obrigatória.&lt;br/&gt;" Font-Size="8pt" ForeColor="Red">*</asp:RequiredFieldValidator>
                        &nbsp;<asp:CustomValidator ID="customValidatorSenha" runat="server" ControlToValidate="tbSenha"
                            Font-Size="8pt" ForeColor="Red" OnServerValidate="customValidatorSenha_ServerValidate">Mínimo 4 carateres.</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1 td-borda">
                        <label>
                            Confirmar Senha</label>
                    </td>
                    <td class="style3 td-borda">
                        <asp:TextBox ID="tbConfirmarSenha" runat="server" class="bt-botao-asp text-box-padrao" type="password"
                            MaxLength="8"></asp:TextBox>
                    </td>
                    <td class="td-borda">
                        <asp:RequiredFieldValidator ID="validatorConfirmarSenha" runat="server" ControlToValidate="tbConfirmarSenha"
                            ErrorMessage="É necessário confirmar a senha.&lt;br/&gt;" Font-Size="8pt" ForeColor="Red">*</asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="validatorCompraSenha" runat="server" ControlToCompare="tbSenha"
                            ControlToValidate="tbConfirmarSenha" Font-Size="8pt" ForeColor="Red">Confirmação inválida.</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1 td-borda">
                        <label>
                            Email</label>
                    </td>
                    <td class="style3 td-borda">
                        <asp:TextBox ID="tbEmail" runat="server" class="bt-botao-asp text-box-padrao" MaxLength="100"></asp:TextBox>
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
                        <asp:TextBox ID="tbEmailConfirma" runat="server" class="bt-botao-asp text-box-padrao" MaxLength="100"></asp:TextBox>
                    </td>
                    <td class="td-borda">
                        <asp:RequiredFieldValidator ID="validatorCofirmaEmail" runat="server" ControlToValidate="tbEmailConfirma"
                            ErrorMessage="É necessário confirmar o email.&lt;br/&gt;" Font-Size="8pt" ForeColor="Red">*</asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="validatorCompareEmail" runat="server" ControlToCompare="tbEmail"
                            ControlToValidate="tbEmailConfirma" Font-Size="8pt" ForeColor="Red">Confirmação invalida.</asp:CompareValidator>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <h2>
            Informações Pessoais</h2>
        <asp:Panel ID="panelInformacoesPessoais" runat="server">
            <table style="width: 100%;" class="borda-table">
                <tr>
                    <td class="style1 td-borda">
                        <label>
                            Nome</label>
                    </td>
                    <td class="style3 td-borda">
                        <asp:TextBox ID="tbNome" runat="server" class="bt-botao-asp text-box-padrao" MaxLength="255"></asp:TextBox><br />
                    </td>
                    <td class="td-borda">
                        <asp:RequiredFieldValidator ID="validatorNome" runat="server" ControlToValidate="tbNome"
                            ErrorMessage="O nome é obrigatório.&lt;br/&gt;" Font-Size="8pt" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1 td-borda">
                        <label>
                            Data de Nascimento</label>
                    </td>
                    <td class="style3 td-borda">
                        <asp:TextBox ID="tbDtNascimento" runat="server" class="bt-botao-asp text-box-padrao" MaxLength="10"></asp:TextBox>
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
                        <asp:TextBox ID="tbTelefone" runat="server" class="bt-botao-asp text-box-padrao" MaxLength="13"></asp:TextBox><br />
                    </td>
                    <td class="td-borda">
                        <asp:RegularExpressionValidator ID="regularValidatorTelefone" runat="server" ControlToValidate="tbTelefone"
                            Font-Size="8pt" ForeColor="Red" ValidationExpression="[0-9]{2}-[0-9]{3,4}-[0-9]{4,5}">Utilize o formato [xx] [xxxx xxxx]</asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <hr />
        <center class="margem-topo">
            <asp:ImageButton ID="btSalvar" runat="server" OnClick="btCadastrar_Click" alt=""
                ImageUrl="~/Images/bt_enviar_cima.png" onmouseout="this.src='../Images/bt_enviar_cima.png';"
                onmouseover="this.src='../Images/bt_enviar_baixo.png';" />
        </center>
        <hr />
        <asp:ValidationSummary ID="validatorGeral" runat="server" DisplayMode="SingleParagraph"
            Font-Size="7pt" ForeColor="Red" />
        <!-- JavaScript que altera a cor de fundo dos campos, caso não sejam validados-->
        <script src="../Scripts/AlterarCorCampoInvalido.js" type="text/javascript"></script>
    </asp:Panel>
    <asp:Label ID="lbCadastradoComSucesso" runat="server" Text="" Style="float: left;
        margin-left: 8px;"></asp:Label>
</asp:Content>
