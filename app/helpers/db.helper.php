<?php

class DBHelper {
    public function __construct() {
    }

    public function connect() {
        //$db = new PDO('mysql:host=localhost;'.'dbname=db_todolist;charset=utf8', 'root', '');
        $db = new PDO('mysql:host=localhost;'.'dbname=id20804695_casamiento;charset=utf8', 'id20804695_fedecrespi', 'EstefiFede518*');
        return $db;
    }    
}