-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Mar 18 Octobre 2016 à 22:30
-- Version du serveur: 5.6.11
-- Version de PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `workshop`
--
CREATE DATABASE IF NOT EXISTS `workshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `workshop`;

-- --------------------------------------------------------

--
-- Structure de la table `candidature`
--

CREATE TABLE IF NOT EXISTS `candidature` (
  `ID_Candidature` int(11) NOT NULL AUTO_INCREMENT,
  `Note` int(11) DEFAULT NULL,
  `ID_Stagiaire` int(11) DEFAULT NULL,
  `ID_User` int(11) DEFAULT NULL,
  `ID_State` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Candidature`),
  KEY `FK_CANDIDATURE_ID_Stagiaire` (`ID_Stagiaire`),
  KEY `FK_CANDIDATURE_ID_User` (`ID_User`),
  KEY `FK_CANDIDATURE_ID_State` (`ID_State`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `candidature`
--

INSERT INTO `candidature` (`ID_Candidature`, `Note`, `ID_Stagiaire`, `ID_User`, `ID_State`) VALUES
(1, NULL, 2, NULL, 1),
(2, NULL, 2, NULL, 1),
(3, NULL, 2, NULL, 1),
(4, NULL, 2, NULL, 1),
(5, NULL, 2, NULL, 1),
(6, NULL, 2, NULL, 1),
(7, NULL, 2, NULL, 1),
(8, NULL, 2, NULL, 1),
(9, NULL, 2, NULL, 1),
(10, NULL, 2, NULL, 1),
(11, NULL, 3, NULL, 1),
(12, NULL, 3, NULL, 1),
(13, NULL, 3, NULL, 1),
(14, NULL, 3, NULL, 1),
(15, NULL, 3, NULL, 1),
(16, NULL, 3, NULL, 1),
(17, NULL, 3, NULL, 1),
(18, NULL, 3, NULL, 1),
(19, NULL, 3, NULL, 1),
(20, NULL, 3, NULL, 1),
(21, NULL, 3, NULL, 1),
(22, NULL, 4, NULL, 1),
(23, NULL, 4, NULL, 1),
(24, NULL, 4, NULL, 1),
(25, NULL, 4, NULL, 1),
(26, NULL, 4, NULL, 1),
(27, NULL, 4, NULL, 1),
(28, NULL, 4, NULL, 1),
(29, NULL, 4, NULL, 1),
(30, NULL, 4, NULL, 1),
(31, NULL, 4, NULL, 1),
(32, NULL, 4, NULL, 1),
(33, NULL, 4, NULL, 1),
(34, NULL, 4, NULL, 1),
(35, NULL, 4, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `diplome`
--

CREATE TABLE IF NOT EXISTS `diplome` (
  `ID_Diplome` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle_Diplome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Diplome`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `diplome`
--

INSERT INTO `diplome` (`ID_Diplome`, `Libelle_Diplome`) VALUES
(1, 'Diplôme'),
(2, 'CAP/BEP'),
(3, 'Bac/Bac Pro'),
(4, 'Bac +1'),
(5, 'BAC +2'),
(6, 'BAC +3'),
(7, 'BAC +4'),
(8, 'BAC +5 et plus');

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE IF NOT EXISTS `domaine` (
  `ID_Domaine` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle_Domaine` longtext,
  PRIMARY KEY (`ID_Domaine`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Contenu de la table `domaine`
--

INSERT INTO `domaine` (`ID_Domaine`, `Libelle_Domaine`) VALUES
(1, 'Spécialité'),
(2, 'Achats'),
(3, 'Administratifs / Documentation'),
(4, 'Automatismes / Contrôle commande'),
(5, 'Commercial / Clientèle / Marketing'),
(6, 'Communication'),
(7, 'Finance / Gestion / Comptabilité'),
(8, 'Génie civil'),
(9, 'Génie climatique'),
(10, 'Génie électrique'),
(11, 'Génie informatique / Télécommunications'),
(12, 'Génie mécanique / Matériaux / Hydraulique'),
(13, 'Génie nucléaire'),
(14, 'Génie thermique'),
(15, 'Géologie'),
(16, 'Immobilier'),
(17, 'Juridique / Fiscal'),
(18, 'Logistique / Productique'),
(19, 'Mathématiques appliquées / Statistiques'),
(20, 'Médecin du travail / Infirmier'),
(21, 'Optimisation et trading dénergie'),
(22, 'Qualité / Sécurité / Environnement / Chimie'),
(23, 'RH / Social');

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE IF NOT EXISTS `entreprise` (
  `ID_Entreprise` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) DEFAULT NULL,
  `Nombre_Salarie` int(11) DEFAULT NULL,
  `Nbr_Stagiaire` int(11) DEFAULT NULL,
  `Management_Social` tinyint(1) DEFAULT NULL,
  `ID_User` int(11) NOT NULL,
  PRIMARY KEY (`ID_Entreprise`,`ID_User`),
  KEY `FK_ENTREPRISE_ID_User` (`ID_User`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `entreprise`
--

INSERT INTO `entreprise` (`ID_Entreprise`, `Nom`, `Nombre_Salarie`, `Nbr_Stagiaire`, `Management_Social`, `ID_User`) VALUES
(1, 'Entreprizzzz', 10, 0, 0, 1),
(2, 'EDF', 3598, 124, 1, 5),
(3, 'Entreprise bidon', 1, 0, 0, 7);

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `ID_Lieu` int(11) NOT NULL AUTO_INCREMENT,
  `Ville` varchar(255) DEFAULT NULL,
  `CP_Ville` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_Lieu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`ID_Lieu`, `Ville`, `CP_Ville`) VALUES
(1, 'Lyon', '6900'),
(2, 'Valence', '26000'),
(3, 'Villeurbanne', '69100'),
(4, 'Aubenas', '07200'),
(5, 'Paris', '75000'),
(6, 'Saint-Etienne', '42000'),
(7, 'Marseille', '13000'),
(8, 'Morzine', '74000');

-- --------------------------------------------------------

--
-- Structure de la table `noter`
--

CREATE TABLE IF NOT EXISTS `noter` (
  `Note` double DEFAULT NULL,
  `ID_Stagiaire` int(11) NOT NULL,
  `ID_User` int(11) NOT NULL,
  `ID_Entreprise` int(11) NOT NULL,
  `ID_User_USER` int(11) NOT NULL,
  PRIMARY KEY (`ID_Stagiaire`,`ID_User`,`ID_Entreprise`,`ID_User_USER`),
  KEY `FK_noter_ID_User` (`ID_User`),
  KEY `FK_noter_ID_Entreprise` (`ID_Entreprise`),
  KEY `FK_noter_ID_User_USER` (`ID_User_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE IF NOT EXISTS `offre` (
  `ID_Offre` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) NOT NULL,
  `Description` longtext NOT NULL,
  `Nbr_Place` int(11) NOT NULL,
  `Date_Debut` varchar(25) NOT NULL,
  `Periode` varchar(25) NOT NULL,
  `remuneration` double DEFAULT NULL,
  `ID_Lieu` int(11) DEFAULT NULL,
  `ID_Domaine` int(11) DEFAULT NULL,
  `ID_Diplome` int(11) DEFAULT NULL,
  `ID_Entreprise` int(11) DEFAULT NULL,
  `ID_User` int(11) DEFAULT NULL,
  `CreationDate` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_Offre`),
  KEY `FK_OFFRE_ID_Lieu` (`ID_Lieu`),
  KEY `FK_OFFRE_ID_Domaine` (`ID_Domaine`),
  KEY `FK_OFFRE_ID_Diplome` (`ID_Diplome`),
  KEY `FK_OFFRE_ID_Entreprise` (`ID_Entreprise`),
  KEY `FK_OFFRE_ID_User` (`ID_User`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `offre`
--

INSERT INTO `offre` (`ID_Offre`, `Titre`, `Description`, `Nbr_Place`, `Date_Debut`, `Periode`, `remuneration`, `ID_Lieu`, `ID_Domaine`, `ID_Diplome`, `ID_Entreprise`, `ID_User`, `CreationDate`) VALUES
(3, 'APPUI CONSLUTANT RH H/F', 'Description de l''offre\r\nDescriptif de la mission de stage :\r\nAccompagner les services du CNPE dans leur démarche d''appréciation du professionnlaisme en pilotant la rédaction des grilles d''évaluation du professionnalisme dans les différents métiers du CNPE (maintenance, conduite, services supports)\r\nDUREE DU STAGE : de fin Novembre 2016 à fin Mai 2017\r\n\r\nLe Périmètre :\r\nLe CNPE (Centre Nucléaire de Production d''Electricité) de Nogent-sur-Seine est une unité de production nucléaire constituée de deux réacteurs nucléaires d''une puissance unitaire de 1300MWe. Il emploie environ 750 salariés.\r\nLa centrale est implantée en Champagne-Ardenne, dans l''Aube (10), à la limite de l''Ile de France. Elle est située à 120 km de Paris, 110 km de Reims, 60 km de Troyes, 70 km de Melun, 45 km de Sens, 40 km de Montereau, 15 km de Provins et à 1h de train de la Gare de l''Est\r\n\r\n\r\nProfil souhaité\r\nMASTER 1 OU 2 RH\r\n', 0, 'Novembre 2016', '7 mois', NULL, 1, 23, 7, 2, NULL, ''),
(4, 'STAGIAIRE INGENIEUR AFFAIRES ET MODIFICATIONS ELECTRIQUES H/F', 'Description de l''offre\r\nAu sein du Service Automatismes et Electricité, vous mettrez en oeuvre des affaires améliorant les installations électriques du site au regard des budgets alloués, des disponibilités des prestataires ainsi que des contraintes d''exploitation des tranches nucléaires.\r\nVoues êtes en mesure d''être autonome dans :\r\n- la définition et la rédaction de cahier des charges ;\r\n- l''établissement de solutions techniques que vous présenterez à l''Etat Major du Service pour validation technico-économique ;\r\n- la prise de contact avec les fournisseurs de matériels et les prestataires d''interventions (cahier des charges, analyse des devis, réunion, suivi d''intervention, etc)\r\n- le pilotage des activités sur le terrain avec reporting à l''Etat Major du Service ;\r\n- La mise à jour des documents relatifs aux modifications (schémas électriques, rédaction de dossiers de modification).\r\nVous devrez démontrer votre capacité à travailler en équipe et être en relation avec les différentes interfaces métiers/organisationnelles (prestataires, fournisseurs, Services CNPE,...)\r\n\r\nProfil souhaité\r\nElève Ingénieur ayant des connaissances solides dans le domaine électrotechnique.\r\nAutonome, rigoureux, le candidat dispose d''une bonne capacité d''analyse, de rédaction et d''adaptation.\r\n\r\nPERIODE DE STAGE : A PARTIR DE NOVEMBRE 2016\r\nA 1H de train de la Gare de l''Est de Paris ou 30mns de Troyes\r\n\r\nINDEMNITE DE STAGE SELON ANNEE D''ETUDE ET D''ETABLISSEMENT SCOLAIRE\r\n', 0, '', '', NULL, 6, 4, 7, 2, NULL, '18/10/2016'),
(5, 'Stage étude de coûts transports logistiques H/F', 'Description de l''offre\r\nENEDIS est le gestionnaire du réseau public de distribution d''électricité sur 95 % du territoire français continental. Ses 36 000 collaborateurs assurent chaque jour l''exploitation, l''entretien et le développement de près de 1,3 million de kilomètres de réseau.\r\n\r\nSERVAL est une filiale d''ENEDIS et GRDF dont la mission est d''approvisionner en matériel toutes les unités réseaux de ces deux distributeurs.\r\nEn ce sens, elle contribue à la définition et à la mise en oeuvre des politiques d''approvisionnement nationales. Il s''agit notamment de sécuriser les approvisionnements y compris en situation de crise.\r\n\r\nL''unité s''appuie concrètement sur 11 plates-formes réparties sur l''ensemble du territoire, qui interviennent sur toute la chaîne logistique : traitement des demandes clients, approvisionnement auprès des fournisseurs, livraison ...\r\n\r\nVos activités :\r\n\r\n-Rattaché au Responsable de la Plateforme Logistique de Caen, vous procéderez au\r\ncalcul des distances parcourues par les transporteurs dans le cadre de leurs tournées aval (lieux de stockage vers lieux de livraison).\r\n\r\n-Vous utiliserez pour cela les logiciels de calculs de distances et coûts afin de fiabiliser les données produites\r\n\r\n-A partir de ces données consolidées, vous déterminerez le coût associé à ces trajets en vue de contribuer à la performance économique de l''Unité dans le domaine transport.\r\n\r\n\r\nProfil souhaité\r\nCandidat préparant un Bac +2 (type BTS) ou déjà titulaire d''un Bac +2\r\nDès que possible\r\nDurée du stage : au minimum 2 mois\r\nDes déplacements sont à prévoir\r\n\r\n\r\nLe candidat dispose des compétences suivantes :\r\n\r\n- Maîtrise du pack office et, plus spécifiquement de l''outil Excel Acces\r\n- Rigueur et esprit d''initiative,\r\n- Autonomie', 2, 'Dès que possible', '2 mois minimum', NULL, 3, 18, 5, 2, NULL, ''),
(6, 'Modélisation du carbone 14 et du tritium en Vienne. H/F', 'Description de l''offre\r\nLe Département Laboratoire National d''Hydraulique et Environnement (LNHE) regroupe les compétences de la R&D d''EDF dans le domaine de l''eau : écoulements à surface libre et souterrain, qualité des eaux, environnement aquatique des ouvrages de production. La compétence Radioécologie du département LNHE a pour rôle d''étudier le transfert et le comportement des radionucléides dans l''environnement. Les études menées sur le carbone 14 (en parallèle du tritium) par ce groupe lui confèrent une expertise reconnue dans la thématique abordée ici.\r\n\r\nLe LNHE développe depuis plus de 20 ans le logiciel Mascaret qui est un code de modélisation hydraulique monodimensionnelle à surface libre, basé sur les équations de Saint-Venant. Il peut être couplé à un module de qualité d''eau : le module TRACER. Ce module peut être modifié afin de décrire les processus de synthèse/dégradation de la matière organique dans le cours d''eau ainsi que le comportement des phases minérales.\r\n\r\nDes travaux antérieurs ont permis de développer avec Mascaret-Tracer un modèle de transfert du carbone 14 et du tritium dans la Vienne (affluent de la Loire) où est hébergé un centre national de production nucléaire d''électricité (CNPE). Ce modèle a été confronté avec des données expérimentales, obtenues lors de campagne de mesure. De nouvelles données sont en cours d''analyse. Les objectifs du stage s''inscrivent dans une dynamique d''amélioration du modèle existant et de hiérarchisation des paramètres du modèle.\r\no Dans un premier temps, le stagiaire devra améliorer le modèle de qualité d''eau décrivant la photosynthèse et la respiration. Pour cette étape, les variations du pH devront être modélisées, en lien avec l''alcalinité et les équilibres des carbonates. Une réflexion sur les variations de la demande biologique en oxygène (DBO), en lien avec les organismes photosynthétiques présents en Vienne sera aussi attendue.\r\no De nouvelles mesures (carbone 14), collectées sur le terrain et actuellement en cours d''analyse, seront disponibles pour le stagiaire et devront être confrontées au modèle de carbone 14.\r\no Enfin, une analyse de sensibilité sera menée pour évaluer l''influence respective des paramètres du modèle sur les grandeurs relatives à la qualité d''eau (DBO, pH, phytoplancton...). Selon l''avancée du stage, des pistes pourront être explorées pour réduire ces incertitudes.\r\n\r\nProfil souhaité\r\nLe/la candidat(e) devra avoir des connaissances en modélisation et idéalement en géochimie des milieux aquatiques. Il sera encadré par un chercheur en biogéochimie et pourra s''appuyer sur un chercheur en modélisation hydraulique.\r\n', 1, '', '', NULL, 8, 22, 7, 2, NULL, '17/10/2016'),
(7, 'Déploiement du projet d''innovation de la DIPDE H/F', 'Description de l''offre\r\nLa Division de l''Ingénierie du Parc, de la Déconstruction et de l''Environnement d''EDF, forte de 1900 collaborateurs répartis sur Marseille, Lyon et 11 sites nucléaires (Equipes communes), a pour mission de :\r\n- Concevoir et réaliser les modifications des matériels, systèmes et bâtiments du parc nucléaire en exploitation et adapter les processus de conduite,\r\n- Assurer l''intégrité de la conception des centrales nucléaires durant toute la période d''exploitation (Design Authority)\r\n- Réaliser les études techniques en support aux projets de déconstruction et environnement.\r\n\r\nActivités et missions confiées au stagiaire :\r\n\r\nEn relation étroite avec le responsable de l''Innovation de la DIVISION, vous aurez pour mission de réfléchir et développer une stratégie promotionnelle de l''innovation. C''est du besoin de développer la présentation des idées prometteuses qu''est nait l''idée de s''appuyer sur une nouvelle vision pour contribuer, animer et promouvoir l''innovation au sein de la Division et des entreprises régionales. Vous serez intégré dans une équipe dynamique favorisant la créativité et en relation avec la communication.\r\n\r\nEntre autres, les différents objectifs de la mission sont les suivants :\r\n- Créer des supports interactifs de promotion de l''innovation à la DIPDE,\r\n- Animer les activités de communication sur l''innovation,\r\n- Préparer la mise en oeuvre d''une exposition, voire l''initier,\r\n- Stimuler l''échange et le partage au sein même de la DIPDE,\r\n- Développer l''innovation fournisseurs\r\n- Réaliser des vidéos et films d''animation,\r\n- Animer des Equipes Communes DIPDE situées sur les centrales Nucléaires,\r\n- Rédiger des articles sur l''intranet du Groupe EDF,\r\n- Contribuer à l''Animation du PULSE PACA.\r\n\r\nEn fonction du profil de la personne sélectionnée, d''autres missions pourront être confiées.\r\n\r\n\r\nProfil souhaité\r\nNous recherchons un ou une titulaire d''un BTS Communication, en formation L3 à Master pour un stage, avec une forte orientation sur l''utilisation des outils informatiques et de création de supports (fixes et animés) et ayant une motivation particulière pour la gestion de projets de communication aussi bien en interne qu''en externe.\r\n\r\nVous maîtrisez les outils de communication avec un fort intérêt pour le digital et ses nouveaux outils, vous êtes créatif, organisé, rigoureux (se), doté d''un bon savoir faire et d''un savoir être, ce poste est pour vous.\r\n\r\nSi cette offre vous intéresse et correspond à votre projet professionnel, merci de nous adresser les documents suivants :\r\n- Votre CV,\r\n- Lettre de motivation en valorisant vos expériences, qu''elles soient professionnelles ou non, en lien avec cette offre.', 1, '', '', NULL, 7, 6, 7, 2, NULL, '14/10/2016'),
(8, 'Amélioration du processus opérationnel d''intégration de modifications en centrale nucléaire H/F', 'Description de l''offre\r\nLa Division de l''Ingénierie du Parc, de la Déconstruction et de l''Environnement d''EDF, forte de 1900 collaborateurs répartis sur Marseille, Lyon et 11 sites nucléaires (équipes communes), a pour mission de :\r\n- Concevoir et réaliser les modifications des matériels, systèmes et bâtiments du parc nucléaire en exploitation et adapter les processus de conduite,\r\n- Assurer l''intégrité de la conception des centrales nucléaires durant toute la période d''exploitation (Design Authority)\r\n- Réaliser les études techniques en support aux projets de déconstruction et environnement.\r\n\r\nLe stage se déroule en centrale nucléaire au sein de l''équipe commune de St Alban.\r\n\r\nVous participerez activement à l''amélioration du processus opérationnel d''intégration de modifications en centrale. Plus précisément, cela consiste à effectuer les missions suivantes:\r\n\r\n- Comprendre le processus général et opérationnel d''intégration des modifications sur site,\r\n- Suivre une modification de la phase préparation à la phase réalisation sur le terrain,\r\n- Etre en appui aux chargés d''affaires pour la préparation de chantier (analyse de risques, demande de régime de consignation, analyse de schémas électriques, etc..),\r\n- Recenser les bonnes pratiques des chargés d''affaires et établir un livret d''apprentissage et de bonnes pratiques pour les nouveaux arrivants,\r\n- Travailler en collaboration avec les membres de l''équipe commune pour améliorer le processus (mise en place d''outils informatiques par exemple)\r\n\r\nCette mission est pour vous une opportunité d''acquérir une expérience à la fois humaine, technique, opérationnelle et organisationnelle.\r\n\r\nProfil souhaité\r\nStage de niveau bac+5, dernière année d''études\r\n\r\noption : Formation généraliste / génie nucléaire / Génie electrique / Automatisme\r\n\r\nEcoles de préférence : ENSIL.\r\n\r\nCompétences souhaitées : Idéalement, une première expérience dans le domaine de l''énergie et/ou une expérience dans le management de projet est souhaitée.\r\n\r\nOutils : Maîtrise du pack Office, notamment Excel.\r\n\r\nQualités attendues : écoute, force de proposition, rigueur, esprit synthétique, organisation et autonomie\r\n\r\n', 1, '', '', NULL, NULL, 9, 8, 2, NULL, '13/10/2016'),
(9, 'GESTIONNAIRE MIDDLE-OFFICE EN FINANCEMENT DE PROJET H/F', 'Description de l''offre\r\nFiliale du groupe EDF, EDF Energies Nouvelles (plus de 3 009 salariés, chiffre d''affaires de 1 085 MEUR en 2014, plus de 7 517 MW bruts en exploitation) est un leader de la production d''électricité verte. Avec un développement centré sur l''éolien et le solaire photovoltaïque, l''entreprise est également active sur d''autres filières des énergies renouvelables : éolien offshore, énergies marines, petite hydraulique, biogaz, biomasse. EDF EN est présent à l''international, principalement en Europe (France, Italie, Portugal, Grèce, Turquie, Royaume-Uni, Belgique, Allemagne, Espagne, Bulgarie) et en Amérique du Nord (Etats-Unis, Canada et Mexique) et est entrée récemment au Maroc, Afrique du Sud, en Israël et au Brésil. La Société intègre tous les métiers : le développement, la construction, la production et l''exploitation de centrales d''électricité verte.\r\n\r\nL''équipe Middle-Office de la Direction des Financements Structurés (rattachée à la DF du Groupe) a pour mission la gestion et le suivi (sous un angle financier, contractuel, opérationnel et administratif) des financements de projets (éoliens et solaires) mis en place en France avec des banques internationales.\r\n\r\nMission du stagiaire : Appui des équipes dans le suivi de la relation bancaire et de la satisfaction des obligations contractuelles des financements de projets et participation aux travaux transverses. Le candidat contribuera notamment :\r\no à l''aide des collaborateurs sur les calculs des ratios financiers, l''établissement de budget et/ou sur les mises à jour des business plan / modèles.\r\no à l''aide des collaborateurs sur l''élaboration des rapports d''exploitation, de construction et/ou sur le suivi des tirages de la dette.\r\no à la participation des projets transverses (état des lieux sur les nantissements, sur les comptes bloqués, sur le processus de facturation, sur les méthodologies de calculs des ratios, sur les contraintes contractuelles et participation à la proposition d''amélioration des processus ou de la présentation de l''information).\r\n\r\n\r\nProfil souhaité\r\nNiveau d''études : Bac+3 à 5\r\nType d''école : universitaire ou école de commerce\r\nDomaines de connaissance : finance d''entreprise, analyse financière\r\nSavoir être : rigoureux, méthodique, autonome, initiative, professionnel, travail en équipe et fluidité rédactionnelle\r\n\r\nLangues\r\nAnglais (rédaction de mails et lecture de contrat en anglais)\r\n\r\nInformatique\r\nBonne maîtrise d''Excel\r\n\r\nSTAGE A PARTIR DE JANVIER 2017', 1, 'A partir de janvier 2017', '', NULL, 2, 7, 6, 2, NULL, '07/10/2016'),
(10, 'GESTIONNAIRE MIDDLE-OFFICE EN FINANCEMENT DE PROJET H/F', 'Description de l''offre\r\nFiliale du groupe EDF, EDF Energies Nouvelles (plus de 3 009 salariés, chiffre d''affaires de 1 085 MEUR en 2014, plus de 7 517 MW bruts en exploitation) est un leader de la production d''électricité verte. Avec un développement centré sur l''éolien et le solaire photovoltaïque, l''entreprise est également active sur d''autres filières des énergies renouvelables : éolien offshore, énergies marines, petite hydraulique, biogaz, biomasse. EDF EN est présent à l''international, principalement en Europe (France, Italie, Portugal, Grèce, Turquie, Royaume-Uni, Belgique, Allemagne, Espagne, Bulgarie) et en Amérique du Nord (Etats-Unis, Canada et Mexique) et est entrée récemment au Maroc, Afrique du Sud, en Israël et au Brésil. La Société intègre tous les métiers : le développement, la construction, la production et l''exploitation de centrales d''électricité verte.\r\n\r\nL''équipe Middle-Office de la Direction des Financements Structurés (rattachée à la DF du Groupe) a pour mission la gestion et le suivi (sous un angle financier, contractuel, opérationnel et administratif) des financements de projets (éoliens et solaires) mis en place en France avec des banques internationales.\r\n\r\nMission du stagiaire : Appui des équipes dans le suivi de la relation bancaire et de la satisfaction des obligations contractuelles des financements de projets et participation aux travaux transverses. Le candidat contribuera notamment :\r\no à l''aide des collaborateurs sur les calculs des ratios financiers, l''établissement de budget et/ou sur les mises à jour des business plan / modèles.\r\no à l''aide des collaborateurs sur l''élaboration des rapports d''exploitation, de construction et/ou sur le suivi des tirages de la dette.\r\no à la participation des projets transverses (état des lieux sur les nantissements, sur les comptes bloqués, sur le processus de facturation, sur les méthodologies de calculs des ratios, sur les contraintes contractuelles et participation à la proposition d''amélioration des processus ou de la présentation de l''information).\r\n\r\n\r\nProfil souhaité\r\nNiveau d''études : Bac+3 à 5\r\nType d''école : universitaire ou école de commerce\r\nDomaines de connaissance : finance d''entreprise, analyse financière\r\nSavoir être : rigoureux, méthodique, autonome, initiative, professionnel, travail en équipe et fluidité rédactionnelle\r\n\r\nLangues\r\nAnglais (rédaction de mails et lecture de contrat en anglais)\r\n\r\nInformatique\r\nBonne maîtrise d''Excel\r\n\r\nSTAGE A PARTIR DE JANVIER 2017', 1, 'Mai 2017', '', NULL, 5, 7, 7, 2, NULL, '10/10/2016'),
(11, 'Simulation numérique de l''impact d''un projectile sur un ouvrage en béton H/F', 'Description de l''offre\r\nLa Division de l''Ingénierie du Parc, de la Déconstruction et de l''Environnement d''EDF, forte de 1900 collaborateurs répartis sur Marseille, Lyon et 11 sites nucléaires (Equipes communes), a pour mission de :\r\n- Concevoir et réaliser les modifications des matériels, systèmes et bâtiments du parc nucléaire en exploitation et adapter les processus de conduite,\r\n- Assurer l''intégrité de la conception des centrales nucléaires durant toute la période d''exploitation (Design Authority)\r\n- Réaliser les études techniques en support aux projets de déconstruction et environnement.\r\n\r\nLe service Génie Civil est en charge de l''ingénierie des ouvrages de l''ilôt nucléaire. Le service génie civil est notament amené à justifier la résistance d''ouvrages existants pour des agressions comme le séisme ou divers projectiles. Après une phase d''appropriation du contexte et des méthodes, le stagiaire réalisera une étude numérique de l''impact d''un projectile sur un ouvrage en béton armé à l''aide du logiciel Europlexus. Il mettra en oeuvre des modèles de comportement complexe de section de béton armé, en s''appuyant sur des études déjà réalisées par EDF.\r\n\r\nProfil souhaité\r\nStage niveau bac+5, avec option génie civil.\r\n\r\nCompétences nécessaires : calcul éléments finis, béton armé (Eurocode 2).\r\n\r\nEcoles de préférence :\r\nMines de Nancy, Mines de Paris, Mines de St Etienne, Polytechnique, Centrale Paris, Ecole Nationale des Ponts et Chaussées (Paris),\r\n\r\nEcoles spécialisées Génie Civil (ou généraliste + option GC) :\r\nEcole Centrale de Lyon, INSA etc.\r\n', 4, '', '', NULL, 6, 8, 7, 1, NULL, '06/10/2016'),
(12, 'STAGE - BZEE/ BTS MI - EOLIEN H/F', 'Description de l''offre\r\nFiliale du groupe EDF, EDF Energies Nouvelles (plus de 2 200 salariés, chiffre d''affaires de 1 351 MEUR en 2011, plus de 4 000 MW bruts en exploitation) est un leader de la production d''électricité verte. Avec un développement centré sur l''éolien et le solaire photovoltaïque, l''entreprise est également active sur d''autres filières des énergies renouvelables : éolien offshore, énergies marines, petite hydraulique, biogaz, biomasse. EDF EN est présent à l''international, principalement en Europe (France, Italie, Portugal, Grèce, Turquie, Royaume-Uni, Belgique, Allemagne, Espagne, Bulgarie) et en Amérique du Nord (Etats-Unis, Canada et Mexique) et est entrée récemment au Maroc, Afrique du Sud et en Israël. La Société intègre tous les métiers : le développement, la construction, la production et l''exploitation de centrales d''électricité verte.\r\n\r\nNous recherchons un(e) stagiaire pour une durée de 2 mois en tant que Technicien(ne) de maintenance éolien.\r\n\r\nDescriptif : Au sein de la Direction Exploitation & Maintenance , vous êtes rattaché(e) hiérarchiquement au Responsable de Zone. Vous intégrez une équipe de Techniciens de Maintenance et vous participez aux missions suivantes :\r\n\r\n- Assurer la maintenance préventive et corrective des éoliennes\r\n- Intervenir sur les entretiens, les manoeuvres, les réparations d''équipements (détection de pannes, rapports, proposition d''action, intervention, remplacement de pièces, essai et remise en service, etc.)\r\n- Intervenir sur les équipements électriques et mécaniques en liaison avec votre tuteur et le centre de conduite centralisé\r\n- Suivre les procédures et le planning d''interventions, rédiger des rapports d''interventions dans l''outil informatique\r\n\r\nMerci de candidater en précisant la localisation souhaitée. Les localisations possibles sont Colombiers (34), Villeveyrac (34), Salles Curan (12), Saint Gilles (35), Mondeville (14) Fresnay l''Evêque (28), Bar Le Duc (55), Saint Quentin (02).\r\n\r\n.\r\n\r\n\r\nProfil souhaité\r\n\r\nFormation :En préparation du diplôme BZEE\r\n\r\nProfil :\r\n- Technicien(ne) en reconversion professionnelle / Technicien(ne) en maintenance industrielle, à dominante électrotechnique\r\n- Bonnes connaissances dans les domaines suivants :\r\n- électricité de puissance et des automatismes\r\n- circuits hydrauliques\r\n- mécanique générale\r\n- Utilisation courante des outils informatiques de bureautique\r\n- Permis de conduire requis.\r\n\r\nLangues : Bon niveau d''anglais\r\n\r\nQualités recherchées : Autonome, sens de l''analyse, rigueur, dynamisme, conscience professionnelle, esprit d''équipe, bonne condition physique et disposé(e) à monter dans les éoliennes (jusqu''à 100 mètres de hauteur).', 1, '', '', NULL, 4, 10, 5, 3, NULL, '05/10/2016'),
(13, 'Développement de nouvelles méthodologies agressions internes H/F', 'Description de l''offre\r\nLe Service Etudes et Projets Thermiques Et Nucléaires (SEPTEN) est le centre d''expertise en sûreté nucléaire et en conception des centrales nucléaires d''EDF.\r\nDans ce cadre, ses principales missions sont les suivantes :\r\n- apporter une expertise de haut niveau sur la sûreté nucléaire à la conception des installations ;\r\n- être en appui au parc en exploitation et contribuer à sa performance ;\r\n- innover pour élargir l''offre d''EDF avec de nouveaux modèles de réacteurs sûrs et compétitifs et ainsi préparer l''avenir ;\r\n- contribuer à la compétitivité des projets nucléaires internationaux du Groupe.\r\n\r\nLe stage se déroulera au sein de la Division Fonctionnement général et Conduite (FC) - Groupe Fiabilité & EPS Evènements Internes (FI).\r\n\r\nDans le cadre de l''amélioration des EPS agressions pour les Nouveaux Réacteurs Nucléaires, de nouvelles méthodologies prenant en compte les risques de propagation des effets d''une agression sont envisagées. Dans les méthodes historiques, le périmètre d''effet étudié est borné (généralement en concordance avec celui de l''approche déterministe) et les barrières physiques ou actives existantes classées de sûreté sont supposées totalement fiables, ne permettant pas de mesurer pleinement le risque d''effet falaise en cas de défaillances de ces barrières : la prise en compte de ce risque n''était industriellement pas possible jusqu''à présent du fait de limitations du logiciel RISKSPECTRIM utilisé par EDF en support aux EPS pour calculer des risques.\r\n\r\nL''objet principal du stage serait de tester la faisabilité des nouveaux concepts développés et leur industrialisation (développements des prototypes outils en vue d''une automatisation pour réduire les délais d''étude), de les valider en comparant les enseignements obtenus par rapport à des cas de référence concernant le réacteur EPR basés sur des méthodologies historiques, et le cas échéant de proposer des améliorations.\r\n\r\nL''agression interne à évaluer en priorité concernerait le risque incendie. Une transposition aux risques explosion interne, voir inondation interne sera envisageable en fonction de l''avancement des travaux réalisés.\r\n\r\nLes risques mesurés concerneront indifféremment le calcul de la fréquence de fusion du coeur (en cuve ou en piscine de désactivation), la fréquence d''ébullition en piscine de désactivation ou la fréquence de rejets anormaux.\r\n\r\nLe(s) stagiaire(s) devra(ont) faire preuve d''autonomie, notamment par rapport aux outils à utiliser, et de curiosité intellectuelle pour comprendre les enjeux liés aux risques mesurés. Un minimum de connaissances sur le fonctionnement des Réacteurs à Eau Pressurisée (accidents et moyens de mitigation utilisés) et sur la Sûreté Nucléaire est nécessaire pour pouvoir valider les séquences fonctionnelles obtenues à l''issue de calculs EPS.\r\n\r\nLe(s) stagiaire(s) sera(ont) accompagné(s) pour la prise en main du logiciel RISKSPECTRUM et initié(s) si besoin aux spécificités de la démonstration probabiliste de sûreté.\r\n\r\n\r\n\r\nProfil souhaité\r\nNiveau de formation pré-requis :\r\nDernière année d''école d''Ingénieur ou Master 2.\r\n\r\nVous avez de bonnes connaissances informatiques, et notamment :\r\n- Des connaissances du langage PYTHON\r\n- Des connaissances du langage SQL et des principes des SGBR\r\n- Des connaissances du formalisme XML\r\n\r\nVous détenez des connaissances techniques telles que :\r\n- Fonctionnement des REP\r\n- Sûreté Nucléaire\r\n- Phénoménologie des agressions d''origine humaine (incendie, explosion, incendie)\r\n\r\nN''hésitez plus, ce stage est fait pour vous.\r\nRejoignez nous en envoyant votre candidature (CV + Lettre de Motivation) !\r\n', 3, '', '', NULL, 3, 13, 7, 3, NULL, '04/10/2016'),
(14, 'STAGE - BZEE/ BTS MI - EOLIEN H/F', 'Description de l''offre\r\nFiliale du groupe EDF, EDF Energies Nouvelles (plus de 2 200 salariés, chiffre d''affaires de 1 351 MEUR en 2011, plus de 4 000 MW bruts en exploitation) est un leader de la production d''électricité verte. Avec un développement centré sur l''éolien et le solaire photovoltaïque, l''entreprise est également active sur d''autres filières des énergies renouvelables : éolien offshore, énergies marines, petite hydraulique, biogaz, biomasse. EDF EN est présent à l''international, principalement en Europe (France, Italie, Portugal, Grèce, Turquie, Royaume-Uni, Belgique, Allemagne, Espagne, Bulgarie) et en Amérique du Nord (Etats-Unis, Canada et Mexique) et est entrée récemment au Maroc, Afrique du Sud et en Israël. La Société intègre tous les métiers : le développement, la construction, la production et l''exploitation de centrales d''électricité verte.\r\n\r\nNous recherchons un(e) stagiaire pour une durée de 2 mois en tant que Technicien(ne) de maintenance éolien.\r\n\r\nDescriptif : Au sein de la Direction Exploitation & Maintenance , vous êtes rattaché(e) hiérarchiquement au Responsable de Zone. Vous intégrez une équipe de Techniciens de Maintenance et vous participez aux missions suivantes :\r\n\r\n- Assurer la maintenance préventive et corrective des éoliennes\r\n- Intervenir sur les entretiens, les manoeuvres, les réparations d''équipements (détection de pannes, rapports, proposition d''action, intervention, remplacement de pièces, essai et remise en service, etc.)\r\n- Intervenir sur les équipements électriques et mécaniques en liaison avec votre tuteur et le centre de conduite centralisé\r\n- Suivre les procédures et le planning d''interventions, rédiger des rapports d''interventions dans l''outil informatique\r\n\r\nMerci de candidater en précisant la localisation souhaitée. Les localisations possibles sont Colombiers (34), Villeveyrac (34), Salles Curan (12), Saint Gilles (35), Mondeville (14) Fresnay l''Evêque (28), Bar Le Duc (55), Saint Quentin (02).\r\n\r\n.\r\n\r\n\r\nProfil souhaité\r\n\r\nFormation :En préparation du diplôme BZEE\r\n\r\nProfil :\r\n- Technicien(ne) en reconversion professionnelle / Technicien(ne) en maintenance industrielle, à dominante électrotechnique\r\n- Bonnes connaissances dans les domaines suivants :\r\n- électricité de puissance et des automatismes\r\n- circuits hydrauliques\r\n- mécanique générale\r\n- Utilisation courante des outils informatiques de bureautique\r\n- Permis de conduire requis.\r\n\r\nLangues : Bon niveau d''anglais\r\n\r\nQualités recherchées : Autonome, sens de l''analyse, rigueur, dynamisme, conscience professionnelle, esprit d''équipe, bonne condition physique et disposé(e) à monter dans les éoliennes (jusqu''à 100 mètres de hauteur).', 1, '', '', NULL, 4, 10, 5, 3, NULL, '05/10/2016'),
(15, 'Développement de nouvelles méthodologies agressions internes H/F', 'Description de l''offre\r\nLe Service Etudes et Projets Thermiques Et Nucléaires (SEPTEN) est le centre d''expertise en sûreté nucléaire et en conception des centrales nucléaires d''EDF.\r\nDans ce cadre, ses principales missions sont les suivantes :\r\n- apporter une expertise de haut niveau sur la sûreté nucléaire à la conception des installations ;\r\n- être en appui au parc en exploitation et contribuer à sa performance ;\r\n- innover pour élargir l''offre d''EDF avec de nouveaux modèles de réacteurs sûrs et compétitifs et ainsi préparer l''avenir ;\r\n- contribuer à la compétitivité des projets nucléaires internationaux du Groupe.\r\n\r\nLe stage se déroulera au sein de la Division Fonctionnement général et Conduite (FC) - Groupe Fiabilité & EPS Evènements Internes (FI).\r\n\r\nDans le cadre de l''amélioration des EPS agressions pour les Nouveaux Réacteurs Nucléaires, de nouvelles méthodologies prenant en compte les risques de propagation des effets d''une agression sont envisagées. Dans les méthodes historiques, le périmètre d''effet étudié est borné (généralement en concordance avec celui de l''approche déterministe) et les barrières physiques ou actives existantes classées de sûreté sont supposées totalement fiables, ne permettant pas de mesurer pleinement le risque d''effet falaise en cas de défaillances de ces barrières : la prise en compte de ce risque n''était industriellement pas possible jusqu''à présent du fait de limitations du logiciel RISKSPECTRIM utilisé par EDF en support aux EPS pour calculer des risques.\r\n\r\nL''objet principal du stage serait de tester la faisabilité des nouveaux concepts développés et leur industrialisation (développements des prototypes outils en vue d''une automatisation pour réduire les délais d''étude), de les valider en comparant les enseignements obtenus par rapport à des cas de référence concernant le réacteur EPR basés sur des méthodologies historiques, et le cas échéant de proposer des améliorations.\r\n\r\nL''agression interne à évaluer en priorité concernerait le risque incendie. Une transposition aux risques explosion interne, voir inondation interne sera envisageable en fonction de l''avancement des travaux réalisés.\r\n\r\nLes risques mesurés concerneront indifféremment le calcul de la fréquence de fusion du coeur (en cuve ou en piscine de désactivation), la fréquence d''ébullition en piscine de désactivation ou la fréquence de rejets anormaux.\r\n\r\nLe(s) stagiaire(s) devra(ont) faire preuve d''autonomie, notamment par rapport aux outils à utiliser, et de curiosité intellectuelle pour comprendre les enjeux liés aux risques mesurés. Un minimum de connaissances sur le fonctionnement des Réacteurs à Eau Pressurisée (accidents et moyens de mitigation utilisés) et sur la Sûreté Nucléaire est nécessaire pour pouvoir valider les séquences fonctionnelles obtenues à l''issue de calculs EPS.\r\n\r\nLe(s) stagiaire(s) sera(ont) accompagné(s) pour la prise en main du logiciel RISKSPECTRUM et initié(s) si besoin aux spécificités de la démonstration probabiliste de sûreté.\r\n\r\n\r\n\r\nProfil souhaité\r\nNiveau de formation pré-requis :\r\nDernière année d''école d''Ingénieur ou Master 2.\r\n\r\nVous avez de bonnes connaissances informatiques, et notamment :\r\n- Des connaissances du langage PYTHON\r\n- Des connaissances du langage SQL et des principes des SGBR\r\n- Des connaissances du formalisme XML\r\n\r\nVous détenez des connaissances techniques telles que :\r\n- Fonctionnement des REP\r\n- Sûreté Nucléaire\r\n- Phénoménologie des agressions d''origine humaine (incendie, explosion, incendie)\r\n\r\nN''hésitez plus, ce stage est fait pour vous.\r\nRejoignez nous en envoyant votre candidature (CV + Lettre de Motivation) !\r\n', 3, '', '', NULL, 3, 13, 7, 3, NULL, '04/10/2016'),
(16, 'Etude d''optimisation des analyses de risques au sein de la Structure Travaux Neufs de la Centrale de Bugey H/F', 'Description de l''offre\r\nLa Division de l''Ingénierie du Parc, de la Déconstruction et de l''Environnement d''EDF, forte de 1900 collaborateurs répartis sur Marseille, Lyon et 11 sites nucléaires (équipes communes), a pour mission de :\r\n- Concevoir et réaliser les modifications des matériels, systèmes et bâtiments du parc nucléaire en exploitation et adapter les processus de conduite,\r\n- Assurer l''intégrité de la conception des centrales nucléaires durant toute la période d''exploitation (Design Authority)\r\n- Réaliser les études techniques en support aux projets de déconstruction et environnement.\r\n\r\nL''Equipe Commune de la centrale nucléaire de Bugey a la responsabilité de réceptionner et mettre en oeuvre les dossiers de travaux de modifications visant à répondre aux enjeux de sûreté et de sécurité toujours plus exigeants sur les sites.\r\nDans ce contexte, il est primordial d''anticiper au mieux tous les risques associés aux chantiers mis en oeuvre, tant du point de vue de la sûreté que sur celui de la sécurité afin de limiter les impacts.\r\n\r\nLa mission de l''Ingénieur stagiaire, rattaché à l''Equipe Commune sera scindée en trois phases :\r\n- une première phase axée terrain qui visera à se rendre régulièrement sur les chantiers pour prendre connaissance de l''environnement de la centrale et des risques associés, et qui se conclura par une première synthèse des analyses de risques terrain produites. Cette phase permettra également à l''élève ingénieur d''établir un état des lieux précis des processus relatifs à la gestion du risque actuellement en place sur les sites EDF ainsi que l''usage qui en est fait (env. 2,5 mois) ;\r\n- une seconde phase permettra l''analyse globale de la situation, croisant à la fois les informations recueillies lors des premières semaines, les dispositifs d''ores et déjà mis en oeuvre au sein des Equipes Communes, ainsi que les connaissances du stagiaire en termes de maîtrise des risques. Cette phase devra déboucher sur la production d''un outil simplifié de gestion des risques applicable dans le cadre des dossiers de l''Equipe Commune, et permettant d''avoir à la fois une vision synthétique et rationnelle des enjeux d''un dossier type (env. 2 mois) ;\r\n- la dernière phase consistera à déployer l''outil sur les chantiers en cours, d''ajuster si besoin et de faire un Retour d''EXpérience de la nouvelle démarche. La mission se conclura par une présentation de l''outil à l''Equipe Commune (env. 1,5 mois).\r\n\r\nProfil souhaité\r\nStage de niveau bac+5, dernière année d''études\r\n\r\noption Maitrise des Risques Industriels\r\n\r\nEcoles de préférence : INSA Centre - Val de Loire, ENSAM, Mines Paris (Master spécialisé), Polytech Grenoble, Centrale Nantes.\r\n\r\nCompétences souhaitées :\r\n- Compétences solides en Maîtrise des Risques : APR, AMDEC, Arbres de Causes.\r\n- Connaissance globale du fonctionnement d''un REP.\r\n- Connaissance souhaitée des référentiels sécurité (ISO 18001,...)\r\n- Maîtrise d''Excel souhaitée (bases langage VBA)\r\n\r\n', 2, '', '', NULL, 4, 22, 7, 3, NULL, '03/10/2016'),
(17, 'Création de base de données pour le pilotage et le suivi des activités de l''AIS H/F', 'Description de l''offre\r\nLa Division de l''Ingénierie du Parc, de la Déconstruction et de l''Environnement d''EDF, forte de 1900 collaborateurs répartis sur Marseille, Lyon et 11 sites nucléaires (équipes communes), a pour mission de :\r\n- Concevoir et réaliser les modifications des matériels, systèmes et bâtiments du parc nucléaire en exploitation et adapter les processus de conduite,\r\n- Assurer l''intégrité de la conception des centrales nucléaires durant toute la période d''exploitation (Design Authority)\r\n- Réaliser les études techniques en support aux projets de déconstruction et environnement..\r\n\r\nAu sein de la DIPDE, le Département Réalisation a en charge la préparation et la réalisation de modifications réalisées sur les réacteurs nucléaires par les Equipes Communes. Pour gérer les pics de charge des Equipes Communes, des personnels se déplacent régulièrement d''une équipe commune à une autre. Ces déplacements (appelés aide inter-sites) sont planifiés et gérés l''année N-1 pour l''année N.\r\n\r\nIntégré au Service Aide Inter Sites, sous la tutelle d''un Chef de Groupe, vous lui apportez votre soutien sur les aspects concernant l''ergonomie et l''expérience utilisateur et serez améné à effectuer tout ou partie des travaux suivants :\r\n- se familiariser avec l''environnemet technique et les outils en place : IPE, excel (VBA) et Lotus notes\r\n- analyser les applications existantes et recueillir les retours de leurs utilsateurs,\r\n- rédiger une série de recommandations concrètes pour améliorer l''ergonomie des applications étudiées,\r\n- réaliser tout ou partie de ces recommandations\r\n\r\nProfil souhaité\r\nStage de niveau bac+5, dernière année d''études\r\n\r\nOption Informatique\r\n\r\nEcoles de préférences : ENSIMAG/INPG, ENSTA Paris, X-Palaiseau, SUPELEC, Ecole nationale supérieure des télécommunications, INSA, ENSAM.\r\n\r\nCompétences souhaitées Informatiques : création de base de données-VBA - share Point', 15, '', '', NULL, 7, 11, 8, 3, NULL, '03/10/2016');

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE IF NOT EXISTS `posseder` (
  `ID_Offre` int(11) NOT NULL,
  `ID_Candidature` int(11) NOT NULL,
  PRIMARY KEY (`ID_Offre`,`ID_Candidature`),
  KEY `FK_posseder_ID_Candidature` (`ID_Candidature`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `posseder`
--

INSERT INTO `posseder` (`ID_Offre`, `ID_Candidature`) VALUES
(3, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 5),
(8, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(15, 11),
(16, 11),
(17, 12),
(14, 13),
(13, 14),
(12, 15),
(11, 16),
(10, 17),
(9, 18),
(8, 19),
(7, 20),
(6, 21),
(3, 22),
(5, 23),
(7, 24),
(9, 25),
(11, 26),
(13, 27),
(15, 28),
(17, 29),
(4, 30);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

CREATE TABLE IF NOT EXISTS `stagiaire` (
  `ID_Stagiaire` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(25) DEFAULT NULL,
  `Prenom` varchar(25) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Description` longtext,
  `Niveau` varchar(25) DEFAULT NULL,
  `ID_User` int(11) NOT NULL,
  PRIMARY KEY (`ID_Stagiaire`,`ID_User`),
  KEY `FK_STAGIAIRE_ID_User` (`ID_User`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `stagiaire`
--

INSERT INTO `stagiaire` (`ID_Stagiaire`, `Nom`, `Prenom`, `Age`, `Description`, `Niveau`, `ID_User`) VALUES
(1, 'test', 'test', 18, 'Bonjour', 'Bac', 2),
(2, 'NOM', 'Anthony', 27, 'DESIGNATION D''ANTHONY', 'Bac +4', 3),
(3, 'NOM', 'Vincent', 20, 'Description de Vincent', 'Bac +3', 4),
(4, 'DALLARD', 'Bastien', 22, 'BLABLA PASQUIER BLABLA RFIT', 'BAC +3', 5);

-- --------------------------------------------------------

--
-- Structure de la table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `ID_State` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_State`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `state`
--

INSERT INTO `state` (`ID_State`, `Libelle`) VALUES
(1, 'Candidature envoyé'),
(2, 'Candidature consulté par l''entreprise'),
(3, 'Refusé'),
(4, 'Accepté'),
(5, 'Stage commencé'),
(6, 'Stage terminé');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_User` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Tel` varchar(25) DEFAULT NULL,
  `Mail` varchar(255) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Link_Linkedin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_User`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`ID_User`, `Login`, `Password`, `Tel`, `Mail`, `Adresse`, `Link_Linkedin`) VALUES
(1, 'Test', 'Test', '0600300000', 'test@test.fr', '69009 address', 'http://..............com/......'),
(2, 'Test_Stag', 'Test', '0600300000', 'test@test.fr', '69009 Adresse', 'http://..............com/......'),
(3, 'anthony', 'root', '06-06-06-06-06', 'anthony@gail.com', 'lyon', ' '),
(4, 'vincent', 'root', '07-07-07-07-07', 'vincent@gmail.com', 'lyon', NULL),
(5, 'jf', 'root', '08-08-08-08-08', 'jf@gmail.com', 'montélimar', NULL),
(6, 'bastien', 'root', '09-09-09-09-09', 'bastien@gmail.com', 'aubenas', NULL),
(7, 'teddy', 'root', '10-10-10-10-10', 'teddy@gmail.com', 'aaaa', NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `candidature`
--
ALTER TABLE `candidature`
  ADD CONSTRAINT `FK_CANDIDATURE_ID_Stagiaire` FOREIGN KEY (`ID_Stagiaire`) REFERENCES `stagiaire` (`ID_Stagiaire`),
  ADD CONSTRAINT `FK_CANDIDATURE_ID_State` FOREIGN KEY (`ID_State`) REFERENCES `state` (`ID_State`),
  ADD CONSTRAINT `FK_CANDIDATURE_ID_User` FOREIGN KEY (`ID_User`) REFERENCES `user` (`ID_User`);

--
-- Contraintes pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD CONSTRAINT `FK_ENTREPRISE_ID_User` FOREIGN KEY (`ID_User`) REFERENCES `user` (`ID_User`);

--
-- Contraintes pour la table `noter`
--
ALTER TABLE `noter`
  ADD CONSTRAINT `FK_noter_ID_Entreprise` FOREIGN KEY (`ID_Entreprise`) REFERENCES `entreprise` (`ID_Entreprise`),
  ADD CONSTRAINT `FK_noter_ID_Stagiaire` FOREIGN KEY (`ID_Stagiaire`) REFERENCES `stagiaire` (`ID_Stagiaire`),
  ADD CONSTRAINT `FK_noter_ID_User` FOREIGN KEY (`ID_User`) REFERENCES `user` (`ID_User`),
  ADD CONSTRAINT `FK_noter_ID_User_USER` FOREIGN KEY (`ID_User_USER`) REFERENCES `user` (`ID_User`);

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `FK_OFFRE_ID_Diplome` FOREIGN KEY (`ID_Diplome`) REFERENCES `diplome` (`ID_Diplome`),
  ADD CONSTRAINT `FK_OFFRE_ID_Domaine` FOREIGN KEY (`ID_Domaine`) REFERENCES `domaine` (`ID_Domaine`),
  ADD CONSTRAINT `FK_OFFRE_ID_Entreprise` FOREIGN KEY (`ID_Entreprise`) REFERENCES `entreprise` (`ID_Entreprise`),
  ADD CONSTRAINT `FK_OFFRE_ID_Lieu` FOREIGN KEY (`ID_Lieu`) REFERENCES `lieu` (`ID_Lieu`),
  ADD CONSTRAINT `FK_OFFRE_ID_User` FOREIGN KEY (`ID_User`) REFERENCES `user` (`ID_User`);

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `FK_posseder_ID_Candidature` FOREIGN KEY (`ID_Candidature`) REFERENCES `candidature` (`ID_Candidature`),
  ADD CONSTRAINT `FK_posseder_ID_Offre` FOREIGN KEY (`ID_Offre`) REFERENCES `offre` (`ID_Offre`);

--
-- Contraintes pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD CONSTRAINT `FK_STAGIAIRE_ID_User` FOREIGN KEY (`ID_User`) REFERENCES `user` (`ID_User`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
