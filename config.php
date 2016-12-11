<?php

//Создадим класс ЯДРО
class Core {
	static $CREATED  = 2016;
	static $CONT     = 'modules';
	static $SKIN     = 'default';	
	static $DB_NAME  = 'franch';
	static $DB_LOGIN = '';
	static $DB_PASS  = '';
	static $DB_LOCAL = 'localhost';	
	static $DOMAIN   = 'http://franch/';
	static $UPLOADER_DIR = '/uploaded/';	

	static $CSS  = array();
	static $META = array(
		'title'=>'стандартный TITLE',
		'description'=>'d',
		'keywords'=>'k'
	);
}
