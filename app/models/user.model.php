<?php
include_once 'app/helpers/db.helper.php';
class UserModel {
    private $db;
    private $dbHelper;    

    function __construct() {
        $this->dbHelper = new DBHelper();

         // 1. Abro la conexión
        $this->db = $this->dbHelper->connect();
    }

    private function connect() {
        $db = new PDO('mysql:host=localhost;'.'dbname=db_todolist;charset=utf8', 'root', '');
        return $db;
    }

    /**
     * Devuelve un usuario dado un email.
     */
    public function getByEmail($email) {
        $query = $this->db->prepare('SELECT * FROM usuarios WHERE email = ?');
        $query->execute([$email]);
        return $query->fetch(PDO::FETCH_OBJ);
    }



}