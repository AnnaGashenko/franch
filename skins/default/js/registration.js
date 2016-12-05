$(document).ready(function() {

    var field = new Array("FName","email"); //поля обязательные
           
    $("#registration").submit(function() { // обрабатываем отправку формы   
        var error=0; // индекс ошибки
        $("form").find(":input").each(function() { // проверяем каждое поле в форме
            for(var i=0;i<field.length;i++){ // если поле присутствует в списке обязательных
                if($(this).attr("name")==field[i]) { //проверяем поле формы на пустоту
                    if(!$(this).val()){ // если в поле пустое
                        $(this).addClass('invalid');
                        error=1; // определяем индекс ошибки                                    
                    } else {
                        $(this).removeClass('invalid');
                    }
                   
                }              
            }
       })

        var email = $('input[name="email"]').val();
            if(!isValidEmailAddress(email)){
            error=1;
            $('input[name="email"]').addClass('invalid');
        }

        if(error != 0){ // если ошибок нет то отправляем данные
             return false;
        }  
    })

}); // конец ready

function isValidEmailAddress(emailAddress) {
    var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
    return pattern.test(emailAddress);
}




























