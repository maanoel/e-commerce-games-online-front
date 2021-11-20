using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_control_control_usuario_menu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Se a página esta sendo carregada..
        if (!IsPostBack)
        {
            verificarUsuarioLogado();
        }
        //Se o usuário clicou em um botão
        else
        {
            verificaUsuarioDeslogado();
        }
    }

    protected void lbSair_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }

    private void verificarUsuarioLogado()
    {
        //Se não houve postBack, verifica se já tem usuário logado
        if (!IsPostBack && HttpContext.Current.User.Identity.Name == "")
        {
            //Se não tiver um usuário logado, NÃO mostra o painel de login.
            this.panelUsuarioMenu.Visible = false;
        }
        else
        {
            //Se não, exibe o panel menu de usuário...
            this.panelUsuarioMenu.Visible = true;
        }
    }

    private void verificaUsuarioDeslogado()
    {
        if (HttpContext.Current.User.Identity.Name == "")
        {
            this.panelUsuarioMenu.Visible = false;
        }
        else
        {
            this.panelUsuarioMenu.Visible = true;
        }
    }
}