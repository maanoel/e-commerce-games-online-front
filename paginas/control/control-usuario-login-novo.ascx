<%@ Control Language="C#" AutoEventWireup="true" CodeFile="control-login.ascx.cs"
    Inherits="Paginas_Control_Control_Login" %>
<asp:Panel ID="panelLogin" runat="server">
    <asp:Login ID="Login1" runat="server" FailureText="Login ou senha incorretos" LoginButtonType="Image"
        LoginButtonStyle-CssClass="flutuar_esquerda margem-topo" LoginButtonImageUrl="~/Images/bt_enviar_cima.png"
        LoginButtonText="" PasswordLabelText="Senha:" RememberMeText="Lembrar login e senha"
        RememberMeText-CssClass="flutuar_esquerda" TitleText="" UserNameLabelText="Login:"
        TextLayout="TextOnTop" PasswordRecoveryText="Recuperar senha" 
        PasswordRecoveryUrl="~/paginas/recuperar-senha.aspx" 
        PasswordRequiredErrorMessage="Senha é requerida" UserNameRequiredErrorMessage="Login é requerido"
        DestinationPageUrl="~/paginas/block/menu-cliente.aspx">
    </asp:Login>
</asp:Panel>
<script type="text/javascript">
    //Efeito no botão do componente login.
    $(document).ready(function () {
        $("#ContentPlaceHolder1_control1_Login1_LoginImageButton").mouseover(function () {
            $(this).attr('src', '../Images/bt_enviar_baixo.png');
        });

        $("#ContentPlaceHolder1_control1_Login1_LoginImageButton").mouseout(function () {
            $(this).attr('src', '../Images/bt_enviar_cima.png');
        });
    });
</script>
