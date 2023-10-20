<?php

include_once 'app/models/song.model.php';
include_once 'app/views/song.view.php';

class SongController {

    private $model;
    private $view;

    function __construct() {
        $this->model = new SongModel();
        $this->view = new SongView();
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