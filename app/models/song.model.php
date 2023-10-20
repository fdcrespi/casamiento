<?php

include_once 'app/helpers/db.helper.php';

class SongModel
{

  private $db;
  private $dbHelper;

  function __construct()
  {
    $this->dbHelper = new DBHelper();

    // 1. Abro la conexión
    $this->db = $this->dbHelper->connect();
  }

  function getAll()
  {

    // 2. Enviar la consulta (2 sub-pasos: prepare y execute)
    $query = $this->db->prepare('SELECT * FROM songs');
    $query->execute();

    // 3. Obtengo la respuesta con un fetchAll (porque son muchos)
    $songs = $query->fetchAll(PDO::FETCH_OBJ); // arreglo de tareas

    return $songs;
  }

  function get($id)
  {
    $query = $this->db->prepare('SELECT * FROM songs WHERE id = ?');
    $query->execute([$id]);
    $song = $query->fetch(PDO::FETCH_OBJ);
    return $song;
  }

  function insert($titulo)
  {

    // 2. Enviar la consulta (2 sub-pasos: prepare y execute)
    $query = $this->db->prepare('INSERT INTO songs (titulo) VALUES (?)');
    $query->execute([$titulo]);

    // 3. Obtengo y devuelo el ID de la tarea nueva
    return $this->db->lastInsertId();
  }

  function remove($id)
  {
    $query = $this->db->prepare('DELETE FROM songs WHERE id = ?');
    $query->execute([$id]);
  }
}
