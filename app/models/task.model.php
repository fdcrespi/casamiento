<?php
include_once 'app/helpers/db.helper.php';

class TaskModel {

    private $db;
    private $dbHelper;

    function __construct() {
        $this->dbHelper = new DBHelper();

         // 1. Abro la conexión
        $this->db = $this->dbHelper->connect();
    }

    /**
     * Devuelve todas las tareas de la base de datos.
     */
    function getAll() {

        // 2. Enviar la consulta (2 sub-pasos: prepare y execute)
        $query = $this->db->prepare('SELECT * FROM tareas');
        $query->execute();

        // 3. Obtengo la respuesta con un fetchAll (porque son muchos)
        $tasks = $query->fetchAll(PDO::FETCH_OBJ); // arreglo de tareas

        return $tasks;
    }

    function get($id) {
        $query = $this->db->prepare('SELECT * FROM tareas WHERE id = ?');
        $query->execute([$id]);
        $task = $query->fetch(PDO::FETCH_OBJ);
        return $task;
    }

    /**
     * Inserta la tarea en la base de datos
     */
    function insert($titulo, $descripcion, $prioridad) {

        // 2. Enviar la consulta (2 sub-pasos: prepare y execute)
        $query = $this->db->prepare('INSERT INTO tareas (titulo, descripcion, prioridad) VALUES (?,?,?)');
        $query->execute([$titulo, $descripcion, $prioridad]);

        // 3. Obtengo y devuelo el ID de la tarea nueva
        return $this->db->lastInsertId();
    }

    function remove($id) {  
        $query = $this->db->prepare('DELETE FROM tareas WHERE id = ?');
        $query->execute([$id]);
  }

  function finalize($id) {
      $query = $this->db->prepare('UPDATE tareas SET finalizada = 1 WHERE id = ?');
      $query->execute([$id]);
  }

}