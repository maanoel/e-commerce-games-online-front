using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class paginas_Jogos_ragnarok_online : System.Web.UI.Page
{
    private String servidor = null;
    private int quantidade = 0;
    private decimal valorCompra = 0;
    private VendaRagarok venda;
    public String mensagemAviso;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.venda = new VendaRagarok();
    }
    protected void btCadastrar_Click(object sender, ImageClickEventArgs e)
    {
        String quantidadeEmTexto = this.tbQuantidade.Text.Trim();
        this.servidor = this.ddlServidores.SelectedItem.ToString();

        if (!validarTextoNumerico(quantidadeEmTexto, ref this.quantidade) || !checarStringNula(quantidadeEmTexto) || !checarValorMinimo() || !checarValorMaximo())
        {
            return;
        }

        valorTotalCompra();
        definirValoresSaida();
    }

    /// <summary>
    /// Verifica qual é a quantidade máxima a ser comprada
    /// para determinado servidor.
    /// </summary>
    /// <returns>bool valorChecado</returns>
    private bool checarValorMaximo()
    {
        bool validar = venda.checarValorMaximo(this.servidor, this.quantidade);
        if (validar)
        {
            return true;
        }
        else
        {
            exibirMensagemDeErroValorMaximo(this.servidor);
            return false;
        }
    }
    
    /// <summary>
    /// Exibe uma mensagem de erro informando qual a quantidade máxima para se comprada.
    /// </summary>
    /// <param name="servidor"></param>
    private void exibirMensagemDeErroValorMaximo(String servidor)
    {
        if (servidor.Equals("Asgard"))
        {
            exibirMensagemDeErro("Valor máximo de compra para este servidor é de 300kks");
        }else if(servidor.Equals("Thor") || servidor.Equals("Odin")){
            exibirMensagemDeErro("Valor máximo de compra para este servidor é de 4000kks");
        }
    }

    /// <summary>
    /// Exibe uma mensagem erro no cliente
    /// </summary>
    /// <param name="menssagem"></param>
    private void exibirMensagemDeErro(String menssagem)
    {
        this.painelMensagemAviso.Visible = true;
        this.painelValoresSaida.Visible = false;
        this.mensagemAviso = menssagem;
    }

    /// <summary>
    /// Verifica se derminado texto está em um valor numérico. 
    /// Caso esteja ok, insere o valor númerico na variavel passada por referência
    /// </summary>
    /// <param name="texto"></param>
    /// <param name="quantidade"></param>
    /// <returns></returns>
    private bool validarTextoNumerico(String texto, ref int quantidade)
    {
        if (!String.IsNullOrEmpty(texto))
        {
            try
            {
               quantidade = Convert.ToInt32(texto);
            }
            catch (FormatException)
            {
                this.exibirMensagemDeErro("Digite apenas números.");
                return false;
            }
        }
        return true;
    }

    /// <summary>
    /// Define os valores final do calculo que serão exibidos no cliente.
    /// </summary>
    private void definirValoresSaida()
    {
        this.lbQuantidade.Text = quantidade + " <b>kk</b>";
        this.lbServidor.Text = servidor;
        this.lbPreco.Text = String.Format("{0:C}", this.valorCompra);
        this.painelValoresSaida.Visible = true;
        this.painelMensagemAviso.Visible = false;
    }

    /// <summary>
    /// Calcula o valor total da compra a depender do servidor escolhido.
    /// </summary>
    private void valorTotalCompra()
    {
        if (this.servidor.Equals("Asgard"))
        {
            this.valorCompra = this.venda.calcularPrecoAsgard(this.quantidade);
        }
        else if (this.servidor.Equals("Thor"))
        {
            this.valorCompra = this.venda.calcularPrecoThor(this.quantidade);
        }
        else if (this.servidor.Equals("Odin"))
        {
            this.valorCompra = this.venda.calcularPrecoOdin(this.quantidade);
        }
    }

    /// <summary>
    /// Verifica se determinada String está nula ou vazia;
    /// </summary>
    /// <param name="valor"></param>
    /// <returns></returns>
    private bool checarStringNula(String valor)
    {
        if (String.IsNullOrEmpty(valor))
        {
            exibirMensagemDeErro("Digite a quantidade desejada.");
            return false;
        }
        return true;
    }

    /// <summary>
    /// Verifica ser a quantidade escolhida é maior do que o valor mínimo de compra.
    /// </summary>
    /// <returns> bool sucesso</returns>
    public bool checarValorMinimo()
    {
        if (this.quantidade < 10 && (this.servidor.Equals("Thor") || this.servidor.Equals("Odin")))
        {
            exibirMensagemDeErro("O valor mínimo de compra para este servidor é de 10kks");
            return false;
        }
        else if (this.quantidade < 1 && this.servidor.Equals("Asgard"))
        {
            exibirMensagemDeErro("O valor mínimo de compra para este servidor é de 1kk");
            return false;
        }
        return true;
    }
}