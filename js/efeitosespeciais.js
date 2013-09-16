$(document).ready(function() {
$("#busca").blur(function(){
        if ($(this).val()==''){
            $(this).val('Procurar');
        }
});

$("#busca").focus(function(){
        if ($(this).val()=='Procurar'){
            $(this).val('');
        }
});

});