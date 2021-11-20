<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true"
    CodeFile="alterar-senha.aspx.cs" Inherits="paginas_block_alterar_senha" %>

<%@ Register Src="../paginas/control/control-login.ascx" TagName="control" TagPrefix="uc1" %>
<%@ Register Src="../paginas/control/control-usuario-menu.ascx" TagName="control"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <uc2:control ID="control3" runat="server" />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<h1>Alterar senha</h1>
    <center>
        <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F0F4F5" BorderColor="#E6E2D8"
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
            Font-Size="14px" Height="49px" Width="557px" ChangePasswordButtonText="Alterar senha"
            CancelButtonText="Cancelar" CancelDestinationPageUrl="~/paginas_block/menu-cliente.aspx"
            ChangePasswordFailureText="A senha antiga está incorreta ou a nova senha é inválida."
            ChangePasswordTitleText="Alterar a minha senha" ConfirmNewPasswordLabelText="Confirme a nova senha"
            ConfirmPasswordCompareErrorMessage="A confirmação de senha não é igual." ConfirmPasswordRequiredErrorMessage="A nova senha é requerida"
            ContinueButtonText="Continuar" ContinueDestinationPageUrl="~/paginas_block/menu-cliente.aspx"
            NewPasswordLabelText="Nova senha:" NewPasswordRegularExpressionErrorMessage="Por favor digite uma senha diferente"
            NewPasswordRequiredErrorMessage="A nova senha é requerida" PasswordLabelText="Senha antiga:"
            PasswordRequiredErrorMessage="A senha é requerida" SuccessText="Sua senha foi alterada com sucesso."
            SuccessTitleText="Alteração de senha concluida." 
            UserNameLabelText="User name:">
            <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Red" />
            <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#159DCC" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:ChangePassword>
    </center>
</asp:Content>
