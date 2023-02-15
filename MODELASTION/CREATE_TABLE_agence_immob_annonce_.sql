CREATE TABLE `agence_immob_annonce` (
  `id_annonce` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `prix` decimal(50) NOT NULL,
  `publication_Date` date NOT NULL,
  `Modification_Date` date NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `categor` varchar(15) NOT NULL,
  `Type_an` varchar(15) NOT NULL,
  `Ville` varchar(30) NOT NULL,
  `Galerie` varchar(255) NOT NULL,
  FOREIGN KEY (`id_client`) REFERENCES agence_immob_client(`id_client`)
  )
   ENGINE=InnoDB 
CREATE TABLE `agence_immob_client` (
  `id_client` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `pswd` CHAR(30) NOT NULL,
  `N_Tele` decimal(10) NOT NULL,
) 
   ENGINE=InnoDB 

CREATE TABLE `agence_immob_pic` (
  `id_pic` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(30) NOT NULL,
  `pic_link` varchar(30) NOT NULL,
  FOREIGN KEY (`id_annonce`) REFERENCES agence_immob_annonce(`id_annonce`)
) 
ENGINE=InnoDB 