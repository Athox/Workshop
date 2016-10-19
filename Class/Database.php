<?php


	// Class lié a la base de données.
	class Database{

		// Atribut de connexion, uniquement utilisé dans cette page.
	    private $pdo;

	    // Fonction de connexion a la base de données.
	    public function __construct($login, $password, $database_name, $host = 'localhost'){

	    	// Creation de la connexion.
	        $this->pdo = new PDO("mysql:dbname=$database_name;host=$host", $login, $password);

	        // Attribute BDD.
	        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	        // Attribute BDD.
	        $this->pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

	    }
	    // Fin de function.

	    // Fonction QUERY en BDD.
	    public function Query($query, $params = false){

	    	// On verifie s'il y'a des params.
	        if($params){

	        	// Si oui on fait une requete prepare.
	          $req = $this->pdo->prepare($query);
	          $req->execute($params);
	        }

	        else{

	        	// Sinon on execute directement.
	          $req = $this->pdo->query($query);
	        }

	        // On renvoie le résultat de la requete.
	        return $req;

    	}
    	// Fin de function.

			// Fonction INSERT en BDD.
			public function Insert($query){

				// On execute la requete.
 				$req = $this->pdo->exec($query);

				// On renvoie le résultat de la requete.
				return $req;

			}
			// Fin de function.

	}
	// Fin de class.

?>
