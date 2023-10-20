<?php

include_once 'app/helpers/db.helper.php';

class GuestModel {

    private $db;
    private $dbHelper;

    function __construct() {
        $this->dbHelper = new DBHelper();

        // 1. Abro la conexión
        $this->db = $this->dbHelper->connect();
    }

    // funcion que retorna un json son todos los invitados
    function getAll() {
        // 2. Enviar la consulta (2 sub-pasos: prepare y execute)
        $query = $this->db->prepare('SELECT * FROM guests');
        $query->execute();

        // 3. Obtengo la respuesta con un fetchAll (porque son muchos)
        $guests = $query->fetchAll(PDO::FETCH_OBJ); // arreglo de guests

        return $guests;
    }

    function get($id) {
        $query = $this->db->prepare('SELECT * FROM guests WHERE id = ?');
        $query->execute([$id]);
        $guest = $query->fetch(PDO::FETCH_OBJ);
        return $guest;
    }

    function insert($nombre, $apellido, $invitados) {

        // 2. Enviar la consulta (2 sub-pasos: prepare y execute)
        $query = $this->db->prepare('INSERT INTO guests (nombre, apellido, compania) VALUES (?, ?, ?)');

        $query->execute([$nombre, $apellido, $invitados]);

        // 3. Obtengo y devuelo el ID de la tarea nueva
        return $this->db->lastInsertId();
    }

    function remove($id) {
        $query = $this->db->prepare('DELETE FROM guests WHERE id = ?');
        $query->execute([$id]);
    }

    function confirm($id, $acompaniantes = '', $comida = '', $asistencia) {
        try {
            $query = $this->db->prepare('UPDATE guests SET confirmado = true, acompaniantes = ?, comida = ?, asistencia = ? WHERE id = ?');
            if ($query->execute([$acompaniantes, $comida, $asistencia, $id])) {
                // La consulta fue exitosa, devuelvo el id
                return true;
            } else {
                // Hubo un error al ejecutar la consulta, devuelvo false
                return false;
            }
        } catch (PDOException $e) {
            echo 'Error: ' . $e->getMessage();
        }
    }

}