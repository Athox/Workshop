<?php

class Router {
  // Traite une requete entrante
  public function routerRequete() {

    $method = $_SERVER['REQUEST_METHOD'];

    try {
      if ($method == "GET" && isset($_GET['action'])) {
        if ($_GET['action'] == 'GetAllState') {
          echo "toto";
        }
        elseif ($_GET['action'] == 'GetAllLocation') {
          echo "toto";
        }
        elseif ($_GET['action'] == 'GetAllDegreeLevel') {
          echo "toto";
        }
        elseif ($_GET['action'] == 'GetAllFieldActivity') {
          echo "toto";
        }
      }

      elseif ($method == "POST" && isset($_POST["action"])) {
        ########    Trainee functions    ########

        if ($_POST["action"] == "UpdateTraineeProfile"){
          echo "toto";
        }
        elseif ($_POST["action"] == "AddNewTraineeProfile"){
          echo "toto";
        }
        elseif ($_POST["action"] == "DeleteTraineeProfile"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetTraineeProfile"){
          echo "toto";
        }

        ########    Company functions    ########

        elseif ($_POST["action"] == "AddNewCompanyProfile"){
          echo "toto";
        }
        elseif ($_POST["action"] == "UpdateCompanyProfile"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetCompanyProfile"){
          echo "toto";
        }
        elseif ($_POST["action"] == "DeleteCompanyProfile"){
          echo "toto";
        }

        ########    Mark functions    ########

        elseif ($_POST["action"] == "AddNewMark"){
          echo "toto";
        }
        elseif ($_POST["action"] == "DeleteMark"){
          echo "toto";
        }
        elseif ($_POST["action"] == "DeleteAllMarkForTrainee"){
          echo "toto";
        }
        elseif ($_POST["action"] == "DeleteAllMarkForCompany"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetAverageMark"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetAllMarkForTrainee"){
          echo "toto";
        }

        ########    State functions    ########

        elseif ($_POST["action"] == "GetStateForId"){
          echo "toto";
        }

        ########    InternshipOffer functions    ########

        elseif ($_POST["action"] == "GetNumberOfCandidature"){
          echo "toto";
        }
        elseif ($_POST["action"] == "AddNewInternship"){
          echo "toto";
        }
        elseif ($_POST["action"] == "DeleteInternshipOffer"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetInternshipOffer"){
          echo "toto";
        }
        elseif ($_POST["action"] == "SearchOfferForTrainee"){
          echo "toto";
        }

        ########    Candidature functions    ########

        elseif ($_POST["action"] == "NewCandidature"){
          echo "toto";
        }
        elseif ($_POST["action"] == "UpdateState"){
          echo "toto";
        }
        elseif ($_POST["action"] == "DeleteCandidature"){
          echo "toto";
        }
        elseif ($_POST["action"] == "EditMark"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetAllCandidatureForTrainee"){
          echo "toto";
        }

        ########    Location functions    ########

        elseif ($_POST["action"] == "AddNewLocation"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetLocationById"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetLocationByCity"){
          echo "toto";
        }
        elseif ($_POST["action"] == "GetLocationByPostalCode"){
          echo "toto";
        }

        ########    DegreeLevel functions    ########

        elseif ($_POST["action"] == "GetDegreeLevelById"){
          echo "toto";
        }

        ########    FieldActivity functions    ########

        elseif ($_POST["action"] == "GetFieldActivityById"){
          echo "toto";
        }
      }
    }
    catch (Exception $e) {
      echo "Error";
    }
  }
}
