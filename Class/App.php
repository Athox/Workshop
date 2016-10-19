<?php


	######################### Class #############################

	class App{

		// Variable stattic
	  public static $pdo = null;

	  // Function appel connexion BDD
	  public static function getDatabase(){

	  	//Si la variable de connexion est vide :
	    if(!self::$pdo){

	    	// On appel le constructeur de la class Database, pour créer la connexion.
	      self::$pdo = new Database('root', '', 'WorkShop'	);
	    }

	      // On retourne la variable de connexion.
	      return self::$pdo;

	  }
	  // Fin de function.

	  // Function debug : affichage d'un array
	  public static function debug($msg){

	    // Code HTML pour rendre lisible.
	    echo '<pre>';

	    // On affiche l'array.
	    print_r($msg);

	    // Code HTML pour rendre lisible.
	    echo '</pre>';

	  }
	  // Fin de function.

	}
	######################### Fin ###############################

?>
