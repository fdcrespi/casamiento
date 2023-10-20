<?php
include_once 'app/controllers/task.controller.php';
include_once 'app/controllers/auth.controller.php';
include_once 'app/controllers/home.controller.php';
include_once 'app/controllers/song.controller.php';
include_once 'app/controllers/guest.controller.php';
include_once 'app/controllers/songAdmin.controller.php';

// defino la base url para la construccion de links con urls semánticas
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

// lee la acción
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = ''; // acción por defecto si no envían
}

// parsea la accion Ej: suma/1/2 --> ['suma', 1, 2]
$params = explode('/', $action);
// determina que camino seguir según la acción
switch ($params[0]) {
    case '':
        $controller = new HomeController();
        $controller->showHome();
        break;
    case 'login':
        $controller = new AuthContoller();
        $controller->showLogin();
        break;
    case 'insertarCancion':
        $controller = new SongController();
        $controller->addSong();
        break;
    case 'confirmarInvitado':
        $controller = new GuestController();
        $controller->confirmGuest();
        break;
    case 'obtener_invitados':
        $controller = new GuestController();
        $controller->getGuests();
        break;
    case 'invitados':
        $controller = new TaskController();
        $controller->showTasks();
        break;
    case 'verify':
        $controller = new AuthContoller();
        $controller->loginUser();
        break;
    case 'logout':
        $controller = new AuthContoller();
        $controller->logout();
        break;    
    case 'insertar':
        $controller = new TaskController();
        $controller->addTask();
        break;
    case 'canciones':
        $controller = new SongControllerAdmin();
        $controller->showSongs();
        break;
    case 'eliminar': // eliminar/:ID
        $controller = new TaskController();
        $id = $params[1];
        $controller->deleteTask($id);
        break;
    /*
    case 'finalizar':
        $controller = new TaskController();
        $id = $params[1];
        $controller->finalizeTask($id);
        break;
    case 'ver':
        $controller = new TaskController();
        $id = $params[1];
        $controller->showDetail($id);
        break; */
    default:
        header("HTTP/1.0 404 Not Found");
        echo('404 Page not found');
        break;
}
