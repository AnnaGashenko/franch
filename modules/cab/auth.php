<?php

if(isset($_POST['email'],$_POST['pass'])) {

	$res = q("
		SELECT *
		FROM `Users`
		WHERE `Email`    = '".stringAll($_POST['email'])."'
			AND `Password` = '".myHash($_POST['pass'])."'
	    LIMIT 1
	");
	// Если результат не совпадает 
	if(!$res->num_rows){
        echo 'no';
		exit();
	} else {
		// Храним инфо о пользователе в $_SESSION
		$_SESSION['user'] = $res->fetch_assoc();
		// Создаем переменную которая говорит, все отлично мы авторизировались
		$status = 'OK';
        //делаем переадресацию на главную
        header("Location: /");
        exit();
	}
 	 
}