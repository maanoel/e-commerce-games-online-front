    <%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true" CodeFile="fale-conosco.aspx.cs" Inherits="paginas_fale_conosco" %>

<%@ Register src="Control/Control-Login.ascx" tagname="Control" tagprefix="uc1" %>

<%@ Register src="control/control-usuario-menu.ascx" tagname="control" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc2:control ID="control1" runat="server" />
    <uc1:Control ID="controlLogin" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:Panel ID="panelContato" runat="server">
      <asp:ImageButton ID="btEnviar" runat="server" ImageUrl="~/Images/bt_enviar_cima.png" onmouseout="this.src='../Images/bt_enviar_cima.png';" onmouseover="this.src='../Images/bt_enviar_baixo.png';"/>
  </asp:Panel>
</asp:Content>

