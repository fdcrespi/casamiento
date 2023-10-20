<?php
include_once 'app/views/auth.view.php';
include_once 'app/models/user.model.php';
include_once 'app/helpers/auth.helper.php';

class AuthContoller {

    private $model;
    private $view;
    private $authHelper;

    public function __construct() {
        $this->model = new UserModel();
        $this->view = new AuthView();

        $this->authHelper = new AuthHelper();
    }

    public function showLogin() {
        $this->view->showFormLogin();
    }

    public function loginUser() {
        $email = $_POST['email'];
        $password = $_POST['password'];

        // verifico campos obligatorios
        if (empty($email) || empty($password)) {
            $this->view->showFormLogin("Faltan datos obligatorios");
            die();
        }

        // obtengo el usuario
        $user = $this->model->getByEmail($email);

        // si el usuario existe, y las contraseñas coinciden
        if ($user && password_verify($password, $user->password)) {
            
            // armo la sesion del usuario
            $this->authHelper->login($user);

            // redirigimos al listado
            header("Location: " . BASE_URL . 'invitados'); 
            
        } else {
            $this->view->showFormLogin("Credenciales inválidas");
        }

    }

    function logout() {
        $this->authHelper->logout();
    }
}