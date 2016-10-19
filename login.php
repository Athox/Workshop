<?php


    // Instance de creation d'un autoloader, pour charger toutes les class.
    require 'Inc/autoload.php';

    if(isset($_GET['Username']) AND (isset($_GET['Password']))){

      // On appel la fonction de connextion
      Log::Login($_GET['Username'], $_GET['Password']);

      // Exemple : xxxxx/login.php?Username=Test_stag&Password=Test

    }



?>
