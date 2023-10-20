<?php
include_once 'app/models/task.model.php';
include_once 'app/models/guest.model.php';
include_once 'app/views/task.view.php';
include_once 'app/helpers/auth.helper.php';

class TaskController {

    private $model;
    private $view;
    private $authHelper;

    function __construct() {
        //$this->model = new TaskModel();
        $this->model = new GuestModel();
        //$this->view = new TaskView();
        $this->view = new GuestView();
        $this->authHelper = new AuthHelper();

        // verifico que el usuario esté logueado siempre
        $this->authHelper->checkLogged();
    }

    /**
     * Imprime la lista de tareas
     */
    function showTasks() {
        // obtiene las tareas del modelo
        $guests = $this->model->getAll();

       // actualizo la vista
       $this->view->showGuests($guests);
    }

    /**
     * Muestra el detalle del item
     * @param $id
     */
   /*  function showDetail($id) {
        $task = $this->model->get($id);
        if($task) {
            $this->view->showTask($task);
        }
        else {
            $this->view->showError('Tarea no encontrada');
        }
    } */

    /**
     * Inserta una tarea en el sistema
     */
    function addTask() {
        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellido'];
        if ($_POST['invitados'] == true) {
            $invitados = true;
        } else {
            $invitados = false;
        }
        // verifico campos obligatorios
        if (empty($nombre) || empty($apellido)) {
            die();
        }

        // inserto la tarea en la DB
        $id = $this->model->insert($nombre, $apellido,  $invitados);

        // redirigimos al listado
        header("Location: " . BASE_URL . "invitados"); 
    }

    /**
     * Elimina la tarea del sistema
     */
    function deleteTask($id) {
        $this->model->remove($id);
        header("Location: " . BASE_URL . "invitados"); 
    }
    /*
    function finalizeTask($id) {
        $this->model->finalize($id);
        header("Location: " . BASE_URL);
    } */

}