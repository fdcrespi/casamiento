<?php

include_once 'app/models/song.model.php';
include_once 'app/views/song.view.php';
include_once 'app/helpers/auth.helper.php';

class SongControllerAdmin {

    private $model;
    private $view;
    private $authHelper;

    function __construct() {
        $this->model = new SongModel();
        $this->view = new SongView();
        $this->authHelper = new AuthHelper();

        // verifico que el usuario esté logueado siempre
        $this->authHelper->checkLogged();
    }

    function showSongs() {
        $songs = $this->model->getAll();
        $this->view->showSongs($songs);
    }

    function addSong() {
        $titulo = $_POST['titulo'];
        if (empty($titulo)) {
            die();
        }

        $this->model->insert($titulo);
        header("Location: " . BASE_URL . "");
    }

}