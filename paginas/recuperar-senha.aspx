<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true" CodeFile="recuperar-senha.aspx.cs" Inherits="paginas_block_cadastrados_recuperar_senha" %>

<%@ Register src="control/control-login.ascx" tagname="control" tagprefix="uc1" %><%@ Register src="control/control-usuario-menu.ascx" tagname="control" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc2:control ID="control3" runat="server" />
    <uc1:control ID="control2" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F0F4F5" 
        BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="14px" 
        GeneralFailureText="A recuperação de senha falhou, tente novamente." 
        SubmitButtonText="Enviar" Width="567px" 
        UserNameInstructionText="Digite o seu login para receber uma nova senha" 
        UserNameTitleText="Recuperar minha senha" 
        SuccessText="Uma nova senha foi enviada para o seu email" 
        UserNameFailureText="Não foi possível acessar suas informações. Por favor, tente novamente." 
        UserNameLabelText="Login do usuário:" 
        UserNameRequiredErrorMessage="O login é requerido.">
        <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <InstructionTextStyle Font-Italic="False" ForeColor="Black" BorderStyle="None" 
            Font-Bold="True" />
        <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#159DCC" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:PasswordRecovery>
</asp:Content>

