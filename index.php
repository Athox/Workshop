<?php
    require 'Class/api.php';
    // Instance de creation d'un autoloader, pour charger toutes les class.
    require 'Inc/autoload.php';
    //Log::AddUser();

    $router = new Router();
    $router->routerRequete();
?>
