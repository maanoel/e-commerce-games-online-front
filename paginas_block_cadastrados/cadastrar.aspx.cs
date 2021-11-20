using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;
using System.Web.Security;
using DAO;

public partial class Paginas_Cadastrar2 : System.Web.UI.Page
{
    private int userId;
    private String login, senha, email, telefone, nome;
    private DateTime dataNascimento;
    public String mensagemErro; //Variavel que é chamada no asp para exibir a mensagem de erro.

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.panelUsuarioInvalido.Visible = false;
        }
    }

    protected void customValidatorLogin_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Verifica se o usuário digitou menos que 4 digitos.
        if (args.Value.Length < 4)
        {
            args.IsValid = false;
        }
    }

    protected void customValidatorSenha_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Verifica se o usuário digitou menos que 4 digitos.
        if (args.Value.Length < 4)
        {
            args.IsValid = false;
        }
    }

    protected void btCadastrar_Click(object sender, EventArgs e)
    {
        this.login = this.tbLogin.Text.Trim();
        this.senha = this.tbSenha.Text.Trim();
        this.email = this.tbEmail.Text.Trim();
        this.nome = this.tbNome.Text.Trim();
        this.telefone = this.tbTelefone.Text.Trim();

        //Tratamento de exeção para datas invalidas.
        try
        {
            this.dataNascimento = Convert.ToDateTime(this.tbDtNascimento.Text);
        }
        catch
        {
            this.validatorDataNascimento.IsValid = false;
            return;
        }

        //Faz algo se tudo foi valido
        if (IsValid)
        {
            //Cria o novo usário.
            novoUsuario();
        }
    }

    private void novoUsuario()
    {
        try
        {
            //Criando novo usuário utlizando membership.
            MembershipCreateStatus status;
            MembershipUser novoUsuario = Membership.CreateUser(login, senha, email, null, null, true, out status);

            //Se não conseguiu criar um novo usuário..
            if (novoUsuario == null)
            {
                //Retorna a mensagem de erro na criação  do novo usuário.
                limparCampos();
                this.panelUsuarioInvalido.Visible = true;
                this.mensagemErro = this.mensagemDeErro(status);
                return;
            }
            else
            {
                //Se consegui criar um novo usuário.
                if (Membership.ValidateUser(login, senha))
                {
                    //Inseri os dados na tabela cliente.
                    userId = Convert.ToInt32(novoUsuario.ProviderUserKey);
                    inserirDadosTabelaCliente();
                    FormsAuthentication.RedirectFromLoginPage(novoUsuario.UserName, true);
                     Response.Redirect("../paginas_block/cadastrado-com-sucesso.aspx");
                }
                else
                {
                    limparCampos();
                    this.panelUsuarioInvalido.Visible = true;
                    this.mensagemErro = "Um erro inesperado aconteceu. Tente novamente";
                    return;
                }
            }
        }
        catch (BancoDeDadosException)
        {
            Membership.DeleteUser(login);
            this.panelUsuarioInvalido.Visible = true;
            limparCampos();
            this.mensagemErro = "Um erro inesperado aconteceu. Tente novamente";
            return;
        }
        catch (MembershipCreateUserException)
        {
            this.panelUsuarioInvalido.Visible = true;
            limparCampos();
            this.mensagemErro = "O usuário não pode ser criado. Tente novamente.";
        }
        catch (MembershipPasswordException)
        {
            this.panelUsuarioInvalido.Visible = true;
            limparCampos();
            this.mensagemErro = "O usuário não pode ser criado. Tente novamente.";
        }
    }

    private String mensagemDeErro(MembershipCreateStatus status)
    {
        switch (status)
        {
            case MembershipCreateStatus.DuplicateUserName:
                return "Este login já está em uso. Escolha outro login";
            case MembershipCreateStatus.InvalidPassword:
                return "Escolha um senha válida.";
            case MembershipCreateStatus.InvalidEmail:
                return "Escolha um email válido.";
            case MembershipCreateStatus.InvalidUserName:
                return "O usuário é inválido, escolha outro usuário.";
            case MembershipCreateStatus.ProviderError:
                return "O servidor retornou um erro. Teste novamente.";
            case MembershipCreateStatus.UserRejected:
                return "A criação do usuário foi cancelada. Tente novamente.";
            default:
                return "Um erro desconhecido ocorreu, tente novamente ou contacte o administrador.";
        }
    }

    private Boolean inserirDadosTabelaCliente()
    {
        ClienteDTO clienteDTO = new ClienteDTO
        {
            DataNascimento = this.dataNascimento,
            Nome = this.nome,
            Telefone = this.telefone,
            UserId = this.userId
        };

        ClienteBLL clienteBLL= new ClienteBLL();
        clienteBLL.inserirCliente(clienteDTO);

        return false;
    }

    private void limparCampos()
    {
        this.tbSenha.Text = "";
        this.tbConfirmarSenha.Text = "";
    }
}