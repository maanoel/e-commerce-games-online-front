<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true" CodeFile="contas-ragnarok.aspx.cs" Inherits="Paginas_Contas_Ragnarok" %>

<%@ Register src="Control/Control-Login.ascx" tagname="Control" tagprefix="uc1" %>

<%@ Register src="control/control-usuario-menu.ascx" tagname="control" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- INICIO LIGHT BOX-->
    <script  type="text/javascript" src="<%:ResolveUrl("../Scripts/lightBox/js/jquery.lightbox-0.5.pack.js")%>"></script>
    <script type="text/javascript" src="<%:ResolveUrl("../Scripts/lightBox/js/jquery.lightbox-0.5.js")%>"></script>
    <link  type="text/css" rel="stylesheet" href="<%:ResolveUrl("../Scripts/lightBox/css/jquery.lightbox-0.5.css")%>"/>
    <script type="text/javascript">
        $(function () {
            $('#gallery a').lightBox();
        });
    </script>
    <!-- FIM LIGHT BOX-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:Control ID="Control2" runat="server" />
    <uc2:control ID="control1" runat="server" />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="gallery">
        <h1 style="margin-bottom:20px;">Contas Servidor Thor</h1>
        <ul>
            <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
                <p>Padino 99/50</p>
            </li>

             <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
               <p>Mercenario 99/50</p>
            </li>

             <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
                <p>Cavaleiro Runico 120/30</p>
            </li>

             <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
                Botão adicionar
            </li>

             <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
                Botão adicionar
            </li>

             <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
                Botão adicionar
            </li>
        </ul>
                         
        <h1>Contas Servidor Asgard</h1>
            <ul>
            <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
                <p>Padino 99/50</p>
            </li>

             <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
               <p>Mercenario 99/50</p>
            </li>

             <li class="center_prod_box">
                <a href="../Images/teste/image1.jpg" title="Aqui vai a descrição">
                    <img src="../Images/teste/thumb_image1.jpg" width="72" height="72" alt="" />
                </a>
                <br />
                <p>Cavaleiro Runico 120/30</p>
            </li>
        </ul>
    </div>
</asp:Content>



