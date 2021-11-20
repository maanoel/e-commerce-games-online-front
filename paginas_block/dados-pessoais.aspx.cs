using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using DTO;
using BLL;
using DAO;

public partial class paginas_block_dados_pessoais : System.Web.UI.Page
{
    public String usurioLogado;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.tbEmail.Text = Membership.GetUser().Email;
            this.tbConfirmarEmail.Text = Membership.GetUser().Email;
            this.tbUltimoAcesso.Text = Convert.ToString(Membership.GetUser().LastLoginDate);
            buscarDadosClientes();
        }
    }

    protected void btCadastrar_Click(object sender, ImageClickEventArgs e)
    {
        if (IsValid)
        {
            try
            {
                alterarDadosCliente();
                Response.Redirect(ResolveUrl("../paginas_block/dados-alterados-com-sucesso.aspx"));
            }
            catch (Exception)
            {
                this.panelUsuarioInvalido.Visible = true;
            }
        }
    }

    private void buscarDadosClientes()
    {
        ClienteBLL clienteBLL = new ClienteBLL();
        ClienteDTO clienteDTO = null;
        try
        {
            clienteDTO = clienteBLL.buscarCliente(Convert.ToInt32(Membership.GetUser().ProviderUserKey));
            this.tbNome.Text = clienteDTO.Nome;
            this.tbDtNascimento.Text = Convert.ToString(clienteDTO.DataNascimento.ToShortDateString());
            this.tbTelefone.Text = clienteDTO.Telefone;
            usurioLogado = clienteDTO.Nome;

        }
        catch (Exception)
        {
            this.panelUsuarioInvalido.Visible = true;
        }
    }

    private void alterarDadosCliente()
    {
        ClienteBLL clienteBLL = new ClienteBLL();
        ClienteDTO clienteDTO = new ClienteDTO()
        {
            DataNascimento = Convert.ToDateTime(this.tbDtNascimento.Text),
            Nome = this.tbNome.Text.Trim(),
            Telefone = this.tbTelefone.Text.Trim(),
            UserId = Convert.ToInt32(Membership.GetUser().ProviderUserKey)
        };

        try
        {
            clienteBLL.alterarCliente(clienteDTO);
            MembershipUser usuario = Membership.GetUser(Membership.GetUser().ProviderUserKey);
            usuario.Email = this.tbEmail.Text.Trim();
            Membership.UpdateUser(usuario);
        }
        catch (Exception)
        {
            this.panelUsuarioInvalido.Visible = true;
        }
    }
}