<?php

// if user sign up -> location to main
if (isset($_SESSION['user'])) {
	header("Location: /");
	exit();
}

//Обработка регистрации
if(isset($_POST['sendreg'],$_POST['FName'],$_POST['email'])){

	// Создаем массив с ошибками
	$errors = array();


	// Если поле не было заполнено
	if(empty($_POST['FName'])){
		$errors['FName'] = 'Вы не заполнили поле Имя';
	}

	// Если поле не было заполнено (оно пустое) или не проходит проверку на валидацию e-mail
	if(empty($_POST['email']) || !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){
		$errors['email'] = 'Вы не заполнили поле e-mal';
	}
	
	// Делаем проверку существует ли такой пользователь в БД
	if(!count($errors)){

		// Проверяем уникальность email
		$res = q("
			SELECT `UsersID`
			FROM `Users`
			WHERE `Email` = '".stringAll($_POST['email'])."'
			LIMIT 1
		"); 

		if(mysqli_num_rows($res)) {
	        $errors['email'] = 'Такой email уже занят';	
		}
	}

	//Если ошибок нет, то добавляем данные в БД
	if(!count($errors)){
        $pass = new UnicumCod();
        $pass = $pass->show();
		q("
			INSERT INTO `Users` SET
			`Name`      = '".trimAll(stringAll($_POST['FName']))."',
			`Email`     = '".trimAll(stringAll($_POST['email']))."',
            `Password`  = '".myHash($pass)."',
            `Country`   = '".trimAll(stringAll($_POST['country']))."',
            `City`      = '".trimAll(stringAll($_POST['city']))."',
            `Format`    = '".stringAll($_POST['format'])."',
			`date_registration` = NOW()
		"); 

		//Записываем переменную в сессию, чтобы сохранить ее между страницами
        $_SESSION['regok']['email'] = stringAll($_POST['email']);
        $_SESSION['regok']['password'] = $pass;

		// Делаем переадресацию на эту же страницу
		header("Location: /cab/registration");
		exit();
	}
}














