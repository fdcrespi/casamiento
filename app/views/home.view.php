<?php

  require_once('libs/smarty/libs/Smarty.class.php');

  class HomeView {

    private $smarty;

    function __construct() {
      $this->smarty = new Smarty();
      $this->smarty->assign('title', "EstefiyFede");
    }

    function showHome($guests) {
      $this->smarty->assign('guests', $guests);
      $this->smarty->display('templates/home.tpl');
    }

  }