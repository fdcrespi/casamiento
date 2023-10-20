<?php

require_once('libs/smarty/libs/Smarty.class.php');

class TaskView {

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
        $this->smarty->assign('title', "EstefiyFede");
    }

    function showHome() {
        $this->smarty->display('templates/home.tpl');
    }

    function showTasks($tasks) {

        $this->smarty->assign('tasks', $tasks);
    
        $this->smarty->display('templates/taskList.tpl');
    }

    function showTask($task) {
        $this->smarty->assign('task', $task);
        $this->smarty->display('templates/taskDetail.tpl');
    }


    function showError($msg) {
        $this->smarty->assign('msg', $msg);
    
        $this->smarty->display('templates/error.tpl');
    }
}