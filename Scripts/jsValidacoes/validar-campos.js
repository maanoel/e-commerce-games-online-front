$(document).ready(function () {
    /*
        Validação pra o campo tbQuantidade.
    */
    $("#ContentPlaceHolder1_tbQuantidade").keyup(function () {
        //Validando apenas números.
        var valor = $("#ContentPlaceHolder1_tbQuantidade").val().replace(/[^0-9]+/g, '');
        $(this).val(valor);
    });

    /*
        Validação pra o campo btCadastrar
    */
    $("#ContentPlaceHolder1_btCadastrar").click(function () {
        //Checa se algo foi digitado.
        var quantidade = $("#ContentPlaceHolder1_tbQuantidade").val();
        if (!quantidade) {
            jAlert('Você precisa informar a quantidade', 'Mensagem de alerta');
            return false;
        }
    });

     /*
        Validação pra o campo tbTelefone
    */
    $("#ContentPlaceHolder1_tbTelefone").keyup(function () {
        //Validando apenas números e "-".
        var valor = $("#ContentPlaceHolder1_tbTelefone").val().replace(/[^0-9-]+/g, '');
        $(this).val(valor);
        //Coloca hifen no telefone.
        var tbTelefone = $(this).val();
        if (tbTelefone.length == 2 || tbTelefone.length == 7) {
            $(this).val(tbTelefone + "-");
        }
    });

     /*
        Validação pra o campo tbDtNascimento
     */
    $("#ContentPlaceHolder1_tbDtNascimento").keyup(function () {
        //Validando apenas números e "/".
        var valor = $("#ContentPlaceHolder1_tbDtNascimento").val().replace(/[^0-9/]+/g, '');
        $(this).val(valor);

        //Coloca barra na data de nascimento.
        var dataNascimento = $(this).val();
        if (dataNascimento.length == 2 || dataNascimento.length == 5) {
            $(this).val(dataNascimento + "/");
        }
    });
});