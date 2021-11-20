function ValidatorUpdateDisplay(val) {
    //inserido manualmente
    if (document.getElementById(val.controltovalidate) && (!val.isvalid || document.getElementById(val.controltovalidate).getAttribute('validador') == null || document.getElementById(val.controltovalidate).getAttribute('validador').toString() == val.id)) {
        document.getElementById(val.controltovalidate).style.background = val.isvalid ? "" : "#FFFACD";
        document.getElementById(val.controltovalidate).title = val.isvalid ? "" : val.errormessage;
        document.getElementById(val.controltovalidate).setAttribute('validador', val.isvalid ? null : val.id);
    }
    //fim
    if (typeof (val.display) == "string") {
        if (val.display == "None") {
            return;
        }
        if (val.display == "Dynamic") {
            val.style.display = val.isvalid ? "none" : "inline";
            return;
        }
    }
    if ((navigator.userAgent.indexOf("Mac") > -1) &&
    (navigator.userAgent.indexOf("MSIE") > -1)) {
        val.style.display = "inline";
    }
    val.style.visibility = val.isvalid ? "hidden" : "visible";
}

//ao validar no page.load
if (typeof (Page_Validators) != "undefined") {
    var i, val;
    for (i = 0; i < Page_Validators.length; i++) {
        val = Page_Validators[i];
        if (document.getElementById(val.controltovalidate) && (!val.isvalid || document.getElementById(val.controltovalidate).getAttribute('validador') == null || document.getElementById(val.controltovalidate).getAttribute('validador').toString() == val.id)) {
            document.getElementById(val.controltovalidate).style.background = val.isvalid ? "" : "#FFFACD";
            document.getElementById(val.controltovalidate).title = val.errormessage;
            document.getElementById(val.controltovalidate).setAttribute('validador', val.isvalid ? null : val.id);
        }
    }
}
