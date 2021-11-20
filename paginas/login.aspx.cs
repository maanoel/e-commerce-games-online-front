using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_acesso_negado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(User.Identity.Name))
        {
            this.panelNegarLogados.Visible = true;
            this.panelRegistro.Visible = false;
        }
        else 
        {
            this.panelNegarLogados.Visible = false;
        }
    }
}