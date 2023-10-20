<?php

require_once('libs/smarty/libs/Smarty.class.php');

class GuestView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
        $this->smarty->assign('title', "EstefiyFede");
    }

    function showHome() {
        $this->smarty->display('templates/home.tpl');
    }

    function showGuests($guests) {

        $this->smarty->assign('guests', $guests);
    
        $this->smarty->display('templates/guestList.tpl');
    }

    function showGuest($guest) {
        $this->smarty->assign('guest', $guest);
        $this->smarty->display('templates/guestDetail.tpl');
    }

}