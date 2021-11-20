using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;

public partial class Paginas_Control_Control_Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Se a página esta sendo carregada..
        if (!IsPostBack)
        {
            verificaUsuarioLogado();
        }

    }

    private void verificaUsuarioLogado()
    {
        //Se não houve postBack, verifica se já tem usuário logado
        if (!IsPostBack && HttpContext.Current.User.Identity.Name == "")
        {
            //Se não tiver um usuário logado, mostra o painel de login.
            this.panelLogin.Visible = true;
        }
        else
        {
            //Se não, some com o painel de login...
            this.panelLogin.Visible = false;
        }
    }

    public void mostrarPanel()
    {
        if (HttpContext.Current.User.Identity.Name == "")
        {
            this.panelLogin.Visible = true;
        }
        else
        {
            this.panelLogin.Visible = false;
        }
    }
}