<?php

  include_once 'app/models/guest.model.php';
  include_once 'app/views/guest.view.php';

  class GuestController {

    private $model;
    private $view;

    function __construct() {
      $this->model = new GuestModel();
      $this->view = new GuestView();
    }

    function getGuests() {
      $guests = $this->model->getAll();
    
      if ($guests !== false) {
          header('Content-Type: application/json');
          echo json_encode($guests);
      } else {
          // Manejo de errores, por ejemplo:
          http_response_code(500); // Error interno del servidor
          echo json_encode(array('message' => 'Error al obtener invitados.'));
      }
    }

    function showGuests() {
      $guests = $this->model->getAll();
      $this->view->showGuests($guests);
    }

    function showGuest($id) {
      $guest = $this->model->get($id);
      $this->view->showGuest($guest);
    }

    function addGuest() {
      $nombre = $_POST['nombre'];
      $apellido = $_POST['apellido'];
      $invitados = $_POST['invitados'];
      if (empty($nombre) || empty($apellido)) {
        die();
      }

      $this->model->insert($nombre, $apellido, $invitados);
      header("Location: " . BASE_URL . "");
    }

    function removeGuest($id) {
      $this->model->remove($id);
      header("Location: " . BASE_URL . "");
    }

    function confirmGuest() {
      $data = json_decode(file_get_contents('php://input'), true);
      $id = $data['id'];
      $acompaniantes = $data['acompaniantes'];
      $comida = $data['comida'];
      $asistencia = $data['asistencia'];
      if ($id == null) {
          echo json_encode(array('message' => `Datos incompletos`));
          exit;
      }
      if ($this->model->confirm($id, $acompaniantes, $comida, $asistencia)) {
          echo json_encode(array('message' => 'Invitado confirmado.'));
          exit;
      } else {
          echo json_encode(array('message' => 'Error al confirmar el invitado.'));
          exit;
      }
    }

  }