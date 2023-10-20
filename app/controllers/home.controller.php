<?php
  include 'app/views/home.view.php';

  class HomeController {

    private $view;
    private $modelGuest;

    function __construct() {
      $this->modelGuest = new GuestModel();
      $this->view = new HomeView();
    }

    function showHome() {
      $guests = $this->modelGuest->getAll();
      $this->view->showHome($guests);
    }
  }
