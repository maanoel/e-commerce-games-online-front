<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true"
    CodeFile="cadastrado-com-sucesso.aspx.cs" Inherits="paginas_block_cadastrado_com_sucesso" %>

<%@ Register src="../paginas/control/control-usuario-menu.ascx" tagname="control" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <uc1:control ID="control2" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="panelBoasVindas" runat="server">
        <h1>
            Seja bem vindo! Sua conta foi criada com sucesso!</h1>
        <p>
            Seja bem vindo. Ficamos felizes por você se juntar a nossa comunidade</p>
        <br />
        <p>
            Caso tenha qualquer dúvida quanto a nossa empresa e sobre nossos serviços entre
            em contato usando o atendimento online ou o fale conosco.</p>
    </asp:Panel>
</asp:Content>
