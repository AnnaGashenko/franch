$(document).ready(function() {
	$("#authorization").submit(function(){
		// Получаем занчение полей логин и пароль
		var email = $("#email").val();
		var pass = $("#password").val();
		// Если поля логин или пароль не заполнены
		if(email == '' || pass == '') {
			if(email == "") {
				$("#email").addClass('invalid');
			} else {
				$("#email").removeClass('invalid');
			}
			if (pass == "") {
				$("#password").addClass('invalid');
			} else {
				$("#password").removeClass('invalid');
			}
			// если все в порядке отправляем запрос на сервер
		} else {
			$.ajax({
				url: '/cab/auth',
				type: "POST",
				cache: false,
				// какие данные мы передаем на сервер
				data: {
					email: email,
					pass: pass
				},
				success: function(msg) {
					if(msg == 'no') {
						$("#email, #password").addClass('invalid');
						$('.error_login').css('display','block');
					} else {
						document.location.href = location.pathname = '/';
					}
				}
			});
		}
		return false;
	});

});// конец ready






























