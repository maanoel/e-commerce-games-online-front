<%@ Control Language="C#" AutoEventWireup="true" CodeFile="control-login.ascx.cs"
    Inherits="Paginas_Control_Control_Login" %>
<asp:Panel ID="panelLogin" runat="server">
    <div class="title_box">
        Entrar</div>
    <asp:Login ID="Login1" runat="server" FailureText="Erro ao tentar se logar" LoginButtonType="Image"
        LoginButtonStyle-CssClass="flutuar_esquerda margem-topo" LoginButtonImageUrl="~/Images/bt_enviar_cima.png"
        LoginButtonText="" PasswordLabelText="Senha:" RememberMeText="Lembrar login e senha"
        RememberMeText-CssClass="flutuar_esquerda" TitleText="" UserNameLabelText="Login:"
        TextLayout="TextOnTop" PasswordRecoveryText="Esqueci minha senha" BorderPadding="0"
        PasswordRecoveryUrl="~/paginas/recuperar-senha.aspx" 
        PasswordRequiredErrorMessage="Senha é requerida" UserNameRequiredErrorMessage="Login é requerido"
        DestinationPageUrl="~/paginas_block/menu-cliente.aspx" 
        CreateUserText="Cadastrar - me" CreateUserUrl="~/paginas_block_cadastrados/cadastrar.aspx">
    </asp:Login>
</asp:Panel>
<script type="text/javascript">
    //Efeito no botão do componente login.
    $(document).ready(function () {
        $("#ContentPlaceHolder2_Control2_Login1_LoginImageButton").mouseover(function () {
            $(this).attr('src', '../Images/bt_enviar_baixo.png');
        });

        $("#ContentPlaceHolder2_Control2_Login1_LoginImageButton").mouseout(function () {
            $(this).attr('src', '../Images/bt_enviar_cima.png');
        });
    });
</script>
