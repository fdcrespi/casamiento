<?php

require_once('libs/smarty/libs/Smarty.class.php');

class SongView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
        $this->smarty->assign('title', "EstefiyFede");
    }

    function showHome() {
        $this->smarty->display('templates/home.tpl');
    }

    function showSongs($songs) {

        $this->smarty->assign('songs', $songs);
    
        $this->smarty->display('templates/songList.tpl');
    }

    function showSong($song) {
        $this->smarty->assign('song', $song);
        $this->smarty->display('templates/songDetail.tpl');
    }

}