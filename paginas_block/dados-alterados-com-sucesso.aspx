<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true"
    CodeFile="dados-alterados-com-sucesso.aspx.cs" Inherits="paginas_block_dados_alterados_com_sucesso" %>

<%@ Register Src="../paginas/control/control-login.ascx" TagName="control" TagPrefix="uc1" %>
<%@ Register Src="../paginas/control/control-usuario-menu.ascx" TagName="control"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <uc2:control ID="control3" runat="server" />
    <uc1:control ID="control2" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="panelAviso" runat="server">
        <span style="color:red;"><%=Membership.GetUser().UserName%></span> seus dados foram alterados com sucesso.
    </asp:Panel>
</asp:Content>
