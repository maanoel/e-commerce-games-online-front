<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MaterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Cadastrar" %>
<%@ Register src="Control/Control-Login.ascx" tagname="Control" tagprefix="uc1" %>
<%@ Register src="control/control-usuario-menu.ascx" tagname="control" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- AJUSTE DE LAYOUT IE -->
    <style type="text/css">
        .group { zoom: 1 }
    </style>

    <script type="text/javascript">
        $(function () {
            var icons = {
                header: "ui-icon-circle-arrow-e",
                activeHeader: "ui-icon-circle-arrow-s"
            };
            $("#accordion").accordion({
                icons: icons
            });
            $("#toggle").button().click(function () {
                if ($("#accordion").accordion("option", "icons")) {
                    $("#accordion").accordion("option", "icons", null);
                } else {
                    $("#accordion").accordion("option", "icons", icons);
                }
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">   
    <!-- CHAMADA DO CONTROL LOGIN -->
    <uc1:Control ID="Control2" runat="server" />
    <uc2:control ID="controlMenu" runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="center_title_bar">Notícias e Informações</div>

    <div class="prod_box_maior">
        <!-- Accordion -->
	    <div id="accordion">
		    <h3>Novos jogos disponívis</h3>
		    <div><p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</p></div>
		    <h3>Lançamento do novo site</h3>
		    <div>
                <p> Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet. </p>
                <p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</p>
                <p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</p>
            </div>
	    </div>
    </div>   
    	    
   	<div class="center_title_bar">Nosos Jogos</div>
    	<div class="prod_box">
            <div class="center_prod_box">            
				<a href="#"><img src="../Images/Jogos/aion.png" alt="" onmouseover="this.src='../Images/jogos/aion-over.png';" onmouseout="this.src='../Images/jogos/aion.png';" /></a>
            </div>               
        </div>
    	<div class="prod_box">
            <div class="center_prod_box">            
			    <a href="#"><img src="../Images/Jogos/cabal.png" alt=""/></a>	               
            </div>                    
        </div>    
     	<div class="prod_box">
            <div class="center_prod_box">
                <a href="#"><img src="../Images/Jogos/cabal.png" alt=""/></a>   	                             
            </div>                  
        </div>
     	<div class="prod_box">
            <div class="center_prod_box">            
				<a href="#"><img src="../Images/Jogos/aion.png" alt="" /></a>   	 
            </div>                  
        </div>
    	<div class="prod_box">
            <div class="center_prod_box">            
               <a href="#"><img src="../Images/Jogos/cabal.png" alt="" /></a>   	                       
            </div>     
        </div>    
     	<div class="prod_box">
            <div class="center_prod_box">            
              <a href="#"><img src="../Images/Jogos/aion.png" alt="" /></a>  	      
            </div>                   
        </div>

        <center style="clear:both">
            <asp:Literal ID="Literal1" runat="server" text="&lt;iframe src=&quot;//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fpages%2FVendaDeKKs%2F133126156762551%3Fref%3Dhl&amp;amp;width=298&amp;amp;height=258&amp;amp;colorscheme=light&amp;amp;show_faces=true&amp;amp;border_color&amp;amp;stream=false&amp;amp;header=false&quot; scrolling=&quot;no&quot; frameborder=&quot;0&quot; style=&quot;border:none; overflow:hidden; width:292px; height:258px;&quot; allowTransparency=&quot;true&quot;&gt;&lt;/iframe&gt;"></asp:Literal>
        </center>
</asp:Content>