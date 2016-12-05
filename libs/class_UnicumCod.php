<?php

class UnicumCod {

    private $cod;

    // метод будет принимать свойства
    function __construct()
    {
        $pass = md5(uniqid(rand(),1));
        $this->cod = substr($pass,-8);
    }

    public function show() {
        return $this->cod;
    }

}