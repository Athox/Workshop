<?php


	######################### Class #############################

	class Log{

    // Class Login connexion
	  public static function Login($Login, $Password){

       // Requete preparer pour verifier si l'utilisateur existe.
      $Requete = App::getDatabase()->Query("SELECT * FROM `user` WHERE `Login` =:Login AND `Password` =:Password", array('Login' => $Login, 'Password' => $Password))->fetch();

      // Si la requête nous retourne une valeur.
      if(isset($Requete) AND ($Requete != "")){

        // On recuperer l'ID de l'utilisateur.
        $_SESSION['Log']['ID'] = $Requete->ID_User;

        // On recupere le login.
        $_SESSION['Log']['Login'] = $Requete->Login;

        // On recupere le password.
        $_SESSION['Log']['Password'] = $Requete->Password;

        // On recupere l'email
        $_SESSION['Log']['Email'] = $Requete->Password;

        // On recupere l'addresse
        $_SESSION['Log']['Address'] = $Requete->Adresse;

        // On recupere le lien Linkedin
        $_SESSION['Log']['Linkedin'] = $Requete->Link_Linkedin;

        // On verifie si l'utilisateur est une entreprise.
        $SQL = App::getDatabase()->Query("SELECT * FROM `entreprise` WHERE `ID_User` =:ID", array('ID' => $_SESSION['Log']['ID']))->fetch();

        // On verifie si l'utilisateur est une stągiąire.
        $SQL1 = App::getDatabase()->Query("SELECT * FROM `stagiaire` WHERE `ID_User` =:ID", array('ID' => $_SESSION['Log']['ID']))->fetch();

        // Si l'utilisateur est une entreprise.
        if(isset($SQL) AND ($SQL != "")){

          // On recupere l'ID de l'entreprise
          $_SESSION['Log']['ID_Entreprise'] = $SQL->ID_Entreprise;

          // On recupere le nom de l'entreprise
          $_SESSION['Log']['Name_Entreprise'] = $SQL->Nom;

          // On recupere le nombre de salarie
          $_SESSION['Log']['Nbr_Sal'] = $SQL->Nombre_Salarie;

          // On recupere le nombre de stagiaire
          $_SESSION['Log']['Nbr_Stag'] = $SQL->Nbr_Stagiaire;

          // On recupere le Management social
          $_SESSION['Log']['Management_Social'] = $SQL->Management_Social;

        }
        // Fin Si.

        // Sinon Si l'utilisateur est un stagiaire
        elseif (isset($SQL1) AND ($SQL1 != "")){

          // On recupere du stagiaire
          $_SESSION['Log']['ID_Stagiaire'] = $SQL1->ID_Stagiaire;

          // On recupere du stagiaire
          $_SESSION['Log']['Nom'] = $SQL1->Nom;

          // On recupere du stagiaire
          $_SESSION['Log']['Prenom'] = $SQL1->Prenom;

          // On recupere du stagiaire
          $_SESSION['Log']['Age'] = $SQL1->Age;

          // On recupere du stagiaire
          $_SESSION['Log']['Description'] = $SQL1->Description;

          // On recupere du stagiaire
          $_SESSION['Log']['Niveau'] = $SQL1->Niveau;

        }
        // Fin SinonSi.

        // On affiche toutes les infos utilisateur
        App::Debug($_SESSION['Log']);

      }
      // Fin Si.

      // Sinon
      else {

        // On retourne que l'utilisateur a rentre de mauvais identifiant.
        echo "Mauvais identifiant";

      }
      // Fin Sinon.

    }
    // Fin de function.

    // Class Inscription
    public static function AddUser(){

      // On verifie si tout les champs sont present
      if(isset($_GET['Login']) AND isset($_GET['Password']) AND (isset($_GET['Tel'])) AND (isset($_GET['Mail'])) AND (isset($_GET['Adresse'])) AND (isset($_GET['Link_Linkedin'])) AND(isset($_GET['Bool'])) ){

        // Liste des informations récuperer
        $Login = $_GET['Login'];
        $Password = $_GET['Password'];
        $Tel = $_GET['Tel'];
        $Mail = $_GET['Mail'];
        $Adresse = $_GET['Adresse'];
        $Linkedin = $_GET['Link_Linkedin'];
        $Bool = $_GET['Bool'];

				// Requete pour verifier si le nom d'utilisateur existe.
				$Requete = App::getDatabase()->Query("SELECT * FROM `user` WHERE `Login`=: Login", array('Login' => $Login))->fetch();

				// Si la requete retourne quelque chose
				if(isset($Requete) AND ($Requete != "")){

					// Erreur
					echo "L'utilisateur existe déjà";

				}
				// Sinon.

				// Sinon
				else {

        	// On insert les données
        	App::getDatabase()->Insert("INSERT INTO `user`(`Login`, `Password`, `Tel`, `Mail`, `Adresse`, `Link_Linkedin`) VALUES ('".$Login."','".$Password."','".$Tel."','".$Mail."','".$Adresse."', '".$Linkedin."')");

				}
				// Fin Sinon

				$Res = App::getDatabase()->Query("SELECT * FROM `user` WHERE `Login`=: Login", array('Login' => $Login))->fetch();

				// Exemple : index.php?Login=Test_Site&Password=Test&Tel=0644307513&Mail=zayres@live.fr&Adresse=69009%20Vaise&Link_Linkedin=http://www.google.com&Bool=1&Nom_Entreprise=Entrepriz&Nbrs_Sal=10&Nbr_Stagiaire=0&Management_Social=

				$ID = $Res->ID_User;

        // Si l'utilisateur est une entreprise
        if($Bool == 1){

          $Nom = $_GET['Nom_Entreprise'];
          $Nombre_Salarie = $_GET['Nbrs_Sal'];
          $Nombre_Stagiaire = $_GET['Nbr_Stagiaire'];
          $Management_Social = $_GET['Management_Social'];

					App::getDatabase()->Query("INSERT INTO `entreprise`(`Nom`, `Nombre_Salarie`, `Nbr_Stagiaire`, `Management_Social`, `ID_User`) VALUES ('".$Nom."', '".$Nombre_Salarie."', '".$Nbr_Stagiaire."', '".$Management_Social."', '".$ID."')");



        }
        // Fin Si.

        // Sinon Si l'utilisateur est un stagiaire
        elseif ($Bool == 0) {

          $Nom = $_GET['Nom'];
          $Prenom = $_GET['Prenom'];
          $Age = $_GET['Age'];
          $Description = $_GET['Desc'];
          $Niveau = $_GET['Niveau'];

        }
        // Fin Si.

      }
      // Fin Si.

    }
    // Fin function.


	}
	######################### Fin ###############################

?>
