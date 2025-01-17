-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2017 at 10:05 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infowmmo_ldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad`
--

CREATE TABLE `t_ad` (
  `id` int(10) NOT NULL,
  `CompanyName` varchar(250) NOT NULL,
  `PictureName` varchar(250) NOT NULL,
  `Link` varchar(500) NOT NULL,
  `SectorID` int(10) NOT NULL,
  `Clicks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_ad`
--

INSERT INTO `t_ad` (`id`, `CompanyName`, `PictureName`, `Link`, `SectorID`, `Clicks`) VALUES
(1, 'Ford', 'header-add.jpg', 'http://www.montmorencyford.com/fr/', 1, 0),
(2, 'Ford', 'header-add.jpg', 'http://fr.ford.ca/', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_banner`
--

CREATE TABLE `t_banner` (
  `id` int(10) NOT NULL,
  `Transaction_Type` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `CityID` int(10) NOT NULL,
  `UrLImage` varchar(150) NOT NULL,
  `BannerIndex` int(11) NOT NULL,
  `GroupID` int(10) NOT NULL,
  `ImgConfirmation` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_banner`
--

INSERT INTO `t_banner` (`id`, `Transaction_Type`, `Name`, `CityID`, `UrLImage`, `BannerIndex`, `GroupID`, `ImgConfirmation`, `updated_at`, `created_at`) VALUES
(1, '1', 'Nouvelle demeure', 2, 'logo-nouvelle-demeure.png', 0, 1, 'logo-nouvelle-demeure.png', '2015-11-27 14:13:29', '0000-00-00 00:00:00'),
(2, '1', 'Via capitale', 2, 'logo-via-capitale.png', 1, 2, 'logo-via-capitale.png', '2015-11-27 14:13:29', '0000-00-00 00:00:00'),
(3, '1', 'Blanc et noir', 2, 'logo-blanc-noir.png', 2, 3, 'logo-blanc-noir-helene-lozier.png', '2015-11-27 14:13:29', '0000-00-00 00:00:00'),
(4, '1', 'Hélène Lauzier', 2, 'logo-helene-lauzier.png', 3, 3, 'logo-blanc-noir-helene-lozier.png', '2015-11-27 14:13:29', '0000-00-00 00:00:00'),
(5, '2', 'RBC', 2, 'logo-rbc.png', 0, 4, 'logo-rbc.png', '2015-11-27 14:13:29', '0000-00-00 00:00:00'),
(6, '2', 'TD canada trust', 2, 'logo-td.png', 1, 5, 'logo-td.png', '2015-11-27 14:13:29', '0000-00-00 00:00:00'),
(7, '2', 'CIBC', 2, 'logo-cibc.png', 2, 6, 'logo-cibc.png', '2015-11-27 14:13:29', '0000-00-00 00:00:00'),
(8, '1', 'Expert Courtier', 2, 'logo-expert-courtier-qc2.png', 4, 3, 'logo-expert-courtier-qc2.png', '2015-11-27 14:13:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_banner_city`
--

CREATE TABLE `t_banner_city` (
  `BannerID` int(10) NOT NULL,
  `CityID` int(10) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_banner_city`
--

INSERT INTO `t_banner_city` (`BannerID`, `CityID`, `updated_at`, `created_at`) VALUES
(1, 1, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(1, 2, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(2, 1, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(2, 2, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(3, 1, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(3, 2, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(4, 1, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(4, 2, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(5, 1, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(5, 2, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(6, 1, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(6, 2, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(7, 1, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(7, 2, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(8, 1, '2015-11-27 14:14:00', '0000-00-00 00:00:00'),
(8, 2, '2015-11-27 14:14:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_banner_group`
--

CREATE TABLE `t_banner_group` (
  `GroupID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ImageLogo` varchar(150) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_banner_group`
--

INSERT INTO `t_banner_group` (`GroupID`, `Name`, `ImageLogo`, `updated_at`, `created_at`) VALUES
(1, 'Nouvelle demeure', 'logo-nouvelle-demeure.png', '2015-11-27 14:14:26', '0000-00-00 00:00:00'),
(2, 'La capitale', 'logo-via-capitale.png', '2015-11-27 14:14:26', '0000-00-00 00:00:00'),
(3, 'Blanc et noir & HÃ©lÃ¨ne Lauzier', 'logo-blanc-noir-helene-lozier.png', '2015-11-27 14:14:26', '0000-00-00 00:00:00'),
(4, 'RBC', 'logo-rbc.png', '2015-11-27 14:14:26', '0000-00-00 00:00:00'),
(5, 'TD canada trust', 'logo-td.png', '2015-11-27 14:14:26', '0000-00-00 00:00:00'),
(6, 'CIBC', 'logo-cibc.png', '2015-11-27 14:14:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_building`
--

CREATE TABLE `t_building` (
  `id` int(11) NOT NULL COMMENT 'ID of the table t_building, Auto increment',
  `UserID` int(10) NOT NULL COMMENT 'UserID from table t_user',
  `CityID` int(10) NOT NULL COMMENT 'ID from table t_building_city',
  `PackageID` int(10) NOT NULL COMMENT 'ID from t_package',
  `CategoryID` int(10) NOT NULL,
  `TypeID` int(10) NOT NULL COMMENT 'ID from t_building_type',
  `precisionID` int(10) NOT NULL,
  `RegionID` int(10) NOT NULL,
  `TransactionID` int(10) DEFAULT NULL,
  `CentrisID` int(12) NOT NULL,
  `CentrisLink` varchar(250) NOT NULL,
  `Broker_Full_Name` varchar(100) DEFAULT NULL,
  `Broker_Phone` varchar(20) DEFAULT NULL,
  `Broker_Cell` varchar(20) DEFAULT NULL,
  `Broker_Banner` varchar(50) DEFAULT NULL,
  `Broker_Photo` varchar(50) DEFAULT NULL,
  `Built_in` int(11) NOT NULL COMMENT 'EX 1990',
  `Price` int(10) NOT NULL COMMENT 'Price of the building',
  `Default_Picture` varchar(500) NOT NULL COMMENT 'Default Picture, file name',
  `StreetType` varchar(250) NOT NULL,
  `StreetName` varchar(250) NOT NULL,
  `HouseNumber` varchar(10) NOT NULL,
  `City_Name` varchar(250) NOT NULL,
  `Postal_code` varchar(7) NOT NULL,
  `Start_Date` datetime NOT NULL COMMENT 'Date on register',
  `End_Date` datetime NOT NULL COMMENT 'Date end, depend wich package customer buy',
  `Sold_date` datetime NOT NULL,
  `Latitude` double NOT NULL COMMENT 'Position Latitude',
  `Longitude` double NOT NULL COMMENT 'Position Longitude ',
  `Star` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Stage_number` int(10) DEFAULT NULL,
  `Total_rooms_number` int(10) NOT NULL,
  `Rooms_number` int(11) NOT NULL,
  `Bathroom_number` int(11) NOT NULL,
  `Parking_outdoor_number` int(11) NOT NULL,
  `Parking_garage_number` int(11) NOT NULL,
  `Sold` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Brand_new` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Free_tour` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Living_area_size_feet` int(10) NOT NULL COMMENT 'Living area size in feet',
  `Property_size_feet` int(10) NOT NULL COMMENT 'Property size in feet',
  `Living_area_size_meter` int(10) NOT NULL,
  `Property_size_meter` int(10) NOT NULL,
  `Garage` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Pool` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `with_income` int(1) DEFAULT NULL COMMENT '0 = no, 1 = yes',
  `fireplace` int(1) DEFAULT NULL COMMENT '0 = no, 1 = yes',
  `panoramic_view` int(1) DEFAULT NULL COMMENT '0 = no, 1 = yes',
  `waterside` int(1) DEFAULT NULL COMMENT '0 = no, 1 = yes',
  `Air_clim` int(1) NOT NULL,
  `No_neighbors_behind` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Maintenance_fees_by_month` double DEFAULT NULL,
  `Heating_by_month` double DEFAULT NULL,
  `Municipal_taxes_by_month` double DEFAULT NULL,
  `School_taxes_by_month` double DEFAULT NULL,
  `Electricity_by_month` double DEFAULT NULL,
  `Insurance_by_month` double DEFAULT NULL,
  `Other_taxes_by_month` double DEFAULT NULL,
  `Maintenance_fees_by_year` double DEFAULT NULL,
  `Heating_by_year` double DEFAULT NULL,
  `Municipal_taxes_by_year` double DEFAULT NULL,
  `School_taxes_by_year` double DEFAULT NULL,
  `Electricity_by_year` double DEFAULT NULL,
  `Insurance_by_year` double DEFAULT NULL,
  `Other_taxes_by_year` double DEFAULT NULL,
  `Description_fr` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Evaluation_year` varchar(50) NOT NULL,
  `Evaluation_ground` int(10) NOT NULL,
  `Evaluation_building` int(10) NOT NULL,
  `Evaluation_total` int(10) NOT NULL,
  `Size_land_frontage` double NOT NULL,
  `Size_land_depth` double NOT NULL,
  `Size_land_area` double NOT NULL,
  `Size_building_width` double NOT NULL,
  `Size_building_depth` double NOT NULL,
  `indoor_cupboard` varchar(1000) DEFAULT NULL COMMENT 'data ex : Cupboard1, Cupboard2, Cupboard3',
  `indoor_cupboard_other` varchar(500) DEFAULT NULL,
  `indoor_heating_energy` varchar(1000) DEFAULT NULL,
  `indoor_heating_energy_other` varchar(500) DEFAULT NULL,
  `indoor_energy_system` varchar(1000) DEFAULT NULL,
  `indoor_energy_system_other` varchar(500) DEFAULT NULL,
  `indoor_basement` varchar(1000) DEFAULT NULL,
  `indoor_basement_other` varchar(500) DEFAULT NULL,
  `indoor_heating_system` varchar(1000) DEFAULT NULL,
  `indoor_heating_system_other` varchar(500) DEFAULT NULL,
  `indoor_windows` varchar(1000) DEFAULT NULL,
  `indoor_windows_other` varchar(500) DEFAULT NULL,
  `indoor_windows_type` varchar(1000) DEFAULT NULL,
  `indoor_windows_type_other` varchar(500) DEFAULT NULL,
  `indoor_roofing` varchar(1000) DEFAULT NULL,
  `indoor_roofing_other` varchar(500) DEFAULT NULL,
  `indoor_equipment_available` varchar(1000) DEFAULT NULL,
  `indoor_equipment_available_other` varchar(500) DEFAULT NULL,
  `outdoor_driveway` varchar(1000) DEFAULT NULL,
  `outdoor_driveway_other` varchar(500) DEFAULT NULL,
  `outdoor_water_supply` varchar(1000) DEFAULT NULL,
  `outdoor_water_supply_other` varchar(500) DEFAULT NULL,
  `outdoor_siding` varchar(1000) DEFAULT NULL,
  `outdoor_siding_other` varchar(500) DEFAULT NULL,
  `outdoor_sewage_system` varchar(1000) DEFAULT NULL,
  `outdoor_sewage_system_other` varchar(500) DEFAULT NULL,
  `outdoor_landscaping` varchar(1000) DEFAULT NULL,
  `outdoor_landscaping_other` varchar(500) DEFAULT NULL,
  `outdoor_foundation` varchar(1000) DEFAULT NULL,
  `outdoor_foundation_other` varchar(500) DEFAULT NULL,
  `outdoor_proximity` varchar(1000) DEFAULT NULL,
  `outdoor_proximity_other` varchar(500) DEFAULT NULL,
  `outdoor_topography` varchar(1000) DEFAULT NULL,
  `outdoor_topography_other` varchar(500) DEFAULT NULL,
  `outdoor_garage` varchar(1000) DEFAULT NULL,
  `outdoor_garage_other` varchar(500) DEFAULT NULL,
  `outdoor_pool` varchar(1000) DEFAULT NULL,
  `outdoor_pool_other` varchar(500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `Inclusion_autre` varchar(500) NOT NULL,
  `Exclusion_autre` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building`
--

INSERT INTO `t_building` (`id`, `UserID`, `CityID`, `PackageID`, `CategoryID`, `TypeID`, `precisionID`, `RegionID`, `TransactionID`, `CentrisID`, `CentrisLink`, `Broker_Full_Name`, `Broker_Phone`, `Broker_Cell`, `Broker_Banner`, `Broker_Photo`, `Built_in`, `Price`, `Default_Picture`, `StreetType`, `StreetName`, `HouseNumber`, `City_Name`, `Postal_code`, `Start_Date`, `End_Date`, `Sold_date`, `Latitude`, `Longitude`, `Star`, `Stage_number`, `Total_rooms_number`, `Rooms_number`, `Bathroom_number`, `Parking_outdoor_number`, `Parking_garage_number`, `Sold`, `Brand_new`, `Free_tour`, `Living_area_size_feet`, `Property_size_feet`, `Living_area_size_meter`, `Property_size_meter`, `Garage`, `Pool`, `with_income`, `fireplace`, `panoramic_view`, `waterside`, `Air_clim`, `No_neighbors_behind`, `Maintenance_fees_by_month`, `Heating_by_month`, `Municipal_taxes_by_month`, `School_taxes_by_month`, `Electricity_by_month`, `Insurance_by_month`, `Other_taxes_by_month`, `Maintenance_fees_by_year`, `Heating_by_year`, `Municipal_taxes_by_year`, `School_taxes_by_year`, `Electricity_by_year`, `Insurance_by_year`, `Other_taxes_by_year`, `Description_fr`, `Description_en`, `Evaluation_year`, `Evaluation_ground`, `Evaluation_building`, `Evaluation_total`, `Size_land_frontage`, `Size_land_depth`, `Size_land_area`, `Size_building_width`, `Size_building_depth`, `indoor_cupboard`, `indoor_cupboard_other`, `indoor_heating_energy`, `indoor_heating_energy_other`, `indoor_energy_system`, `indoor_energy_system_other`, `indoor_basement`, `indoor_basement_other`, `indoor_heating_system`, `indoor_heating_system_other`, `indoor_windows`, `indoor_windows_other`, `indoor_windows_type`, `indoor_windows_type_other`, `indoor_roofing`, `indoor_roofing_other`, `indoor_equipment_available`, `indoor_equipment_available_other`, `outdoor_driveway`, `outdoor_driveway_other`, `outdoor_water_supply`, `outdoor_water_supply_other`, `outdoor_siding`, `outdoor_siding_other`, `outdoor_sewage_system`, `outdoor_sewage_system_other`, `outdoor_landscaping`, `outdoor_landscaping_other`, `outdoor_foundation`, `outdoor_foundation_other`, `outdoor_proximity`, `outdoor_proximity_other`, `outdoor_topography`, `outdoor_topography_other`, `outdoor_garage`, `outdoor_garage_other`, `outdoor_pool`, `outdoor_pool_other`, `status`, `Inclusion_autre`, `Exclusion_autre`, `updated_at`, `created_at`) VALUES
(3, 2, 2999, 3, 2, 2, 1, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 2015, 99500, '1449060279.png', '2', 'Nehru Nagar', '231', 'indore', 'j2k-8d6', '2016-01-03 11:15:16', '2015-12-24 05:17:19', '0000-00-00 00:00:00', 46.87624249, -71.246971, 0, 0, 0, 2, 3, 2, 3, 1, 1, 1, 200, 5001, 100, 1524, 1, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, 0, 0, NULL, 0, 2015, 2015, 2015, 2015, 2015, NULL, '', 'Description3', '', 0, 0, 0, 0, 0, 0, 2, 0, 'MELM', NULL, 'ELEC', NULL, 'FUSE', NULL, '', '', 'PELC', '', 'PVC', NULL, 'MAN', '', 'MBEL', NULL, 'CLMM,EAIR', NULL, 'ASPH', NULL, 'AMU', '', 'BRIQ,PIER', NULL, 'EGMU', NULL, 'CLOT,PAY', NULL, 'BETO', NULL, 'PARC,PRIM,TRSP', NULL, NULL, NULL, 'ATT', NULL, NULL, NULL, 2, '', '', '2016-02-09 18:09:52', '0000-00-00 00:00:00'),
(5, 2, 23031, 0, 1, 1, 0, 0, NULL, 13527886, 'http://passerelle.centris.ca/redirect.aspx?CodeDest=VIACAPITALE%26NoMLS=QC13527886', 'Christian Dumais', '4189294474', '', 'BLANC & NOIR AGENCE IMMOBILIÈRE', '7667.jpg', 2013, 389500, '135368407.jpg', '1', 'Rue de l\'Estacade', '1025', '', 'G3K0P3', '2015-07-04 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46.84624249, -71.43434308, 1, NULL, 9, 4, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 292.5, 53.17, 123.67, NULL, NULL, NULL, NULL, 3510, 638, 1484, NULL, NULL, 'Immense plain-pied 2013, 36x36, secteur récent, terrain 6398 p² clôturé, patio 18x16 avec rangement dessous, amén. paysager effectué par professionnel, plafond 9\' au RC, 4 chambres+cinéma maison insonorisé, immense s.lavage au SS, thermopompe murale, arm. polyester jusqu\'au plafond, garde-manger walk-in, îlot (près 10 p).\r', 'Immense plain-pied 2013, 36x36, secteur récent, terrain 6398 p² clôturé, patio 18x16 avec rangement dessous, amén. paysager effectué par professionnel, plafond 9\' au RC, 4 chambres+cinéma maison insonorisé, immense s.lavage au SS, thermopompe murale, arm. polyester jusqu\'au plafond, garde-manger walk-in, îlot (près 10 p).\r', '2016', 119000, 229000, 348000, 0, 0, 6398, 36, 36, 'AU', NULL, 'ELEC', NULL, '', NULL, '6,AMNT', NULL, 'PELC', NULL, 'AU,PVC', NULL, 'MAN', NULL, 'BAA', NULL, 'ASP,EAIR,THEM', NULL, 'NPAV', NULL, 'AMU', NULL, 'PBET,VINY', NULL, 'EGMU', NULL, 'CLOT,PAY', NULL, 'BETO', NULL, 'GOLF,HOP,PARC,PCYC,PRIM,TRSP', NULL, 'PLAT', NULL, '', NULL, '', NULL, 2, 'Luminaires, tringles, habillage porte-patio, échangeur d\'air, thermopompe de marque Toyo, bancs îlot.', 'Luminaires d\'enfants CC#2 et CC#3, miroir salle de bains RC, cinéma maison et meubles.', '2016-02-19 12:00:01', '2016-01-29 00:04:18'),
(6, 0, 25214, 0, 1, 1, 0, 0, NULL, 25899925, 'http://passerelle.centris.ca/redirect.aspx?CodeDest=VIACAPITALE%26NoMLS=QC25899925', 'Christian Dumais', '4189294474', '', 'BLANC & NOIR AGENCE IMMOBILIÈRE', '7667.jpg', 1960, 289900, '132319209.jpg', '1', 'Rue Desneiges', '262', '', 'G6W3P1', '2015-10-06 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46.74877, -71.246971, 1, NULL, 9, 3, 2, 4, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 211.42, 51.33, 140, NULL, NULL, NULL, NULL, 2537, 616, 1680, NULL, NULL, 'Superbe plain-pied avec garage attaché, 3 chambres à coucher au rez-de-chaussée, combustion lente au sous-sol, thermopompe murale, beaucoup d\'espace au sous-sol, atelier, grand terrain de plus de 8500 pieds carrés avec piscine creusée et chauffe-eau, haie de cèdre de près de 11 pieds de hauteur, grand stationnement. À qui la chance!\r', 'Superbe plain-pied avec garage attaché, 3 chambres à coucher au rez-de-chaussée, combustion lente au sous-sol, thermopompe murale, beaucoup d\'espace au sous-sol, atelier, grand terrain de plus de 8500 pieds carrés avec piscine creusée et chauffe-eau, haie de cèdre de près de 11 pieds de hauteur, grand stationnement. À qui la chance!\r', '2015', 121700, 156200, 277900, 0, 0, 8549, 28, 40, 'MELM', NULL, 'ELEC', NULL, '', NULL, 'AMNT', NULL, 'PELC', NULL, 'PVC', NULL, 'MAN', NULL, 'BAA', NULL, 'CLMM,EAIR', NULL, 'ASPH', NULL, 'AMU', NULL, 'BRIQ,PIER', NULL, 'EGMU', NULL, 'CLOT,HAIE,PAY', NULL, 'BETO', NULL, 'PARC,PRIM,TRSP', NULL, 'PLAT', NULL, 'ATT', NULL, 'CREU', NULL, 2, 'Stores, luminaires, lave-vaisselle, climatiseur mural, chauffe-eau piscine, piscine et accessoires donnés sans garantie légale, échangeur d\'air de marque Épur Air, combustion lente au sous-sol.', 'Tringles et rideaux au rez-de-chaussée.', '2016-02-19 12:00:01', '2016-01-29 00:04:27'),
(7, 0, 23031, 0, 1, 5, 0, 0, NULL, 26774251, 'http://passerelle.centris.ca/redirect.aspx?CodeDest=VIACAPITALE%26NoMLS=QC26774251', 'Christian Dumais', '4189294474', '', 'BLANC & NOIR AGENCE IMMOBILIÈRE', '7667.jpg', 2010, 269500, '131242621.jpg', '1', 'Rue du Colorado', '1369', '', 'G3K0H4', '2015-09-11 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46.84534558, -71.41671658, 1, NULL, 9, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 220.17, 38.17, 127.08, NULL, NULL, NULL, NULL, 2642, 458, 1525, NULL, NULL, 'Un splendide jumelé 2010 avec une vue partielle sur la ville, 4 chambres, terrassement effectué par des professionnels, stationnement asphalté, planchers chauffant dans la cuisine & s.manger. S-sol aménagé en 2015 avec atelier, chambre, salle familiale & salle de bains avec une douche indépendante. Que demander de plus! Occupation pour 30-06-2016.\r', 'Un splendide jumelé 2010 avec une vue partielle sur la ville, 4 chambres, terrassement effectué par des professionnels, stationnement asphalté, planchers chauffant dans la cuisine & s.manger. S-sol aménagé en 2015 avec atelier, chambre, salle familiale & salle de bains avec une douche indépendante. Que demander de plus! Occupation pour 30-06-2016.\r', '2016', 76000, 170000, 246000, 0, 0, 3292, 20, 32, 'MELM', NULL, 'ELEC', NULL, '', NULL, 'AMNT', NULL, 'PELC', NULL, 'PVC', NULL, 'MAN', NULL, 'BAA', NULL, 'ASP,EAIR', NULL, 'ASPH', NULL, 'AMU', NULL, 'BRIQ,VINY', NULL, 'EGMU', NULL, 'CLOT,PAY', NULL, 'BETO', NULL, 'AUTO,PARC,TRSP', NULL, '', NULL, '', NULL, '', NULL, 2, 'Stores, tringles, cabanon, luminaires, échangeur d\'air, aspirateur central et accessoires.', 'Lave-vaisselle, rideaux.', '2016-02-19 12:00:01', '2016-01-29 00:04:34'),
(8, 0, 23028, 0, 1, 5, 0, 0, NULL, 26604781, 'http://passerelle.centris.ca/redirect.aspx?CodeDest=VIACAPITALE%26NoMLS=QC26604781', 'Christian Dumais', '4189294474', '', 'BLANC & NOIR AGENCE IMMOBILIÈRE', '7667.jpg', 1967, 209900, '136510775.jpg', '1', 'Av. Carrel', '4940', '', 'G1P1H1', '2016-01-22 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46.819543, -71.32694, 0, NULL, 7, 3, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 188.08, 33.17, 131.67, NULL, NULL, NULL, NULL, 2257, 398, 1580, NULL, NULL, 'Jumelé de 3 chambres à coucher, grand terrain de 5409 pieds carrés. Idéal pour premier acheteur. Occupation rapide possible.\r', 'Jumelé de 3 chambres à coucher, grand terrain de 5409 pieds carrés. Idéal pour premier acheteur. Occupation rapide possible.\r', '2016', 106000, 104000, 210000, 0, 0, 5409, 31, 26, 'THER', NULL, 'ELEC', NULL, '', NULL, 'AMNT', NULL, 'AIRS', NULL, 'BOIS', NULL, 'COUL', NULL, 'MBEL', NULL, 'ASP,CLMC,EAIR', NULL, 'ASPH', NULL, 'AMU', NULL, 'SPIE,VINY', NULL, 'EGMU', NULL, 'CLOT,HAIE,PAY', NULL, 'BETO', NULL, 'AUTO,HOP,PARC,PRIM,SEC,TRSP', NULL, 'PLAT', NULL, '', NULL, '', NULL, 2, 'Stores, rideaux et tringles, climatiseur mural, aspirateur central et accessoires, échangeur d\'air, luminaires, cabanon.', '', '2016-02-19 12:00:01', '2016-01-29 00:08:26'),
(10, 16, 94070, 0, 1, 1, 3, 2, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 2016, 190000, '', '2', '3902 rue d\'orléans', '122', '', 'g7x8r4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 48.3992407, -71.25277, 0, NULL, 17, 10, 4, 5, 5, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 4, 3, 0.4166666666666667, 0.5, 1, 2, 0.5833333333333334, 48, 36, 5, 6, 12, 24, 7, 'test', 'test', '2013-2014-2015', 10000, 199000, 209000, 1, 2, 0, 4, 5, 'BOIS', '', 'BOIS', '', '', '', '', '', '', NULL, NULL, NULL, 'MAN', '', 'BCED', '', '', '', NULL, NULL, 'CIT', '', 'ASPH', '', 'FSE', '', NULL, NULL, 'BOIS', '', '', '', 'PENT', '', 'DET', '', 'HT', '', 2, 'test_inclu', 'test_exclu', '2016-02-20 03:02:32', '2016-02-03 18:12:51'),
(11, 16, 23031, 0, 1, 9, 0, 0, 516, 25312381, 'http://passerelle.centris.ca/redirect.aspx?CodeDest=BLANCNOIRIMMOBILIER%26NoMLS=QC25312381', 'Christian Dumais', '4189294474', '', 'BLANC & NOIR AGENCE IMMOBILIÈRE', '7667.jpg', 2004, 359900, '137009213.jpg', '1', 'Rue des Prismes', '6568', '', 'G3E2E7', '2016-01-28 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46.879282, -71.325933, 0, NULL, 13, 4, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 278.33, 58.42, 275, NULL, NULL, NULL, NULL, 3340, 701, 3300, NULL, NULL, 'Une très jolie maison à étages avec garage excavé, 4 chambres à coucher, un terrain intime, une piscine avec chauffe-eau dans un secteur recherché et près des services.  Le tout avec une décoration au goût du jour !  \r', 'Une très jolie maison à étages avec garage excavé, 4 chambres à coucher, un terrain intime, une piscine avec chauffe-eau dans un secteur recherché et près des services.  Le tout avec une décoration au goût du jour !  \r', '2016', 135000, 212000, 347000, 0, 0, 5410, 25, 25, 'MELM', NULL, 'ELEC', NULL, '', NULL, 'AMNT', NULL, 'PELC', NULL, 'PVC', NULL, 'MAN', NULL, 'BAA', NULL, 'ASP,EAIR,PELE,SYAL,THEM', NULL, 'NPAV', NULL, 'AMU', NULL, 'VINY', NULL, 'EGMU', NULL, 'HAIE,PAY', NULL, 'BETO', NULL, 'AUTO,PARC,PRIM,TRSP', NULL, 'PLAT', NULL, 'ATT,CHAU', NULL, 'HT', NULL, 2, 'Stores, échangeur d\'air, cabanon, thermopompe piscine, piscine et ses accessoires, thermopompe mural, ouvre porte électrique, tringles et rideaux, toile fenêtre et système alarme.', 'Lave-vaisselle, rideaux salle à manger et salon.', '2016-02-19 12:00:01', '2016-02-04 21:32:11'),
(17, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 06:54:20', '2016-02-23 06:54:20'),
(18, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 07:27:51', '2016-02-23 07:27:51'),
(19, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 07:30:05', '2016-02-23 07:30:05'),
(20, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:27:56', '2016-02-23 08:27:56'),
(21, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:28:18', '2016-02-23 08:28:18'),
(22, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:30:31', '2016-02-23 08:30:31'),
(23, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:30:49', '2016-02-23 08:30:49'),
(24, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:31:50', '2016-02-23 08:31:50'),
(25, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:33:42', '2016-02-23 08:33:42'),
(26, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:34:21', '2016-02-23 08:34:21'),
(27, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:36:59', '2016-02-23 08:36:59'),
(28, 1, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:44:16', '2016-02-23 08:44:16'),
(29, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:49:21', '2016-02-23 08:49:21'),
(30, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 08:52:19', '2016-02-23 08:52:19'),
(31, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 09:15:54', '2016-02-23 09:15:54'),
(32, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 09:51:53', '2016-02-23 09:51:53'),
(33, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 09:54:58', '2016-02-23 09:54:58'),
(34, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '2016-02-23 00:00:00', '2016-06-23 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 10:05:01', '2016-02-23 10:05:01'),
(35, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '2016-02-23 00:00:00', '2016-06-23 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 10:10:23', '2016-02-23 10:10:23'),
(36, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '2016-02-23 00:00:00', '2016-06-23 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 10:14:24', '2016-02-23 10:14:24'),
(37, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '2016-02-23 00:00:00', '2016-06-23 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 10:27:44', '2016-02-23 10:27:44'),
(38, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '2016-02-23 00:00:00', '2016-06-23 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 10:34:19', '2016-02-23 10:34:19'),
(39, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '2016-02-23 00:00:00', '2016-06-23 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 10:43:16', '2016-02-23 10:43:16'),
(40, 2, 0, 0, 0, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '', '', '', '', '', '', '2016-02-23 00:00:00', '2016-06-23 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '2016-02-23 10:55:34', '2016-02-23 10:55:34'),
(41, 2, 2999, 0, 2, 4, 4, 2, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 2004, 1111, '', '1', 'abc', 'abc', '', 'g7x-723', '2016-02-23 00:00:00', '2016-06-23 00:00:00', '0000-00-00 00:00:00', 46.809422089282265, -71.26741307753906, 0, NULL, 0, 0, 0, 0, 0, 0, 1, 1, 11, 0, 3, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ji', 'hi', 'Veuillez sélectionner un Rôle d\'évaluation', 0, 0, 0, 33, 33, 11, 2121, 21212, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', 1, '', '', '2016-02-24 07:29:24', '2016-02-23 11:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_category`
--

CREATE TABLE `t_building_category` (
  `id` int(11) NOT NULL,
  `NameFR` varchar(255) NOT NULL COMMENT 'French Name',
  `NameEN` varchar(255) NOT NULL COMMENT 'English Name',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_category`
--

INSERT INTO `t_building_category` (`id`, `NameFR`, `NameEN`, `updated_at`, `created_at`) VALUES
(1, 'Unifamiliale', 'Single family', '2016-02-10 02:56:04', '0000-00-00 00:00:00'),
(2, 'Commercial', 'Commercial', '2016-01-05 15:00:52', '0000-00-00 00:00:00'),
(3, 'Multiplex', 'Multiplex', '2016-02-10 02:57:57', '0000-00-00 00:00:00'),
(4, 'Terrain', 'Ground', '2016-01-05 15:02:20', '0000-00-00 00:00:00'),
(5, 'Jumelé', 'Semi-detached', '2016-02-10 03:02:42', '0000-00-00 00:00:00'),
(6, 'Chalet', 'Chalet', '2016-02-10 03:02:42', '0000-00-00 00:00:00'),
(7, 'Condo/Loft', 'Condo/Loft', '2016-02-10 03:03:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_city`
--

CREATE TABLE `t_building_city` (
  `id` int(10) NOT NULL,
  `RegionID` int(10) NOT NULL,
  `CityName` varchar(255) NOT NULL,
  `Longitude` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_building_city`
--

INSERT INTO `t_building_city` (`id`, `RegionID`, `CityName`, `Longitude`, `Latitude`, `updated_at`, `created_at`) VALUES
(1023, 11, 'Les Îles-de-la-Madeleine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(1042, 11, 'Grosse-Île', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(1999, 1, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(2005, 11, 'Percé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(2010, 11, 'Sainte-Thérèse-de-Gaspé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(2015, 11, 'Grande-Rivière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(2028, 11, 'Chandler', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(2047, 11, 'Port-Daniel/Gascons', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(2999, 2, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(3005, 11, 'Gaspé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(3010, 11, 'Cloridorme', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(3015, 11, 'Petite-Vallée', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(3020, 11, 'Grande-Vallée', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(3025, 11, 'Murdochville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(3999, 3, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4005, 11, 'Sainte-Madeleine-de-la-Rivière-Madeleine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4010, 11, 'Saint-Maxime-du-Mont-Louis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4015, 11, 'Mont-Saint-Pierre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4020, 11, 'Rivière-à-Claude', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4025, 11, 'Marsoui', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4030, 11, 'La Martre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4037, 11, 'Sainte-Anne-des-Monts', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4047, 11, 'Cap-Chat', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(4999, 4, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5010, 11, 'Shigawake', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5015, 11, 'Saint-Godefroi', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5020, 11, 'Hope Town', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5025, 11, 'Hope', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5032, 11, 'Paspébiac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5040, 11, 'New Carlisle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5045, 11, 'Bonaventure', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5050, 11, 'Saint-Elzéar', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5055, 11, 'Saint-Siméon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5060, 11, 'Caplan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5065, 11, 'Saint-Alphonse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5070, 11, 'New Richmond', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(5077, 11, 'Cascapédia/Saint-Jules', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6005, 11, 'Maria', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6013, 11, 'Carleton-sur-Mer', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6020, 11, 'Nouvelle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6025, 11, 'Escuminac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6030, 11, 'Pointe-à-la-Croix', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6035, 11, 'Ristigouche-Partie-Sud-Est', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6040, 11, 'Saint-André-de-Restigouche', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6045, 11, 'Matapédia', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6050, 11, 'Saint-Alexis-de-Matapédia', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6055, 11, 'Saint-François-d\'Assise', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(6060, 11, 'L\'Ascension-de-Patapédia', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7005, 1, 'Sainte-Marguerite-Marie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7010, 1, 'Sainte-Florence', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7018, 1, 'Causapscal', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7025, 1, 'Albertville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7030, 1, 'Saint-Léon-le-Grand', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7035, 1, 'Saint-Zénon-du-Lac-Humqui', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7040, 1, 'Sainte-Irène', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7047, 1, 'Amqui', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7057, 1, 'Lac-au-Saumon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7065, 1, 'Saint-Alexandre-des-Lacs', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7070, 1, 'Saint-Tharcisius', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7075, 1, 'Saint-Vianney', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7080, 1, 'Val-Brillant', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7085, 1, 'Sayabec', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7090, 1, 'Saint-Cléophas', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7095, 1, 'Saint-Moïse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7100, 1, 'Saint-Noël', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7105, 1, 'Saint-Damase', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(7999, 7, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8005, 1, 'Les Méchins', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8010, 1, 'Saint-Jean-de-Cherbourg', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8015, 1, 'Grosses-Roches', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8023, 1, 'Sainte-Félicité', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8030, 1, 'Saint-Adelme', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8035, 1, 'Saint-René-de-Matane', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8040, 1, 'Sainte-Paule', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8053, 1, 'Matane', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8065, 1, 'Saint-Léandre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8073, 1, 'Saint-Ulric', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8080, 1, 'Baie-des-Sables', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(8999, 8, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9005, 1, 'La Rédemption', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9010, 1, 'Saint-Charles-Garnier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9015, 1, 'Les Hauteurs', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9020, 1, 'Sainte-Jeanne-d\'Arc', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9025, 1, 'Saint-Gabriel-de-Rimouski', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9030, 1, 'Saint-Donat', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9035, 1, 'Sainte-Angèle-de-Mérici', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9040, 1, 'Padoue', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9050, 1, 'Métis-sur-Mer', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9055, 1, 'Saint-Octave-de-Métis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9060, 1, 'Grand-Métis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9065, 1, 'Price', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9070, 1, 'Saint-Joseph-de-Lepage', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9077, 1, 'Mont-Joli', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9085, 1, 'Sainte-Flavie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9092, 1, 'Sainte-Luce', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(9999, 9, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10005, 1, 'Esprit-Saint', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10010, 1, 'La Trinité-des-Monts', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10015, 1, 'Saint-Narcisse-de-Rimouski', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10025, 1, 'Saint-Marcellin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10030, 1, 'Saint-Anaclet-de-Lessard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10043, 1, 'Rimouski', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10060, 1, 'Saint-Valérien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10070, 1, 'Saint-Fabien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10075, 1, 'Saint-Eugène-de-Ladrière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10902, 1, 'Lac-Huron', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(10999, 10, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11005, 1, 'Saint-Clément', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11010, 1, 'Saint-Jean-de-Dieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11015, 1, 'Sainte-Rita', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11020, 1, 'Saint-Guy', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11025, 1, 'Saint-Médard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11030, 1, 'Sainte-Françoise', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11035, 1, 'Saint-Éloi', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11040, 1, 'Trois-Pistoles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11045, 1, 'Notre-Dame-des-Neiges', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11050, 1, 'Saint-Mathieu-de-Rioux', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11055, 1, 'Saint-Simon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(11999, 11, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12005, 1, 'Saint-Cyprien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12010, 1, 'Saint-Hubert-de-Rivière-du-Loup', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12015, 1, 'Saint-Antonin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12020, 1, 'Saint-Modeste', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12025, 1, 'Saint-François-Xavier-de-Viger', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12030, 1, 'Saint-Épiphane', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12035, 1, 'Saint-Paul-de-la-Croix', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12043, 1, 'L\'Isle-Verte', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12045, 1, 'Notre-Dame-des-Sept-Douleurs', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12065, 1, 'Saint-Arsène', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12072, 1, 'Rivière-du-Loup', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12080, 1, 'Notre-Dame-du-Portage', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(12804, 1, 'Cacouna', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13005, 1, 'Dégelis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13010, 1, 'Saint-Jean-de-la-Lande', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13015, 1, 'Packington', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13020, 1, 'Saint-Marc-du-Lac-Long', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13025, 1, 'Rivière-Bleue', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13030, 1, 'Saint-Eusèbe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13040, 1, 'Saint-Juste-du-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13045, 1, 'Auclair', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13050, 1, 'Lejeune', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13055, 1, 'Biencourt', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13060, 1, 'Lac-des-Aigles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13065, 1, 'Saint-Michel-du-Squatec', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13070, 1, 'Témiscouata-sur-le-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13075, 1, 'Saint-Pierre-de-Lamy', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13080, 1, 'Saint-Louis-du-Ha! Ha!', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13085, 1, 'Saint-Elzéar-de-Témiscouata', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13090, 1, 'Saint-Honoré-de-Témiscouata', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13095, 1, 'Pohénégamook', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(13100, 1, 'Saint-Athanase', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14005, 1, 'Mont-Carmel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14010, 1, 'Saint-Bruno-de-Kamouraska', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14018, 1, 'Saint-Pascal', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14025, 1, 'Sainte-Hélène', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14030, 1, 'Saint-Joseph-de-Kamouraska', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14035, 1, 'Saint-Alexandre-de-Kamouraska', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14040, 1, 'Saint-André', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14045, 1, 'Saint-Germain', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14050, 1, 'Kamouraska', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14055, 1, 'Saint-Denis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14060, 1, 'Saint-Philippe-de-Néri', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14065, 1, 'Rivière-Ouelle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14070, 1, 'Saint-Pacôme', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14075, 1, 'Saint-Gabriel-Lalemant', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14080, 1, 'Saint-Onésime-d\'Ixworth', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14085, 1, 'La Pocatière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14090, 1, 'Sainte-Anne-de-la-Pocatière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(14999, 14, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(15005, 20, 'Saint-Irénée', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(15013, 20, 'La Malbaie', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(15025, 20, 'Notre-Dame-des-Monts', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(15030, 20, 'Saint-Aimé-des-Lacs', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(15035, 20, 'Clermont', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(15058, 20, 'Saint-Siméon', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(15065, 20, 'Baie-Sainte-Catherine', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(15902, 20, 'Mont-Élie', 0, 0, '2016-01-14 17:16:43', '0000-00-00 00:00:00'),
(15904, 20, 'Sagard', NULL, NULL, '2016-01-14 17:40:10', '0000-00-00 00:00:00'),
(15999, 15, 'Territoires Autres / Other Territories', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(16005, 20, 'Petite-Rivière-Saint-François', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(16013, 20, 'Baie-Saint-Paul', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(16023, 20, 'L\'Isle-aux-Coudres', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(16048, 20, 'Les Éboulements', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(16050, 20, 'Saint-Hilarion', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(16055, 20, 'Saint-Urbain', 0, 0, '2016-01-14 15:48:40', '0000-00-00 00:00:00'),
(16902, 3, 'Lac-Pikauba', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17005, 12, 'Saint-Omer', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17010, 12, 'Saint-Pamphile', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17015, 12, 'Saint-Adalbert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17020, 12, 'Saint-Marcel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17025, 12, 'Sainte-Félicité', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17030, 12, 'Sainte-Perpétue', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17035, 12, 'Tourville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17040, 12, 'Saint-Damase-de-L\'Islet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17045, 12, 'Saint-Cyrille-de-Lessard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17055, 12, 'Saint-Aubert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17060, 12, 'Sainte-Louise', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17065, 12, 'Saint-Roch-des-Aulnaies', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17070, 12, 'Saint-Jean-Port-Joli', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(17078, 12, 'L\'Islet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18005, 12, 'Saint-Just-de-Bretenières', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18010, 12, 'Lac-Frontière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18015, 12, 'Saint-Fabien-de-Panet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18020, 12, 'Sainte-Lucie-de-Beauregard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18025, 12, 'Sainte-Apolline-de-Patton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18030, 12, 'Saint-Paul-de-Montminy', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18035, 12, 'Sainte-Euphémie-sur-Rivière-du-Sud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18040, 12, 'Notre-Dame-du-Rosaire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18045, 12, 'Cap-Saint-Ignace', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18050, 12, 'Montmagny', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18055, 12, 'Saint-Pierre-de-la-Rivière-du-Sud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18060, 12, 'Saint-François-de-la-Rivière-du-Sud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18065, 12, 'Berthier-sur-Mer', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(18070, 12, 'Saint-Antoine-de-l\'Isle-aux-Grues', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19005, 12, 'Saint-Philémon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19010, 12, 'Notre-Dame-Auxiliatrice-de-Buckland', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19015, 12, 'Saint-Nazaire-de-Dorchester', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19020, 12, 'Saint-Léon-de-Standon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19025, 12, 'Saint-Malachie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19030, 12, 'Saint-Damien-de-Buckland', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19037, 12, 'Armagh', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19045, 12, 'Saint-Nérée-de-Bellechasse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19050, 12, 'Saint-Lazare-de-Bellechasse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19055, 12, 'Sainte-Claire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19062, 12, 'Saint-Anselme', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19070, 12, 'Honfleur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19075, 12, 'Saint-Gervais', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19082, 12, 'Saint-Raphaël', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19090, 12, 'La Durantaye', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19097, 12, 'Saint-Charles-de-Bellechasse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19105, 12, 'Beaumont', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19110, 12, 'Saint-Michel-de-Bellechasse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(19117, 12, 'Saint-Vallier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(20005, 3, 'Île-d\'Orléans - Saint-François', 0, 0, '2016-01-14 15:59:37', '0000-00-00 00:00:00'),
(20010, 3, 'Île-d\'Orléans - Sainte-Famille', 0, 0, '2016-01-14 15:59:37', '0000-00-00 00:00:00'),
(20015, 3, 'Île-d\'Orléans - Saint-Jean', 0, 0, '2016-01-14 15:59:37', '0000-00-00 00:00:00'),
(20020, 3, 'Île-d\'Orléans - Saint-Laurent', 0, 0, '2016-01-14 15:59:37', '0000-00-00 00:00:00'),
(20025, 3, 'Île-d\'Orléans - Saint-Pierre', 0, 0, '2016-01-14 15:59:37', '0000-00-00 00:00:00'),
(20030, 3, 'Île-d\'Orléans - Sainte-Pétronille', 0, 0, '2016-01-14 15:59:37', '0000-00-00 00:00:00'),
(21005, 3, 'Saint-Tite-des-Caps', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21010, 3, 'Saint-Ferréol-les-Neiges', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21015, 3, 'Saint-Louis-de-Gonzague-du-Cap-Tourmente', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21020, 3, 'Saint-Joachim', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21025, 3, 'Beaupré', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21030, 3, 'Sainte-Anne-de-Beaupré', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21035, 3, 'Château-Richer', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21040, 3, 'L\'Ange-Gardien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21045, 3, 'Boischatel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(21902, 3, 'Sault-au-Cochon', NULL, NULL, '2016-02-12 00:46:14', '0000-00-00 00:00:00'),
(22005, 3, 'Sainte-Catherine-de-la-Jacques-Cartier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22010, 3, 'Fossambault-sur-le-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22015, 3, 'Lac-Saint-Joseph', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22020, 3, 'Shannon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22025, 3, 'Saint-Gabriel-de-Valcartier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22030, 3, 'Lac-Delage', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22035, 3, 'Stoneham-et-Tewkesbury', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22040, 3, 'Lac-Beauport', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22045, 3, 'Sainte-Brigitte-de-Laval', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(22902, 3, 'Lac-Croche', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(23005, 3, 'Québec - Beauport', 0, 0, '2016-01-14 16:21:46', '0000-00-00 00:00:00'),
(23015, 18, 'Notre-Dame-des-Anges', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(23027, 3, 'Québec - La Cité-Limoilou', 0, 0, '2016-01-14 16:21:46', '0000-00-00 00:00:00'),
(23028, 3, 'Les Rivières (Québec)', NULL, NULL, '2016-02-12 00:46:14', '0000-00-00 00:00:00'),
(23029, 3, 'Québec - Sainte-Foy/Sillery/Cap-Rouge', 0, 0, '2016-01-14 16:21:46', '0000-00-00 00:00:00'),
(23030, 3, 'Québec - Charlesbourg', 0, 0, '2016-01-14 16:21:46', '0000-00-00 00:00:00'),
(23031, 3, 'Québec - Lac-Saint-Charles', 0, 0, '2016-01-14 16:23:13', '0000-00-00 00:00:00'),
(23055, 3, 'L\'Ancienne-Lorette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(23070, 3, 'Saint-Augustin-de-Desmaures', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(23802, 3, 'Wendake', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(24005, 12, 'Saint-Henri', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(25005, 12, 'Saint-Lambert-de-Lauzon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(25214, 12, 'Les Chutes-de-la-Chaudière-Est (Lévis)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(25215, 12, 'Les Chutes-de-la-Chaudière-Ouest (Lévis)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(25216, 12, 'Desjardins (Lévis)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26005, 12, 'Frampton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26010, 12, 'Saints-Anges', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26015, 12, 'Vallée-Jonction', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26022, 12, 'Saint-Elzéar', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26030, 12, 'Sainte-Marie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26035, 12, 'Sainte-Marguerite', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26040, 12, 'Sainte-Hénédine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26048, 12, 'Scott', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26055, 12, 'Saint-Bernard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(26063, 12, 'Saint-Isidore', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27008, 12, 'Saint-Victor', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27015, 12, 'Saint-Alfred', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27028, 12, 'Beauceville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27035, 12, 'Saint-Odilon-de-Cranbourne', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27043, 12, 'Saint-Joseph-de-Beauce', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27050, 12, 'Saint-Joseph-des-Érables', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27055, 12, 'Saint-Jules', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27060, 12, 'Tring-Jonction', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27065, 12, 'Saint-Frédéric', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(27070, 12, 'Saint-Séverin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28005, 12, 'Saint-Zacharie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28015, 12, 'Sainte-Aurélie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28020, 12, 'Saint-Prosper', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28025, 12, 'Saint-Benjamin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28030, 12, 'Sainte-Rose-de-Watford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28035, 12, 'Saint-Louis-de-Gonzague', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28040, 12, 'Saint-Cyprien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28045, 12, 'Sainte-Justine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28053, 12, 'Lac-Etchemin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28060, 12, 'Saint-Luc-de-Bellechasse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28065, 12, 'Sainte-Sabine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28070, 12, 'Saint-Camille-de-Lellis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(28075, 12, 'Saint-Magloire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29005, 12, 'Saint-Théophile', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29010, 12, 'Saint-Gédéon-de-Beauce', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29020, 12, 'Saint-Hilaire-de-Dorset', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29025, 12, 'Saint-Évariste-de-Forsyth', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29030, 12, 'La Guadeloupe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29038, 12, 'Saint-Honoré-de-Shenley', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29045, 12, 'Saint-Martin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29050, 12, 'Saint-René', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29057, 12, 'Saint-Côme/Linière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29065, 12, 'Saint-Philibert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29075, 12, 'Saint-Georges', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29095, 12, 'Lac-Poulin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29100, 12, 'Saint-Benoît-Labre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29112, 12, 'Saint-Éphrem-de-Beauce', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29120, 12, 'Notre-Dame-des-Pins', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(29125, 12, 'Saint-Simon-les-Mines', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30005, 5, 'Saint-Augustin-de-Woburn', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30010, 5, 'Notre-Dame-des-Bois', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30015, 5, 'Val-Racine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30020, 5, 'Piopolis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30025, 5, 'Frontenac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30030, 5, 'Lac-Mégantic', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30035, 5, 'Marston', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30040, 5, 'Milan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30045, 5, 'Nantes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30050, 5, 'Sainte-Cécile-de-Whitton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30055, 5, 'Audet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30070, 5, 'Saint-Robert-Bellarmin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30072, 5, 'Saint-Ludger', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30080, 5, 'Lac-Drolet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30085, 5, 'Saint-Sébastien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30090, 5, 'Courcelles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30095, 5, 'Lambton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30100, 5, 'Saint-Romain', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30105, 5, 'Stornoway', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(30110, 5, 'Stratford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31008, 12, 'Beaulac-Garthby', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31015, 12, 'Disraeli - Ville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31020, 12, 'Disraeli - Paroisse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31025, 12, 'Saint-Jacques-le-Majeur-de-Wolfestown', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31030, 12, 'Saint-Fortunat', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31035, 12, 'Saint-Julien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31040, 12, 'Irlande', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31045, 12, 'Saint-Joseph-de-Coleraine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31050, 12, 'Sainte-Praxède', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31056, 12, 'Adstock', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31060, 12, 'Sainte-Clotilde-de-Beauce', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31087, 12, 'Thetford Mines', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31095, 12, 'Saint-Adrien-d\'Irlande', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31100, 12, 'Saint-Jean-de-Brébeuf', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31105, 12, 'Kinnear\'s Mills', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31122, 12, 'East Broughton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31130, 12, 'Sacré-Coeur-de-Jésus', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31135, 12, 'Saint-Pierre-de-Broughton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(31140, 12, 'Saint-Jacques-de-Leeds', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32013, 17, 'Saint-Ferdinand', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32023, 17, 'Sainte-Sophie-d\'Halifax', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32033, 17, 'Princeville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32040, 17, 'Plessisville - Ville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32045, 17, 'Plessisville - Paroisse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32050, 17, 'Saint-Pierre-Baptiste', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32058, 17, 'Inverness', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32065, 17, 'Lyster', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32072, 17, 'Laurierville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32080, 17, 'Notre-Dame-de-Lourdes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(32085, 17, 'Villeroy', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33007, 12, 'Saint-Sylvestre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33017, 12, 'Sainte-Agathe-de-Lotbinière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33025, 12, 'Saint-Patrice-de-Beaurivage', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33030, 12, 'Saint-Narcisse-de-Beaurivage', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33035, 12, 'Saint-Gilles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33040, 12, 'Dosquet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33045, 12, 'Saint-Agapit', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33052, 12, 'Saint-Flavien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33060, 12, 'Laurier-Station', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33065, 12, 'Saint-Janvier-de-Joly', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33070, 12, 'Val-Alain', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33080, 12, 'Saint-Édouard-de-Lotbinière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33085, 12, 'Notre-Dame-du-Sacré-Coeur-d\'Issoudun', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33090, 12, 'Saint-Apollinaire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33095, 12, 'Saint-Antoine-de-Tilly', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33102, 12, 'Sainte-Croix', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33115, 12, 'Lotbinière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(33123, 12, 'Leclercville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(34007, 18, 'Neuville', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34017, 18, 'Pont-Rouge', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34025, 18, 'Donnacona', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34030, 18, 'Cap-Santé', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34038, 18, 'Saint-Basile', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34050, 18, 'Portneuf', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34058, 18, 'Deschambault-Grondines', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34060, 18, 'Saint-Gilbert', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34065, 18, 'Saint-Marc-des-Carrières', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34078, 18, 'Saint-Casimir', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34085, 18, 'Saint-Thuribe', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34090, 18, 'Saint-Ubalde', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34097, 18, 'Saint-Alban', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34105, 18, 'Sainte-Christine-d\'Auvergne', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34115, 18, 'Saint-Léonard-de-Portneuf', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34120, 18, 'Lac-Sergent', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34128, 18, 'Saint-Raymond', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34135, 18, 'Rivière-à-Pierre', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34902, 18, 'Lac-Blanc', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(34904, 18, 'Linton', 0, 0, '2016-01-14 15:08:47', '0000-00-00 00:00:00'),
(35005, 4, 'Notre-Dame-de-Montauban', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35010, 4, 'Lac-aux-Sables', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35015, 4, 'Saint-Adelphe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35020, 4, 'Saint-Séverin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35027, 4, 'Saint-Tite', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35035, 4, 'Hérouxville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35040, 4, 'Grandes-Piles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35045, 4, 'Saint-Roch-de-Mékinac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35050, 4, 'Sainte-Thècle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35055, 4, 'Trois-Rives', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35902, 4, 'Lac-Masketsi', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35904, 4, 'Lac-Normand', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(35906, 4, 'Rivière-de-la-Savane', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36005, 4, 'Charette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36010, 4, 'Saint-Élie-de-Caxton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36015, 4, 'Saint-Mathieu-du-Parc', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36020, 4, 'Saint-Boniface', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36033, 4, 'Shawinigan (Shawinigan)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36035, 4, 'Shawinigan-Sud (Shawinigan)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36040, 4, 'Notre-Dame-du-Mont-Carmel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36045, 4, 'Lac-à-la-Tortue (Shawinigan)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36050, 4, 'Saint-Georges (Shawinigan)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36055, 4, 'Grand-Mère (Shawinigan)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36060, 4, 'Saint-Gérard-des-Laurentides (Shawinigan)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(36065, 4, 'Saint-Jean-des-Piles (Shawinigan)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37005, 4, 'Sainte-Anne-de-la-Pérade', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37010, 4, 'Saint-Prosper-de-Champlain', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37015, 4, 'Saint-Stanislas', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37020, 4, 'Sainte-Geneviève-de-Batiscan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37025, 4, 'Batiscan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37030, 4, 'Champlain', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37035, 4, 'Saint-Luc-de-Vincennes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37040, 4, 'Saint-Narcisse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37045, 4, 'Saint-Maurice', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37050, 4, 'Sainte-Marthe-du-Cap (Trois-Rivières)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37055, 4, 'Cap-de-la-Madeleine (Trois-Rivières)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37060, 4, 'Saint-Louis-de-France (Trois-Rivières)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37067, 4, 'Trois-Rivières (Trois-Rivières)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37070, 4, 'Trois-Rivières-Ouest (Trois-Rivières)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37075, 4, 'Pointe-du-Lac (Trois-Rivières)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(37080, 4, 'Saint-Étienne-des-Grès', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38005, 17, 'Saint-Sylvère', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38010, 17, 'Bécancour', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38015, 17, 'Sainte-Marie-de-Blandford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38020, 17, 'Lemieux', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38028, 17, 'Manseau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38035, 17, 'Sainte-Françoise', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38040, 17, 'Sainte-Sophie-de-Lévrard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38047, 17, 'Fortierville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38055, 17, 'Parisville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38060, 17, 'Sainte-Cécile-de-Lévrard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38065, 17, 'Saint-Pierre-les-Becquets', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38070, 17, 'Deschaillons-sur-Saint-Laurent', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(38802, 17, 'Wôlinak', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39005, 17, 'Saints-Martyrs-Canadiens', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39010, 17, 'Ham-Nord', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39015, 17, 'Notre-Dame-de-Ham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39020, 17, 'Saint-Rémi-de-Tingwick', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39025, 17, 'Tingwick', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39030, 17, 'Chesterville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39035, 17, 'Sainte-Hélène-de-Chester', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39042, 17, 'Saint-Norbert-d\'Arthabaska', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39060, 17, 'Saint-Christophe-d\'Arthabaska', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39062, 17, 'Victoriaville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39077, 17, 'Warwick', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39085, 17, 'Saint-Albert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39090, 17, 'Sainte-Élizabeth-de-Warwick', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39097, 17, 'Kingsey Falls', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39105, 17, 'Sainte-Séraphine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39117, 17, 'Sainte-Clotilde-de-Horton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39130, 17, 'Saint-Samuel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39135, 17, 'Saint-Valère', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39145, 17, 'Saint-Rosaire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39150, 17, 'Sainte-Anne-du-Sault', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39155, 17, 'Daveluyville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39165, 17, 'Maddington', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(39170, 17, 'Saint-Louis-de-Blandford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(40005, 5, 'Ham-Sud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(40010, 5, 'Saint-Adrien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(40017, 5, 'Wotton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(40025, 5, 'Saint-Camille', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(40032, 5, 'Saint-Georges-de-Windsor', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(40043, 5, 'Asbestos', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(40047, 5, 'Danville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41012, 5, 'Saint-Isidore-de-Clifton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41020, 5, 'Chartierville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41027, 5, 'La Patrie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41035, 5, 'Newport', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41042, 5, 'Cookshire-Eaton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41055, 5, 'Ascot Corner', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41060, 5, 'East Angus', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41065, 5, 'Westbury', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41070, 5, 'Bury', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41075, 5, 'Hampden', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41080, 5, 'Scotstown', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41085, 5, 'Lingwick', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41098, 5, 'Weedon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(41117, 5, 'Dudswell', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42005, 5, 'Stoke', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42020, 5, 'Saint-François-Xavier-de-Brompton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42025, 5, 'Saint-Denis-de-Brompton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42032, 5, 'Racine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42040, 5, 'Bonsecours', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42045, 5, 'Lawrenceville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42050, 5, 'Sainte-Anne-de-la-Rochelle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42055, 5, 'Valcourt - Ville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42060, 5, 'Valcourt - Canton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42065, 5, 'Maricourt', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42070, 5, 'Kingsbury', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42075, 5, 'Melbourne', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42078, 5, 'Ulverton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42088, 5, 'Windsor', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42095, 5, 'Val-Joli', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42098, 5, 'Richmond', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42100, 5, 'Saint-Claude', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(42110, 5, 'Cleveland', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(43005, 5, 'Waterville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(43010, 5, 'Lennoxville (Sherbrooke)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(43020, 5, 'Fleurimont (Sherbrooke)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(43023, 5, 'Brompton (Sherbrooke)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(43024, 5, 'Mont-Bellevue (Sherbrooke)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(43025, 5, 'Jacques-Cartier (Sherbrooke)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(43030, 5, 'Rock Forest/Saint-Élie/Deauville (Sherbrooke)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44003, 5, 'Saint-Malo', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44005, 5, 'Saint-Venant-de-Paquette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44010, 5, 'East Hereford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44015, 5, 'Saint-Herménégilde', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44023, 5, 'Dixville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44037, 5, 'Coaticook', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44045, 5, 'Barnston-Ouest', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44050, 5, 'Stanstead-Est', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44055, 5, 'Sainte-Edwidge-de-Clifton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44060, 5, 'Martinville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(44071, 5, 'Compton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45008, 5, 'Stanstead - Ville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45020, 5, 'Ogden', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45025, 5, 'Stanstead - Canton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45030, 5, 'Potton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45035, 5, 'Ayer\'s Cliff', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45043, 5, 'Hatley - Municipalité', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45050, 5, 'North Hatley', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45055, 5, 'Hatley - Canton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45060, 5, 'Sainte-Catherine-de-Hatley', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45072, 5, 'Magog', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45080, 5, 'Saint-Benoît-du-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45085, 5, 'Austin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45093, 5, 'Eastman', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45095, 5, 'Bolton-Est', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45100, 5, 'Saint-Étienne-de-Bolton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45105, 5, 'Stukely-Sud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(45115, 5, 'Orford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46005, 16, 'Abercorn', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46010, 16, 'Frelighsburg', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46017, 16, 'Saint-Armand', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46025, 16, 'Saint-Pierre-de-Véronne-à-Pike-River', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46030, 16, 'Stanbridge Station', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46035, 16, 'Bedford - Ville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46040, 16, 'Bedford - Canton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46045, 16, 'Stanbridge East', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46050, 16, 'Dunham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46055, 16, 'Sutton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46065, 16, 'Bolton-Ouest', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46070, 16, 'Brome', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46075, 16, 'Lac-Brome', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46080, 16, 'Cowansville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46085, 16, 'East Farnham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46090, 16, 'Brigham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46095, 16, 'Saint-Ignace-de-Stanbridge', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46100, 16, 'Notre-Dame-de-Stanbridge', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46105, 16, 'Sainte-Sabine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(46112, 16, 'Farnham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47005, 16, 'Bromont', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47010, 16, 'Saint-Alphonse-de-Granby', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47017, 16, 'Granby', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47025, 16, 'Waterloo', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47030, 16, 'Warden', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47035, 16, 'Shefford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47040, 16, 'Saint-Joachim-de-Shefford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47047, 16, 'Roxton Pond', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(47055, 16, 'Sainte-Cécile-de-Milton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(48005, 16, 'Béthanie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(48010, 16, 'Roxton Falls', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(48015, 16, 'Roxton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(48020, 16, 'Sainte-Christine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(48028, 16, 'Acton Vale', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(48038, 16, 'Upton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(48045, 16, 'Saint-Théodore-d\'Acton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(48050, 16, 'Saint-Nazaire-d\'Acton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49005, 17, 'Saint-Félix-de-Kingsey', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49015, 17, 'Durham-Sud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00');
INSERT INTO `t_building_city` (`id`, `RegionID`, `CityName`, `Longitude`, `Latitude`, `updated_at`, `created_at`) VALUES
(49020, 17, 'Lefebvre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49025, 17, 'L\'Avenir', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49030, 17, 'Saint-Lucien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49040, 17, 'Wickham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49048, 17, 'Saint-Germain-de-Grantham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49057, 17, 'Drummondville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49070, 17, 'Saint-Cyrille-de-Wendover', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49075, 17, 'Notre-Dame-du-Bon-Conseil - Village', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49080, 17, 'Notre-Dame-du-Bon-Conseil - Paroisse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49085, 17, 'Sainte-Brigitte-des-Saults', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49095, 17, 'Saint-Majorique-de-Grantham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49100, 17, 'Saint-Edmond-de-Grantham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49105, 17, 'Saint-Eugène', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49113, 17, 'Saint-Guillaume', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49125, 17, 'Saint-Bonaventure', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(49130, 17, 'Saint-Pie-de-Guire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50005, 17, 'Sainte-Eulalie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50013, 17, 'Aston-Jonction', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50023, 17, 'Saint-Wenceslas', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50030, 17, 'Saint-Célestin - Village', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50035, 17, 'Saint-Célestin - Municipalité', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50042, 17, 'Saint-Léonard-d\'Aston', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50050, 17, 'Sainte-Perpétue', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50057, 17, 'Sainte-Monique', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50065, 17, 'Grand-Saint-Esprit', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50072, 17, 'Nicolet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50085, 17, 'La Visitation-de-Yamaska', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50090, 17, 'Saint-Zéphirin-de-Courval', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50095, 17, 'Saint-Elphège', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50100, 17, 'Baie-du-Febvre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50113, 17, 'Pierreville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50128, 17, 'Saint-François-du-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(50802, 17, 'Odanak', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51008, 4, 'Maskinongé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51015, 4, 'Louiseville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51020, 4, 'Yamachiche', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51025, 4, 'Saint-Barnabé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51030, 4, 'Saint-Sévère', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51035, 4, 'Saint-Léon-le-Grand', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51040, 4, 'Sainte-Ursule', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51045, 4, 'Saint-Justin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51050, 4, 'Saint-Édouard-de-Maskinongé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51055, 4, 'Sainte-Angèle-de-Prémont', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51060, 4, 'Saint-Paulin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(51065, 4, 'Saint-Alexis-des-Monts', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52007, 14, 'Lavaltrie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52017, 14, 'Lanoraie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52030, 14, 'Sainte-Élisabeth', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52035, 14, 'Berthierville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52040, 14, 'Sainte-Geneviève-de-Berthier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52045, 14, 'Saint-Ignace-de-Loyola', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52050, 14, 'La Visitation-de-l\'Île-Dupas', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52055, 14, 'Saint-Barthélemy', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52062, 14, 'Saint-Cuthbert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52070, 14, 'Saint-Norbert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52075, 14, 'Saint-Cléophas-de-Brandon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52080, 14, 'Saint-Gabriel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52085, 14, 'Saint-Gabriel-de-Brandon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52090, 14, 'Saint-Didace', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(52095, 14, 'Mandeville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53005, 16, 'Saint-David', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53010, 16, 'Massueville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53015, 16, 'Saint-Aimé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53020, 16, 'Saint-Robert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53025, 16, 'Sainte-Victoire-de-Sorel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53032, 16, 'Saint-Ours', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53040, 16, 'Saint-Roch-de-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53050, 16, 'Saint-Joseph-de-Sorel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53052, 16, 'Sorel-Tracy', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53065, 16, 'Sainte-Anne-de-Sorel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53072, 16, 'Yamaska', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(53085, 16, 'Saint-Gérard-Majella', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54005, 16, 'Saint-Pie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54017, 16, 'Saint-Damase', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54025, 16, 'Sainte-Madeleine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54030, 16, 'Sainte-Marie-Madeleine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54035, 16, 'La Présentation', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54045, 16, 'Saint-Hyacinthe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54060, 16, 'Saint-Dominique', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54065, 16, 'Saint-Valérien-de-Milton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54072, 16, 'Saint-Liboire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54090, 16, 'Saint-Simon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54095, 16, 'Sainte-Hélène-de-Bagot', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54100, 16, 'Saint-Hugues', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54105, 16, 'Saint-Barnabé-Sud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54110, 16, 'Saint-Jude', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54115, 16, 'Saint-Bernard-de-Michaudville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54120, 16, 'Saint-Louis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(54125, 16, 'Saint-Marcel-de-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(55008, 16, 'Ange-Gardien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(55015, 16, 'Saint-Paul-d\'Abbotsford', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(55023, 16, 'Saint-Césaire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(55030, 16, 'Sainte-Angèle-de-Monnoir', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(55037, 16, 'Rougemont', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(55048, 16, 'Marieville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(55057, 16, 'Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(55065, 16, 'Saint-Mathias-sur-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56005, 16, 'Venise-en-Québec', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56010, 16, 'Saint-Georges-de-Clarenceville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56015, 16, 'Noyan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56023, 16, 'Lacolle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56030, 16, 'Saint-Valentin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56035, 16, 'Saint-Paul-de-l\'Île-aux-Noix', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56042, 16, 'Henryville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56050, 16, 'Saint-Sébastien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56055, 16, 'Saint-Alexandre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56060, 16, 'Sainte-Anne-de-Sabrevois', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56065, 16, 'Saint-Blaise-sur-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56083, 16, 'Saint-Jean-sur-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56097, 16, 'Mont-Saint-Grégoire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(56105, 16, 'Sainte-Brigide-d\'Iberville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57005, 16, 'Chambly', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57010, 16, 'Carignan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57015, 16, 'Saint-Bruno-de-Montarville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57020, 16, 'Saint-Basile-le-Grand', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57025, 16, 'McMasterville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57030, 16, 'Otterburn Park', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57033, 16, 'Saint-Jean-Baptiste', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57035, 16, 'Mont-Saint-Hilaire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57040, 16, 'Beloeil', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57045, 16, 'Saint-Mathieu-de-Beloeil', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57050, 16, 'Saint-Marc-sur-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57057, 16, 'Saint-Charles-sur-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57068, 16, 'Saint-Denis-sur-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(57075, 16, 'Saint-Antoine-sur-Richelieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(58005, 16, 'Brossard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(58010, 16, 'Saint-Lambert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(58015, 16, 'Greenfield Park (Longueuil)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(58020, 16, 'Saint-Hubert (Longueuil)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(58227, 16, 'Le Vieux-Longueuil (Longueuil)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(59005, 16, 'Boucherville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(59010, 16, 'Sainte-Julie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(59015, 16, 'Saint-Amable', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(59020, 16, 'Varennes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(59025, 16, 'Verchères', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(59030, 16, 'Calixa-Lavallée', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(59035, 16, 'Contrecoeur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(60005, 14, 'Charlemagne', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(60010, 14, 'Le Gardeur (Repentigny)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(60013, 14, 'Repentigny (Repentigny)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(60020, 14, 'Saint-Sulpice', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(60028, 14, 'L\'Assomption', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(60035, 14, 'L\'Épiphanie - Ville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(60040, 14, 'L\'Épiphanie - Paroisse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61005, 14, 'Saint-Paul', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61013, 14, 'Crabtree', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61020, 14, 'Saint-Pierre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61025, 14, 'Joliette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61027, 14, 'Saint-Thomas', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61030, 14, 'Notre-Dame-des-Prairies', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61035, 14, 'Saint-Charles-Borromée', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61040, 14, 'Saint-Ambroise-de-Kildare', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61045, 14, 'Notre-Dame-de-Lourdes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(61050, 14, 'Sainte-Mélanie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62007, 14, 'Saint-Félix-de-Valois', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62015, 14, 'Saint-Jean-de-Matha', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62020, 14, 'Sainte-Béatrix', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62025, 14, 'Saint-Alphonse-Rodriguez', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62030, 14, 'Sainte-Marcelline-de-Kildare', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62037, 14, 'Rawdon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62047, 14, 'Chertsey', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62053, 14, 'Entrelacs', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62055, 14, 'Notre-Dame-de-la-Merci', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62060, 14, 'Saint-Donat', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62065, 14, 'Saint-Côme', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62070, 14, 'Sainte-Émélie-de-l\'Énergie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62075, 14, 'Saint-Damien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62080, 14, 'Saint-Zénon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62085, 14, 'Saint-Michel-des-Saints', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62906, 14, 'Baie-de-la-Bouteille', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(62912, 14, 'Saint-Guillaume-Nord', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63005, 14, 'Sainte-Marie-Salomé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63013, 14, 'Saint-Jacques', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63020, 14, 'Saint-Alexis - Village', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63025, 14, 'Saint-Alexis - Paroisse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63030, 14, 'Saint-Esprit', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63035, 14, 'Saint-Roch-de-l\'Achigan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63040, 14, 'Saint-Roch-Ouest', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63048, 14, 'Saint-Lin/Laurentides', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63055, 14, 'Saint-Calixte', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63060, 14, 'Sainte-Julienne', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(63065, 14, 'Saint-Liguori', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(64005, 14, 'Lachenaie (Terrebonne)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(64008, 14, 'Terrebonne (Terrebonne)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(64015, 14, 'Mascouche', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(64020, 14, 'La Plaine (Terrebonne)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65101, 13, 'Laval-sur-le-Lac (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65102, 13, 'Laval-Ouest (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65103, 13, 'Sainte-Dorothée (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65104, 13, 'Fabreville (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65105, 13, 'Chomedey (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65106, 13, 'Sainte-Rose (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65107, 13, 'Laval-des-Rapides (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65108, 13, 'Auteuil (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65109, 13, 'Vimont (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65110, 13, 'Pont-Viau (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65111, 13, 'Duvernay (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65112, 13, 'Saint-Vincent-de-Paul (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(65113, 13, 'Saint-François (Laval)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66005, 6, 'Montréal-Est', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66010, 6, 'Anjou (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66015, 6, 'Saint-Léonard (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66020, 6, 'Montréal-Nord (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66030, 6, 'Westmount', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66040, 6, 'LaSalle (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66045, 6, 'Montréal-Ouest', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66055, 6, 'Côte-Saint-Luc', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66057, 6, 'Lachine (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66060, 6, 'Hampstead', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66065, 6, 'Outremont (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66070, 6, 'Mont-Royal', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66075, 6, 'Saint-Laurent (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66085, 6, 'Dorval', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66092, 6, 'L\'Île-Dorval', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66095, 6, 'Pointe-Claire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66100, 6, 'Kirkland', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66105, 6, 'Beaconsfield', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66110, 6, 'Baie-d\'Urfé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66115, 6, 'Sainte-Anne-de-Bellevue', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66125, 6, 'Senneville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66130, 6, 'Pierrefonds-Roxboro (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66140, 6, 'Dollard-Des Ormeaux', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66150, 6, 'L\'Île-Bizard/Sainte-Geneviève (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66501, 6, 'Côte-des-Neiges/Notre-Dame-de-Grâce (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66505, 6, 'Le Sud-Ouest (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66506, 6, 'Ahuntsic-Cartierville (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66507, 6, 'Villeray/Saint-Michel/Parc-Extension (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66508, 6, 'Le Plateau-Mont-Royal (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66509, 6, 'Ville-Marie (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66511, 6, 'Rosemont/La Petite-Patrie (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66513, 6, 'Mercier/Hochelaga-Maisonneuve (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66514, 6, 'Rivière-des-Prairies/Pointe-aux-Trembles (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(66516, 6, 'Verdun/Île-des-Sœurs (Montréal)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67005, 16, 'Saint-Mathieu', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67010, 16, 'Saint-Philippe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67015, 16, 'La Prairie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67020, 16, 'Candiac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67025, 16, 'Delson', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67030, 16, 'Sainte-Catherine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67035, 16, 'Saint-Constant', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67040, 16, 'Saint-Isidore', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67045, 16, 'Mercier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67050, 16, 'Châteauguay', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67055, 16, 'Léry', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(67802, 16, 'Kahnawake', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68005, 16, 'Saint-Bernard-de-Lacolle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68010, 16, 'Hemmingford - Village', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68015, 16, 'Hemmingford - Canton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68020, 16, 'Sainte-Clotilde', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68025, 16, 'Saint-Patrice-de-Sherrington', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68030, 16, 'Napierville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68035, 16, 'Saint-Cyprien-de-Napierville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68040, 16, 'Saint-Jacques-le-Mineur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68045, 16, 'Saint-Édouard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68050, 16, 'Saint-Michel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(68055, 16, 'Saint-Rémi', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69005, 16, 'Havelock', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69010, 16, 'Franklin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69017, 16, 'Saint-Chrysostome', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69025, 16, 'Howick', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69030, 16, 'Très-Saint-Sacrement', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69037, 16, 'Ormstown', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69045, 16, 'Hinchinbrooke', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69050, 16, 'Elgin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69055, 16, 'Huntingdon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69060, 16, 'Godmanchester', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69065, 16, 'Sainte-Barbe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69070, 16, 'Saint-Anicet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69075, 16, 'Dundee', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(69802, 16, 'Akwesasne', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(70005, 16, 'Saint-Urbain-Premier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(70012, 16, 'Sainte-Martine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(70022, 16, 'Beauharnois', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(70030, 16, 'Saint-Étienne-de-Beauharnois', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(70035, 16, 'Saint-Louis-de-Gonzague', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(70040, 16, 'Saint-Stanislas-de-Kostka', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(70052, 16, 'Salaberry-de-Valleyfield', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71005, 16, 'Rivière-Beaudette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71015, 16, 'Saint-Télesphore', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71020, 16, 'Saint-Polycarpe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71025, 16, 'Saint-Zotique', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71033, 16, 'Les Coteaux', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71040, 16, 'Coteau-du-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71045, 16, 'Saint-Clet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71050, 16, 'Les Cèdres', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71055, 16, 'Pointe-des-Cascades', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71060, 16, 'L\'Île-Perrot', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71065, 16, 'Notre-Dame-de-l\'Île-Perrot', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71070, 16, 'Pincourt', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71075, 16, 'Terrasse-Vaudreuil', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71083, 16, 'Vaudreuil-Dorion', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71090, 16, 'Vaudreuil-sur-le-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71095, 16, 'L\'Île-Cadieux', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71100, 16, 'Hudson', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71105, 16, 'Saint-Lazare', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71110, 16, 'Sainte-Marthe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71115, 16, 'Sainte-Justine-de-Newton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71125, 16, 'Très-Saint-Rédempteur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71133, 16, 'Rigaud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(71140, 16, 'Pointe-Fortune', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(72005, 15, 'Saint-Eustache', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(72010, 15, 'Deux-Montagnes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(72015, 15, 'Sainte-Marthe-sur-le-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(72020, 15, 'Pointe-Calumet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(72025, 15, 'Saint-Joseph-du-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(72032, 15, 'Oka', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(72043, 15, 'Saint-Placide', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(73005, 15, 'Boisbriand', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(73010, 15, 'Sainte-Thérèse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(73015, 15, 'Blainville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(73020, 15, 'Rosemère', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(73025, 15, 'Lorraine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(73030, 15, 'Bois-des-Filion', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(73035, 15, 'Sainte-Anne-des-Plaines', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(74005, 15, 'Mirabel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(75005, 15, 'Saint-Colomban', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(75017, 15, 'Saint-Jérôme', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(75028, 15, 'Sainte-Sophie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(75040, 15, 'Prévost', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(75045, 15, 'Saint-Hippolyte', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76008, 15, 'Saint-André-d\'Argenteuil', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76020, 15, 'Lachute', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76025, 15, 'Gore', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76030, 15, 'Mille-Isles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76035, 15, 'Wentworth', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76043, 15, 'Brownsburg-Chatham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76052, 15, 'Grenville-sur-la-Rouge', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76055, 15, 'Grenville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(76065, 15, 'Harrington', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77010, 15, 'Estérel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77015, 15, 'Sainte-Marguerite-du-Lac-Masson', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77022, 15, 'Sainte-Adèle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77030, 15, 'Piedmont', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77035, 15, 'Sainte-Anne-des-Lacs', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77040, 15, 'Saint-Sauveur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77050, 15, 'Morin-Heights', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77055, 15, 'Lac-des-Seize-Îles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77060, 15, 'Wentworth-Nord', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(77065, 15, 'Saint-Adolphe-d\'Howard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78005, 15, 'Val-Morin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78010, 15, 'Val-David', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78015, 15, 'Lantier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78020, 15, 'Sainte-Lucie-des-Laurentides', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78032, 15, 'Sainte-Agathe-des-Monts', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78042, 15, 'Ivry-sur-le-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78047, 15, 'Saint-Faustin/Lac-Carré', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78050, 15, 'Barkmere', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78055, 15, 'Montcalm', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78060, 15, 'Arundel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78065, 15, 'Huberdeau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78070, 15, 'Amherst', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78075, 15, 'Brébeuf', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78095, 15, 'Lac-Supérieur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78100, 15, 'Val-des-Lacs', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78102, 15, 'Mont-Tremblant', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78115, 15, 'La Conception', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78120, 15, 'Labelle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78127, 15, 'Lac-Tremblant-Nord', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(78130, 15, 'La Minerve', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79005, 15, 'Notre-Dame-du-Laus', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79010, 15, 'Notre-Dame-de-Pontmain', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79015, 15, 'Lac-du-Cerf', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79020, 15, 'Saint-Aimé-du-Lac-des-Îles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79025, 15, 'Kiamika', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79030, 15, 'Nominingue', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79037, 15, 'Rivière-Rouge', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79045, 15, 'La Macaza', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79050, 15, 'L\'Ascension', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79060, 15, 'Lac-Saguay', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79065, 15, 'Chute-Saint-Philippe', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79075, 15, 'Lac-des-Écorces', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79085, 15, 'Mont-Laurier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79097, 15, 'Ferme-Neuve', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79105, 15, 'Lac-Saint-Paul', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79110, 15, 'Mont-Saint-Michel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79115, 15, 'Sainte-Anne-du-Lac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(79912, 15, 'Lac-De La Bidière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80005, 7, 'Fassett', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80010, 7, 'Montebello', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80015, 7, 'Notre-Dame-de-Bonsecours', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80020, 7, 'Notre-Dame-de-la-Paix', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80027, 7, 'Saint-André-Avellin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80037, 7, 'Papineauville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80045, 7, 'Plaisance', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80050, 7, 'Thurso', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80055, 7, 'Lochaber', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80060, 7, 'Lochaber-Partie-Ouest', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80065, 7, 'Mayo', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80070, 7, 'Saint-Sixte', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80078, 7, 'Ripon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80085, 7, 'Mulgrave-et-Derry', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80090, 7, 'Montpellier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80095, 7, 'Lac-Simon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80103, 7, 'Chénéville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80110, 7, 'Namur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80115, 7, 'Boileau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80125, 7, 'Saint-Émile-de-Suffolk', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80130, 7, 'Lac-des-Plages', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80135, 7, 'Duhamel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80140, 7, 'Val-des-Bois', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(80145, 7, 'Bowman', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(81005, 7, 'Buckingham (Gatineau)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(81010, 7, 'Masson-Angers (Gatineau)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(81017, 7, 'Gatineau (Gatineau)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(81020, 7, 'Hull (Gatineau)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(81025, 7, 'Aylmer (Gatineau)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(82005, 7, 'L\'Ange-Gardien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(82010, 7, 'Notre-Dame-de-la-Salette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(82015, 7, 'Val-des-Monts', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(82020, 7, 'Cantley', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(82025, 7, 'Chelsea', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(82030, 7, 'Pontiac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(82035, 7, 'La Pêche', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83005, 7, 'Denholm', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83010, 7, 'Low', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83015, 7, 'Kazabazua', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83020, 7, 'Lac-Sainte-Marie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83032, 7, 'Gracefield', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83040, 7, 'Cayamant', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83045, 7, 'Blue Sea', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83050, 7, 'Bouchette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83055, 7, 'Sainte-Thérèse-de-la-Gatineau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83060, 7, 'Messines', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83065, 7, 'Maniwaki', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83070, 7, 'Déléage', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83075, 7, 'Egan-Sud', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83085, 7, 'Bois-Franc', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83088, 7, 'Montcerf-Lytton', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83090, 7, 'Aumond', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83095, 7, 'Grand-Remous', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(83912, 7, 'Dépôt-Échouani', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84005, 7, 'Bristol', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84010, 7, 'Shawville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84015, 7, 'Clarendon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84020, 7, 'Portage-du-Fort', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84025, 7, 'Bryson', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84030, 7, 'Campbell\'s Bay', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84035, 7, 'L’Île-du-Grand-Calumet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84040, 7, 'Litchfield', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84045, 7, 'Thorne', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84050, 7, 'Alleyn-et-Cawood', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84055, 7, 'Otter Lake', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84060, 7, 'Fort-Coulonge', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84065, 7, 'Mansfield-et-Pontefract', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84070, 7, 'Waltham', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84082, 7, 'L\'Isle-aux-Allumettes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84090, 7, 'Chichester', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84095, 7, 'Sheenboro', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84100, 7, 'Rapides-des-Joachims', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(84902, 7, 'Lac-Nilgaut', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85005, 8, 'Témiscaming', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85010, 8, 'Kipawa', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85015, 8, 'Saint-Édouard-de-Fabre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85020, 8, 'Béarn', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85025, 8, 'Ville-Marie', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85030, 8, 'Duhamel-Ouest', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85037, 8, 'Lorrainville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85045, 8, 'Saint-Bruno-de-Guigues', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85050, 8, 'Laverlochère', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85055, 8, 'Fugèreville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85060, 8, 'Latulipe-et-Gaboury', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85065, 8, 'Belleterre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85070, 8, 'Laforce', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85075, 8, 'Moffet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85080, 8, 'Angliers', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85085, 8, 'Saint-Eugène-de-Guigues', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85090, 8, 'Notre-Dame-du-Nord', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85095, 8, 'Guérin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85100, 8, 'Nédélec', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85105, 8, 'Rémigny', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(85905, 8, 'Laniel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(86042, 8, 'Rouyn-Noranda', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87005, 8, 'Duparquet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87010, 8, 'Rapide-Danseur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87015, 8, 'Roquemaure', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87020, 8, 'Gallichan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87025, 8, 'Palmarolle', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87030, 8, 'Sainte-Germaine-Boulé', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87035, 8, 'Poularies', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87042, 8, 'Taschereau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87050, 8, 'Authier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87058, 8, 'Macamic', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87070, 8, 'Sainte-Hélène-de-Mancebourg', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87075, 8, 'Clerval', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87080, 8, 'La Reine', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87085, 8, 'Dupuy', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87090, 8, 'La Sarre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87095, 8, 'Chazel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87100, 8, 'Authier-Nord', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87105, 8, 'Val-Saint-Gilles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87110, 8, 'Clermont', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87115, 8, 'Normétal', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87120, 8, 'Saint-Lambert', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(87904, 8, 'Rivière-Ojima', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88005, 8, 'Champneuf', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88010, 8, 'Rochebaucourt', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88015, 8, 'La Morandière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88022, 8, 'Barraute', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88030, 8, 'La Corne', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88035, 8, 'Landrienne', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88040, 8, 'Saint-Marc-de-Figuery', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88045, 8, 'La Motte', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88050, 8, 'Saint-Mathieu-d\'Harricana', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88055, 8, 'Amos', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88060, 8, 'Saint-Félix-de-Dalquier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88065, 8, 'Saint-Dominique-du-Rosaire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88070, 8, 'Berry', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88075, 8, 'Trécesson', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88080, 8, 'Launay', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88085, 8, 'Sainte-Gertrude-Manneville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88090, 8, 'Preissac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88902, 8, 'Lac-Despinassy', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(88904, 8, 'Lac-Chicobi', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(89008, 8, 'Val-d\'Or', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(89010, 8, 'Rivière-Héva', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(89015, 8, 'Malartic', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(89040, 8, 'Senneterre - Ville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(89045, 8, 'Senneterre - Paroisse', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(89050, 8, 'Belcourt', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(90007, 4, 'La Tuque', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(90015, 4, 'La Bostonnais', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(90025, 4, 'Lac-Édouard', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(90802, 4, 'Wemotaci', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91005, 2, 'Lac-Bouchette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91010, 2, 'Saint-André-du-Lac-Saint-Jean', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91015, 2, 'Saint-François-de-Sales', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91020, 2, 'Chambord', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91025, 2, 'Roberval', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91030, 2, 'Sainte-Hedwidge', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91035, 2, 'Saint-Prime', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91042, 2, 'Saint-Félicien', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91050, 2, 'La Doré', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91802, 2, 'Mashteuiatsh', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(91902, 2, 'Lac-Ashuapmushuan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92005, 2, 'Saint-Augustin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92010, 2, 'Péribonka', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92015, 2, 'Sainte-Jeanne-d\'Arc', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92022, 2, 'Dolbeau-Mistassini', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92030, 2, 'Albanel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92040, 2, 'Normandin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92045, 2, 'Saint-Thomas-Didyme', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92050, 2, 'Saint-Edmond-les-Plaines', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92055, 2, 'Girardville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92060, 2, 'Notre-Dame-de-Lorette', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92065, 2, 'Saint-Eugène-d\'Argentenay', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92070, 2, 'Saint-Stanislas', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92902, 2, 'Passes-Dangereuses', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(92904, 2, 'Rivière-Mistassini', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93005, 2, 'Desbiens', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93012, 2, 'Métabetchouan/Lac-à-la-Croix', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93020, 2, 'Hébertville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93025, 2, 'Hébertville-Station', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93030, 2, 'Saint-Bruno', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93035, 2, 'Saint-Gédéon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93042, 2, 'Alma', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93045, 2, 'Saint-Nazaire', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93055, 2, 'Labrecque', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93060, 2, 'Lamarche', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93065, 2, 'L\'Ascension-de-Notre-Seigneur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93070, 2, 'Saint-Henri-de-Taillon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93075, 2, 'Sainte-Monique', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93080, 2, 'Saint-Ludger-de-Milot', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(93908, 2, 'Belle-Rivière', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94005, 2, 'Petit-Saguenay', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94010, 2, 'L\'Anse-Saint-Jean', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94015, 2, 'Rivière-Éternité', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94020, 2, 'Ferland-et-Boilleau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94025, 2, 'Saint-Félix-d\'Otis', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94030, 2, 'Sainte-Rose-du-Nord', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94035, 2, 'Saint-Fulgence', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94040, 2, 'La Baie (Saguenay)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94045, 2, 'Laterrière (Saguenay)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94050, 2, 'Chicoutimi (Saguenay)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94055, 2, 'Canton Tremblay (Saguenay)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94060, 2, 'Saint-Honoré', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94065, 2, 'Shipshaw (Saguenay)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94070, 2, 'Jonquière (Saguenay)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94075, 2, 'Lac-Kénogami (Saguenay)', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94080, 2, 'Larouche', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94085, 2, 'Saint-Charles-de-Bourget', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94090, 2, 'Saint-Ambroise', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94095, 2, 'Saint-David-de-Falardeau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94100, 2, 'Bégin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94928, 2, 'Lac-Ministuk', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(94930, 2, 'Mont-Valin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95005, 9, 'Tadoussac', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95010, 9, 'Sacré-Coeur', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95018, 9, 'Les Bergeronnes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95025, 9, 'Les Escoumins', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95032, 9, 'Longue-Rive', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95040, 9, 'Portneuf-sur-Mer', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95045, 9, 'Forestville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95050, 9, 'Colombier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(95902, 9, 'Lac-au-Brochet', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96005, 9, 'Baie-Trinité', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96010, 9, 'Godbout', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96015, 9, 'Franquelin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96020, 9, 'Baie-Comeau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96025, 9, 'Pointe-Lebel', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96030, 9, 'Pointe-aux-Outardes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96035, 9, 'Chute-aux-Outardes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96040, 9, 'Ragueneau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(96902, 9, 'Rivière-aux-Outardes', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(97010, 9, 'Sept-Îles', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(97020, 9, 'Port-Cartier', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(97035, 9, 'Fermont', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(97040, 9, 'Schefferville', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(97904, 9, 'Lac-Walker', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(97906, 9, 'Rivière-Mouchalagane', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98005, 9, 'Blanc-Sablon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98010, 9, 'Bonne-Espérance', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00');
INSERT INTO `t_building_city` (`id`, `RegionID`, `CityName`, `Longitude`, `Latitude`, `updated_at`, `created_at`) VALUES
(98012, 9, 'Saint-Augustin', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98014, 9, 'Gros-Mécatina', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98015, 9, 'Côte-Nord-du-Golfe-du-Saint-Laurent', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98020, 9, 'L\'Île-d\'Anticosti', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98025, 9, 'Natashquan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98030, 9, 'Aguanish', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98035, 9, 'Baie-Johan-Beetz', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98040, 9, 'Havre-Saint-Pierre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98045, 9, 'Longue-Pointe-de-Mingan', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98050, 9, 'Rivière-Saint-Jean', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98055, 9, 'Rivière-au-Tonnerre', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(98904, 9, 'Lac-Jérôme', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(99005, 10, 'Lebel-sur-Quévillon', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(99015, 10, 'Matagami', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(99020, 10, 'Chapais', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(99025, 10, 'Chibougamau', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(99060, 10, 'Baie-James', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(99095, 10, 'Kuujjuaq', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(99902, 10, 'Rivière-Koksoak', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(500000, 50, 'Autres provinces / Other provinces', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(700000, 70, 'Etats-Unis / USA', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(800000, 80, 'Autres pays / Other countries', 0, 0, '2016-01-06 03:08:37', '0000-00-00 00:00:00'),
(800001, 19, 'Charny', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800002, 19, 'Lévis', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800003, 19, 'Pintendre', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800004, 19, 'Saint-Étienne-de-Lauzon', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800005, 19, 'Saint-Jean-Chrysostome', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800006, 19, 'Saint-Joseph-de-la-Pointe-de-Lévy', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800007, 19, 'Saint-Nicolas', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800008, 19, 'Saint-Rédempteur', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800009, 19, 'Saint-Romuald', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800010, 19, 'Sainte-Hélène-de-Breakeyville', NULL, NULL, '2016-01-14 15:29:49', '0000-00-00 00:00:00'),
(800011, 20, 'Cap-A-L\'Aigle', NULL, NULL, '2016-01-14 15:53:52', '0000-00-00 00:00:00'),
(800012, 20, 'Iles-Aux-Coudres St-Louis', NULL, NULL, '2016-01-14 15:53:52', '0000-00-00 00:00:00'),
(800013, 20, 'Pointe-Au-Pic', NULL, NULL, '2016-01-14 15:54:21', '0000-00-00 00:00:00'),
(800014, 20, 'St-Fidèle', NULL, NULL, '2016-01-14 15:54:21', '0000-00-00 00:00:00'),
(800015, 20, 'St-Joseph-De-La-Rive', NULL, NULL, '2016-01-14 15:54:43', '0000-00-00 00:00:00'),
(800016, 20, 'St-Urbain-De-Charlevoix', NULL, NULL, '2016-01-14 15:54:43', '0000-00-00 00:00:00'),
(800017, 3, 'Québec - Aéroport', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800018, 3, 'Québec - Des Châtels', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800019, 3, 'Québec - Duberger/Les Saules', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800021, 3, 'Québec - Lebourgneuf', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800022, 3, 'Québec - Loretteville', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800023, 3, 'Québec - Neufchâtel-Est/Lebourgneuf', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800024, 3, 'Québec - Saint-Émile', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800025, 3, 'Québec - Saint-Roch', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800026, 3, 'Québec - Saint-Sacrement', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800027, 3, 'Québec - Val-Bélair', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800028, 3, 'Québec - Vieux-Québec/Cap-Blanc/Colline parlem', NULL, NULL, '2016-01-14 16:20:04', '0000-00-00 00:00:00'),
(800029, 3, 'Québec - Vanier', NULL, NULL, '2016-01-14 16:24:38', '0000-00-00 00:00:00'),
(800032, 3, 'Québec - Montcalm', NULL, NULL, '2016-01-14 17:06:00', '0000-00-00 00:00:00'),
(800033, 3, 'Québec - St-sauveur', NULL, NULL, '2016-01-14 17:06:00', '0000-00-00 00:00:00'),
(800034, 3, 'Québec - Saint-Jean-Baptiste', NULL, NULL, '2016-01-14 17:06:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_exclusion`
--

CREATE TABLE `t_building_exclusion` (
  `id` int(10) NOT NULL,
  `BuildingID` int(10) NOT NULL,
  `Exclusion` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_exclusion`
--

INSERT INTO `t_building_exclusion` (`id`, `BuildingID`, `Exclusion`, `updated_at`, `created_at`) VALUES
(4, 10, '4', '2016-02-20 03:01:58', '2016-02-20 03:01:58'),
(5, 10, '5', '2016-02-20 03:01:58', '2016-02-20 03:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_favorite`
--

CREATE TABLE `t_building_favorite` (
  `ID` int(10) NOT NULL COMMENT 'ID',
  `UserID` int(10) NOT NULL COMMENT 'UserID from table t_user',
  `BuildingID` int(10) NOT NULL COMMENT 'ID from table t_building',
  `Date` datetime NOT NULL COMMENT 'Date',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_favorite`
--

INSERT INTO `t_building_favorite` (`ID`, `UserID`, `BuildingID`, `Date`, `updated_at`, `created_at`) VALUES
(21, 16, 8, '0000-00-00 00:00:00', '2016-02-03 02:05:58', '2016-02-03 02:05:58'),
(30, 16, 11, '0000-00-00 00:00:00', '2016-02-11 04:04:28', '2016-02-11 04:04:28'),
(39, 2, 7, '0000-00-00 00:00:00', '2016-02-23 05:34:11', '2016-02-23 05:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_image`
--

CREATE TABLE `t_building_image` (
  `ID` int(10) NOT NULL COMMENT 'Image ID',
  `BuildingID` int(10) NOT NULL,
  `File_name` varchar(500) NOT NULL COMMENT 'image file name',
  `Title` varchar(500) NOT NULL COMMENT 'Image title',
  `Description_fr` varchar(500) NOT NULL,
  `Description_en` varchar(500) NOT NULL,
  `img_index` int(10) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_image`
--

INSERT INTO `t_building_image` (`ID`, `BuildingID`, `File_name`, `Title`, `Description_fr`, `Description_en`, `img_index`, `updated_at`, `created_at`) VALUES
(1, 1, '1449060321.png', 'FACA', '', '', 0, '2016-01-29 13:57:34', '0000-00-00 00:00:00'),
(2, 2, '1449060279.png', 'FACA', '', '', 0, '2016-01-29 13:57:49', '2015-12-03 07:08:40'),
(3, 3, '1449060279.png', 'FACA', '', '', 0, '2016-01-29 13:58:05', '2015-12-03 07:14:40'),
(5, 5, '135368407.jpg', 'FACA', '', '', 1, '2016-02-11 23:41:12', '2016-01-29 00:04:18'),
(6, 5, '135368408.jpg', 'EXTE', '', '', 2, '2016-02-11 23:41:12', '2016-01-29 00:04:19'),
(7, 5, '135368409.jpg', 'EXTE', '', '', 3, '2016-02-11 23:41:12', '2016-01-29 00:04:19'),
(8, 5, '135368410.jpg', 'EXTE', '', '', 4, '2016-02-11 23:41:12', '2016-01-29 00:04:20'),
(9, 5, '135368411.jpg', 'SAM', '', '', 5, '2016-02-11 23:41:12', '2016-01-29 00:04:20'),
(10, 5, '135368412.jpg', 'CUI', '', '', 6, '2016-02-11 23:41:12', '2016-01-29 00:04:21'),
(11, 5, '135368413.jpg', 'CUI', '', '', 7, '2016-02-11 23:41:12', '2016-01-29 00:04:21'),
(12, 5, '135368414.jpg', 'SAM', '', '', 8, '2016-02-11 23:41:12', '2016-01-29 00:04:22'),
(13, 5, '135368415.jpg', 'VDE', '', '', 9, '2016-02-11 23:41:12', '2016-01-29 00:04:22'),
(14, 5, '135368416.jpg', 'SAL', '', '', 10, '2016-02-11 23:41:12', '2016-01-29 00:04:22'),
(15, 5, '135368417.jpg', 'SAL', '', '', 11, '2016-02-11 23:41:12', '2016-01-29 00:04:23'),
(16, 5, '135368418.jpg', 'SAL', '', '', 12, '2016-02-11 23:41:12', '2016-01-29 00:04:23'),
(17, 5, '135368419.jpg', 'CCP', '', '', 13, '2016-02-11 23:41:12', '2016-01-29 00:04:23'),
(18, 5, '135368420.jpg', 'CCP', '', '', 14, '2016-02-11 23:41:12', '2016-01-29 00:04:24'),
(19, 5, '135368421.jpg', 'CAC', '', '', 15, '2016-02-11 23:41:12', '2016-01-29 00:04:24'),
(20, 5, '135368422.jpg', 'SDB', '', '', 16, '2016-02-11 23:41:12', '2016-01-29 00:04:24'),
(21, 5, '135368423.jpg', 'SDB', '', '', 17, '2016-02-11 23:41:13', '2016-01-29 00:04:25'),
(22, 5, '135368424.jpg', 'SFM', '', '', 18, '2016-02-11 23:41:13', '2016-01-29 00:04:25'),
(23, 5, '135368425.jpg', 'SFM', '', '', 19, '2016-02-11 23:41:13', '2016-01-29 00:04:25'),
(24, 5, '135368426.jpg', 'AU', '', '', 20, '2016-02-11 23:41:13', '2016-01-29 00:04:26'),
(25, 5, '135368427.jpg', 'CAC', '', '', 21, '2016-02-11 23:41:13', '2016-01-29 00:04:26'),
(26, 5, '135368428.jpg', 'CAC', '', '', 22, '2016-02-11 23:41:13', '2016-01-29 00:04:27'),
(27, 5, '135368429.jpg', 'SDB', '', '', 23, '2016-02-11 23:41:13', '2016-01-29 00:04:27'),
(28, 5, '135368430.jpg', 'SDB', '', '', 24, '2016-02-11 23:41:13', '2016-01-29 00:04:27'),
(29, 6, '132319209.jpg', 'FACA', '', '', 1, '2016-02-11 23:40:53', '2016-01-29 00:04:28'),
(30, 6, '132319210.jpg', 'FACA', '', '', 2, '2016-02-11 23:40:53', '2016-01-29 00:04:28'),
(31, 6, '132319211.jpg', 'EXTE', '', '', 3, '2016-02-11 23:40:53', '2016-01-29 00:04:28'),
(32, 6, '132319212.jpg', 'EXTE', '', '', 4, '2016-02-11 23:40:53', '2016-01-29 00:04:29'),
(33, 6, '132319213.jpg', 'EXTE', '', '', 5, '2016-02-11 23:40:53', '2016-01-29 00:04:29'),
(34, 6, '132319214.jpg', 'CUI', '', '', 6, '2016-02-11 23:40:53', '2016-01-29 00:04:30'),
(35, 6, '132319215.jpg', 'CUI', '', '', 7, '2016-02-11 23:40:53', '2016-01-29 00:04:30'),
(36, 6, '132319216.jpg', 'SAM', '', '', 8, '2016-02-11 23:40:53', '2016-01-29 00:04:30'),
(37, 6, '132319217.jpg', 'VDE', '', '', 9, '2016-02-11 23:40:53', '2016-01-29 00:04:31'),
(38, 6, '132319218.jpg', 'SAL', '', '', 10, '2016-02-11 23:40:54', '2016-01-29 00:04:31'),
(39, 6, '132319219.jpg', 'VDE', '', '', 11, '2016-02-11 23:40:54', '2016-01-29 00:04:31'),
(40, 6, '132319220.jpg', 'AU', '', '', 12, '2016-02-11 23:40:54', '2016-01-29 00:04:31'),
(41, 6, '132319221.jpg', 'CCP', '', '', 13, '2016-02-11 23:40:54', '2016-01-29 00:04:32'),
(42, 6, '132319222.jpg', 'CAC', '', '', 14, '2016-02-11 23:40:54', '2016-01-29 00:04:32'),
(43, 6, '132319223.jpg', 'CAC', '', '', 15, '2016-02-11 23:40:54', '2016-01-29 00:04:32'),
(44, 6, '132319224.jpg', 'SDB', '', '', 16, '2016-02-11 23:40:54', '2016-01-29 00:04:33'),
(45, 6, '132319225.jpg', 'SFM', '', '', 17, '2016-02-11 23:40:54', '2016-01-29 00:04:33'),
(46, 6, '132319226.jpg', 'SFM', '', '', 18, '2016-02-11 23:40:54', '2016-01-29 00:04:34'),
(47, 6, '132319227.jpg', 'BOU', '', '', 19, '2016-02-11 23:40:54', '2016-01-29 00:04:34'),
(48, 6, '132319228.jpg', 'SDB', '', '', 20, '2016-02-11 23:40:54', '2016-01-29 00:04:34'),
(49, 7, '131242621.jpg', 'FACA', '', '', 1, '2016-02-11 23:40:31', '2016-01-29 00:04:35'),
(50, 7, '131242622.jpg', 'CUI', '', '', 2, '2016-02-11 23:40:31', '2016-01-29 00:04:35'),
(51, 7, '131242623.jpg', 'SAM', '', '', 3, '2016-02-11 23:40:31', '2016-01-29 00:04:36'),
(52, 7, '131242624.jpg', 'SAM', '', '', 4, '2016-02-11 23:40:31', '2016-01-29 00:04:36'),
(53, 7, '131242625.jpg', 'SAM', '', '', 5, '2016-02-11 23:40:31', '2016-01-29 00:04:36'),
(54, 7, '131242626.jpg', 'SAL', '', '', 6, '2016-02-11 23:40:31', '2016-01-29 00:04:37'),
(55, 7, '131242627.jpg', 'SAL', '', '', 7, '2016-02-11 23:40:31', '2016-01-29 00:04:37'),
(56, 7, '131242628.jpg', 'S-E', '', '', 8, '2016-02-11 23:40:31', '2016-01-29 00:04:37'),
(57, 7, '131242629.jpg', 'AU', '', '', 9, '2016-02-11 23:40:31', '2016-01-29 00:04:38'),
(58, 7, '131242630.jpg', 'CCP', '', '', 10, '2016-02-11 23:40:31', '2016-01-29 00:04:38'),
(59, 7, '131242631.jpg', 'CCP', '', '', 11, '2016-02-11 23:40:31', '2016-01-29 00:04:38'),
(60, 7, '131242632.jpg', 'CAC', '', '', 12, '2016-02-11 23:40:31', '2016-01-29 00:04:39'),
(61, 7, '131242633.jpg', 'CAC', '', '', 13, '2016-02-11 23:40:31', '2016-01-29 00:04:39'),
(62, 7, '131242634.jpg', 'SDB', '', '', 14, '2016-02-11 23:40:31', '2016-01-29 00:04:39'),
(63, 7, '131242635.jpg', 'SFM', '', '', 15, '2016-02-11 23:40:32', '2016-01-29 00:04:40'),
(64, 7, '131242636.jpg', 'SFM', '', '', 16, '2016-02-11 23:40:32', '2016-01-29 00:04:40'),
(65, 7, '131242637.jpg', 'SDB', '', '', 17, '2016-02-11 23:40:32', '2016-01-29 00:04:40'),
(66, 7, '131242638.jpg', 'FACARR', '', '', 18, '2016-02-11 23:40:32', '2016-01-29 00:04:41'),
(67, 7, '131242639.jpg', 'COUR', '', '', 19, '2016-02-11 23:40:32', '2016-01-29 00:04:41'),
(68, 8, '136510775.jpg', 'FACA', '', '', 1, '2016-02-11 04:32:45', '2016-01-29 00:08:27'),
(69, 8, '136510776.jpg', 'SAL', '', '', 2, '2016-02-11 17:03:13', '2016-01-29 00:08:27'),
(70, 8, '136510777.jpg', 'SAL', '', '', 3, '2016-02-11 17:03:13', '2016-01-29 00:08:27'),
(71, 8, '136510778.jpg', 'CUI', '', '', 4, '2016-02-11 17:03:13', '2016-01-29 00:08:28'),
(72, 8, '136510779.jpg', 'CUI', '', '', 5, '2016-02-11 17:03:13', '2016-01-29 00:08:28'),
(73, 8, '136510780.jpg', 'CAC', '', '', 6, '2016-02-11 17:03:13', '2016-01-29 00:08:29'),
(74, 8, '136510781.jpg', 'CAC', '', '', 7, '2016-02-11 17:03:13', '2016-01-29 00:08:29'),
(75, 8, '136510782.jpg', 'SDB', '', '', 8, '2016-02-11 17:03:13', '2016-01-29 00:08:29'),
(76, 8, '136510783.jpg', 'SDB', '', '', 9, '2016-02-11 17:03:13', '2016-01-29 00:08:30'),
(77, 8, '136510784.jpg', 'SFM', '', '', 10, '2016-02-11 17:03:13', '2016-01-29 00:08:30'),
(78, 8, '136510785.jpg', 'SFM', '', '', 11, '2016-02-11 17:03:13', '2016-01-29 00:08:30'),
(79, 8, '136510786.jpg', 'S-E', '', '', 12, '2016-02-11 17:03:13', '2016-01-29 00:08:30'),
(80, 8, '136510787.jpg', 'CAC', '', '', 13, '2016-02-11 17:03:13', '2016-01-29 00:08:31'),
(81, 8, '136510788.jpg', 'FACARR', '', '', 14, '2016-02-11 17:07:13', '2016-01-29 00:08:31'),
(82, 8, '136510789.jpg', 'COUR', '', '', 15, '2016-02-11 17:07:14', '2016-01-29 00:08:31'),
(106, 11, '137009213.jpg', 'FACA', '', '', 1, '2016-02-04 21:33:10', '2016-02-04 21:33:10'),
(107, 11, '137009214.jpg', 'SAM', '', '', 2, '2016-02-04 21:33:10', '2016-02-04 21:33:10'),
(108, 11, '137009215.jpg', 'SAM', '', '', 3, '2016-02-04 21:33:10', '2016-02-04 21:33:10'),
(109, 11, '137009216.jpg', 'SAL', '', '', 4, '2016-02-04 21:33:11', '2016-02-04 21:33:11'),
(110, 11, '137009217.jpg', 'SAL', '', '', 5, '2016-02-04 21:33:11', '2016-02-04 21:33:11'),
(111, 11, '137009218.jpg', 'CUI', '', '', 6, '2016-02-04 21:33:12', '2016-02-04 21:33:12'),
(112, 11, '137009219.jpg', 'CUI', '', '', 7, '2016-02-04 21:33:12', '2016-02-04 21:33:12'),
(113, 11, '137009220.jpg', 'VDE', '', '', 8, '2016-02-04 21:33:12', '2016-02-04 21:33:12'),
(114, 11, '137009221.jpg', 'CUI', '', '', 9, '2016-02-04 21:33:13', '2016-02-04 21:33:13'),
(115, 11, '137009222.jpg', 'CCP', '', '', 10, '2016-02-04 21:33:13', '2016-02-04 21:33:13'),
(116, 11, '137009223.jpg', 'CAC', '', '', 11, '2016-02-04 21:33:14', '2016-02-04 21:33:14'),
(117, 11, '137009224.jpg', 'CAC', '', '', 12, '2016-02-04 21:33:14', '2016-02-04 21:33:14'),
(118, 11, '137009225.jpg', 'CAC', '', '', 13, '2016-02-04 21:33:14', '2016-02-04 21:33:14'),
(119, 11, '137009226.jpg', 'SFM', '', '', 14, '2016-02-04 21:33:15', '2016-02-04 21:33:15'),
(120, 11, '137009227.jpg', 'SFM', '', '', 15, '2016-02-04 21:33:15', '2016-02-04 21:33:15'),
(121, 11, '137009228.jpg', 'S-E', '', '', 16, '2016-02-04 21:33:15', '2016-02-04 21:33:15'),
(122, 11, '137009229.jpg', 'SDB', '', '', 17, '2016-02-04 21:33:16', '2016-02-04 21:33:16'),
(123, 11, '137009230.jpg', 'SDB', '', '', 18, '2016-02-04 21:33:16', '2016-02-04 21:33:16'),
(124, 11, '137009231.jpg', 'SDB', '', '', 19, '2016-02-04 21:33:16', '2016-02-04 21:33:16'),
(125, 11, '137009232.jpg', 'ESCA', '', '', 20, '2016-02-04 21:33:17', '2016-02-04 21:33:17'),
(126, 11, '137009233.jpg', 'GARA', '', '', 21, '2016-02-04 21:33:17', '2016-02-04 21:33:17'),
(127, 11, '137009234.jpg', 'GARA', '', '', 22, '2016-02-16 15:05:47', '2016-02-04 21:33:17'),
(128, 11, '137009235.jpg', 'COUR', '', '', 23, '2016-02-16 15:05:47', '2016-02-04 21:33:18'),
(129, 3, '1456137437.jpg', 'BIB', '', '', 0, '2016-02-22 05:07:17', '2016-02-22 05:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_inclusion`
--

CREATE TABLE `t_building_inclusion` (
  `id` int(10) NOT NULL,
  `BuildingID` int(10) NOT NULL,
  `Inclusion` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_inclusion`
--

INSERT INTO `t_building_inclusion` (`id`, `BuildingID`, `Inclusion`, `updated_at`, `created_at`) VALUES
(1, 3, '1', '2016-02-02 20:02:52', '2015-12-05 05:44:19'),
(2, 3, '2', '2016-02-10 17:44:58', '2015-12-05 06:52:49'),
(6, 10, '2', '2016-02-20 03:01:58', '2016-02-20 03:01:58'),
(7, 10, '3', '2016-02-20 03:01:58', '2016-02-20 03:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_inclusion_exclusion`
--

CREATE TABLE `t_building_inclusion_exclusion` (
  `ID` int(10) NOT NULL,
  `Value_FR` varchar(200) NOT NULL,
  `Value_EN` varchar(200) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_inclusion_exclusion`
--

INSERT INTO `t_building_inclusion_exclusion` (`ID`, `Value_FR`, `Value_EN`, `updated_at`, `created_at`) VALUES
(1, 'Adoucisseur d\'eau', 'Water softener', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(2, 'Aspirateur central', 'Central vacuum', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(3, 'Cabanon', 'Shed', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(4, 'Climatiseur', 'Central air', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(5, 'Cuisinière', 'Range', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(6, 'Échangeur d\'air', 'Air exchanger', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(7, 'Fournaise', 'Furnace', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(8, 'Foyer', 'Fireplace', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(9, 'Humidificateur', 'Humidifier', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(10, 'Lave-vaisselle', 'Dishwasher', '2016-02-02 18:14:57', '2016-02-02 18:14:57'),
(11, 'Laveuse', 'Washer', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(12, 'Luminaires', 'Ceiling fixtures', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(13, 'Micro-onde intégré', 'B/I Microwave', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(14, 'Poêle', 'Stove', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(15, 'Réfrigérateur', 'Fridge', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(16, 'Rideaux', 'Window coverings', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(17, 'Sécheuse', 'Dryer', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(18, 'Spa', 'Hot tub/Sauna', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(19, 'Stores', 'Blinds', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(20, 'Système d\'alarme', 'Alarm system', '2016-02-02 18:18:40', '2016-02-02 18:18:40'),
(21, 'Tringle', 'Rod', '2016-02-02 18:20:27', '2016-02-02 18:20:27'),
(22, 'Ventilateur', 'Ventilator', '2016-02-02 18:20:27', '2016-02-02 18:20:27'),
(23, 'Walk-in', 'Walk-in closet', '2016-02-02 18:20:27', '2016-02-02 18:20:27'),
(24, 'Sauna', 'Sauna', '2016-02-02 18:20:27', '2016-02-02 18:20:27'),
(25, 'Congélateur', 'Freezer', '2016-02-02 18:20:27', '2016-02-02 18:20:27'),
(26, 'Génératrice', 'Generator', '2016-02-02 18:20:27', '2016-02-02 18:20:27'),
(27, 'Déshumidificateur', 'Dehumidifier', '2016-02-02 18:20:27', '2016-02-02 18:20:27'),
(28, 'Air climatisé', 'Central air', '2016-02-02 18:20:27', '2016-02-02 18:20:27'),
(29, 'Meubles', 'Furnished', '2016-02-02 18:20:27', '2016-02-02 18:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_package`
--

CREATE TABLE `t_building_package` (
  `id` int(10) NOT NULL COMMENT 'Package ID',
  `NameFR` varchar(250) NOT NULL,
  `NameEN` varchar(250) NOT NULL,
  `Price` float(10,2) NOT NULL,
  `Month` int(10) NOT NULL COMMENT 'number of month with the package. 0 = until sold',
  `Picture_HDR` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_package`
--

INSERT INTO `t_building_package` (`id`, `NameFR`, `NameEN`, `Price`, `Month`, `Picture_HDR`, `updated_at`, `created_at`) VALUES
(1, '4 mois', '4 mois', 194.95, 4, '', '2016-02-11 05:10:54', '0000-00-00 00:00:00'),
(2, '6 mois', '6 mois', 299.95, 6, '16', '2016-02-05 00:33:33', '0000-00-00 00:00:00'),
(3, 'Jusqu\'à la vente', 'Until the sale', 449.95, 0, '24', '2016-02-05 00:32:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_precision`
--

CREATE TABLE `t_building_precision` (
  `id` int(11) NOT NULL,
  `NameFR` varchar(255) NOT NULL COMMENT 'French Name',
  `NameEN` varchar(255) NOT NULL COMMENT 'English Name',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_precision`
--

INSERT INTO `t_building_precision` (`id`, `NameFR`, `NameEN`, `updated_at`, `created_at`) VALUES
(1, 'À construire', 'To build', '2016-01-20 17:33:13', '0000-00-00 00:00:00'),
(2, 'À discuter', 'To discuss', '2016-01-20 17:33:19', '0000-00-00 00:00:00'),
(3, 'À partir de ', 'Starting at', '2016-01-20 17:33:20', '0000-00-00 00:00:00'),
(4, 'Accès à un cours d’eau', 'Water access', '2016-01-20 17:33:26', '0000-00-00 00:00:00'),
(5, 'Accès au lac', 'Lake access', '2016-01-20 17:33:39', '0000-00-00 00:00:00'),
(6, 'Avec bâtiment(s) commercial(aux)', 'With commercial building', '2016-01-20 18:33:53', '0000-00-00 00:00:00'),
(7, 'Avec garage', 'With garage', '2016-01-20 17:33:52', '0000-00-00 00:00:00'),
(8, 'Avec revenus', 'With income', '2016-01-20 17:34:03', '0000-00-00 00:00:00'),
(9, 'Avec stationnement', 'With parking', '2016-01-20 18:16:22', '0000-00-00 00:00:00'),
(10, 'Avec terre à bois', 'With wood lot', '2016-01-20 18:16:31', '0000-00-00 00:00:00'),
(11, 'Beaucoup d’extras', 'Several upgrades', '2016-01-20 18:16:35', '0000-00-00 00:00:00'),
(12, 'Bienvenue aux courtiers avec acheteur', 'Welcome to real estate broker with buyer', '2016-01-20 18:16:50', '0000-00-00 00:00:00'),
(13, 'Bi-génération', 'Multi-generation', '2016-01-20 18:16:55', '0000-00-00 00:00:00'),
(14, 'Bord de l’eau', 'Waterside', '2016-01-20 18:16:59', '0000-00-00 00:00:00'),
(15, 'Divise', 'Divided', '2016-01-20 18:17:05', '0000-00-00 00:00:00'),
(16, 'Du pied carré', 'Square foot', '2016-01-20 18:17:06', '0000-00-00 00:00:00'),
(17, 'En dessous de l’évaluation', 'Under municipal evaluation', '2016-01-20 18:29:39', '0000-00-00 00:00:00'),
(18, 'Entièrement rénové', 'Completely renovated', '2016-01-20 18:20:34', '0000-00-00 00:00:00'),
(19, 'Faites votre offre', 'Make an offer', '2016-01-20 18:20:39', '0000-00-00 00:00:00'),
(20, 'Ferme', 'Firm', '2016-01-20 18:20:48', '0000-00-00 00:00:00'),
(21, 'Idéal pour bricoleur', 'For handyman', '2016-01-20 18:24:57', '0000-00-00 00:00:00'),
(22, 'Indivise', 'Undivided', '2016-01-20 18:22:13', '0000-00-00 00:00:00'),
(23, 'Libre immédiatement', 'Avalaible now', '2016-01-20 18:22:19', '0000-00-00 00:00:00'),
(24, 'Location avec option d’achat', 'Purchase option', '2016-01-20 18:22:29', '0000-00-00 00:00:00'),
(25, 'Magnifique vue', 'Gorgeous View', '2016-01-20 18:22:44', '0000-00-00 00:00:00'),
(26, 'Maison neuve', 'New Home', '2016-01-20 18:22:52', '0000-00-00 00:00:00'),
(27, 'Meilleur prix du quartier', 'Best price in the area', '2016-01-20 18:23:01', '0000-00-00 00:00:00'),
(28, 'Meublé', 'Furnished', '2016-01-20 18:23:25', '0000-00-00 00:00:00'),
(29, 'Négociable', 'Negotiable', '2016-01-20 18:23:29', '0000-00-00 00:00:00'),
(30, 'Nouveau prix', 'New price', '2016-01-20 18:23:35', '0000-00-00 00:00:00'),
(31, 'Partiellement rénové', 'Partially renovated', '2016-01-20 18:23:44', '0000-00-00 00:00:00'),
(32, 'Piscine creusé', 'Inground pool', '2016-01-20 18:24:18', '0000-00-00 00:00:00'),
(33, 'Piscine intérieur', 'Interior pool', '2016-01-20 18:24:26', '0000-00-00 00:00:00'),
(34, 'Prêt pour construction', 'Avalaible for construction', '2016-01-20 18:24:55', '0000-00-00 00:00:00'),
(35, 'Pour vente rapide', 'Priced to move', '2016-01-20 18:26:08', '0000-00-00 00:00:00'),
(36, 'Prix réduit', 'Reduced price', '2016-01-20 18:26:26', '0000-00-00 00:00:00'),
(37, 'Prix révisé', 'Updated price', '2016-01-20 18:26:31', '0000-00-00 00:00:00'),
(38, 'Prix sur demande', 'Price upon request', '2016-01-20 18:26:40', '0000-00-00 00:00:00'),
(39, 'Prix taxes en sus', 'Taxes not included', '2016-01-20 18:27:20', '0000-00-00 00:00:00'),
(40, 'Prix taxes en sus / terrain inclus', 'Taxes not included / land included', '2016-01-20 18:27:24', '0000-00-00 00:00:00'),
(41, 'Prix taxes / terrain inclus', 'Taxes and land included', '2016-01-20 18:27:35', '0000-00-00 00:00:00'),
(42, 'Prix taxes incluses', 'Taxes included', '2016-01-20 18:27:44', '0000-00-00 00:00:00'),
(43, 'Sur rendez-vous', 'By appointement', '2016-01-20 18:27:59', '0000-00-00 00:00:00'),
(44, 'Taxes et crédit de taxes inclus', 'Taxes and taxes credit included', '2016-01-20 18:28:06', '0000-00-00 00:00:00'),
(45, 'Tout inclus*', 'All included*', '2016-01-20 18:28:12', '0000-00-00 00:00:00'),
(46, 'Urgent', 'Urgent', '2016-01-19 15:43:00', '0000-00-00 00:00:00'),
(47, 'Visite Libre', 'Open house', '2016-01-20 18:28:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_region`
--

CREATE TABLE `t_building_region` (
  `id` int(10) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Longitude` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `URL` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_region`
--

INSERT INTO `t_building_region` (`id`, `Name`, `Longitude`, `Latitude`, `URL`, `updated_at`, `created_at`) VALUES
(1, 'Bas-Saint-Laurent', NULL, NULL, '', '2016-01-05 20:50:21', '0000-00-00 00:00:00'),
(2, 'Saguenay/Lac-Saint-Jean', NULL, NULL, '', '2016-01-05 20:50:21', '0000-00-00 00:00:00'),
(3, 'Québec Rive-Nord ', NULL, NULL, '', '2016-01-14 15:10:25', '0000-00-00 00:00:00'),
(4, 'Mauricie', NULL, NULL, '', '2016-01-05 20:51:09', '0000-00-00 00:00:00'),
(5, 'Estrie', NULL, NULL, '', '2016-01-05 20:51:29', '0000-00-00 00:00:00'),
(6, 'Montréal (Ïle)', NULL, NULL, '', '2016-01-14 15:00:19', '0000-00-00 00:00:00'),
(7, 'Outaouais', NULL, NULL, '', '2016-01-05 20:51:52', '0000-00-00 00:00:00'),
(8, 'Abitibi-Témiscamingue', NULL, NULL, '', '2016-01-05 20:51:52', '0000-00-00 00:00:00'),
(9, 'Côte-Nord', NULL, NULL, '', '2016-01-05 20:52:15', '0000-00-00 00:00:00'),
(10, 'Nord-du-Québec', NULL, NULL, '', '2016-01-05 20:52:15', '0000-00-00 00:00:00'),
(11, 'Gaspésie/Iles-de-la-Madeleine', NULL, NULL, '', '2016-01-05 20:52:34', '0000-00-00 00:00:00'),
(12, 'Chaudière-Appalaches', NULL, NULL, '', '2016-01-05 20:52:34', '0000-00-00 00:00:00'),
(13, 'Laval', NULL, NULL, '', '2016-01-05 20:53:20', '0000-00-00 00:00:00'),
(14, 'Lanaudière', NULL, NULL, '', '2016-01-05 20:53:20', '0000-00-00 00:00:00'),
(15, 'Laurentides', NULL, NULL, '', '2016-01-05 20:53:20', '0000-00-00 00:00:00'),
(16, 'Montérégie (Inclus Rive-Sud Montréal) ', NULL, NULL, '', '2016-01-14 15:00:52', '0000-00-00 00:00:00'),
(17, 'Centre-du-Québec', NULL, NULL, '', '2016-01-05 20:53:54', '0000-00-00 00:00:00'),
(18, 'Portneuf', NULL, NULL, '', '2016-01-14 15:04:36', '0000-00-00 00:00:00'),
(19, 'Québec Rive-Sud', NULL, NULL, '', '2016-01-14 15:10:38', '0000-00-00 00:00:00'),
(20, 'Charlevoix', NULL, NULL, '', '2016-01-14 15:46:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_rent`
--

CREATE TABLE `t_building_rent` (
  `BuildingID` int(10) NOT NULL,
  `id` int(11) NOT NULL,
  `Type` varchar(10) NOT NULL COMMENT 'EX 3 1/2',
  `price_by_month` int(11) NOT NULL,
  `already_rent` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_rent`
--

INSERT INTO `t_building_rent` (`BuildingID`, `id`, `Type`, `price_by_month`, `already_rent`, `updated_at`, `created_at`) VALUES
(10, 4, '1 1/2', 1222, 1, '2016-02-20 03:02:20', '2016-02-20 03:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_room`
--

CREATE TABLE `t_building_room` (
  `id` int(10) NOT NULL,
  `BuildingID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Stage` varchar(50) NOT NULL,
  `Width_X` int(10) NOT NULL,
  `Width_Pouce` int(11) DEFAULT NULL,
  `Height_Y` int(10) NOT NULL,
  `Height_Pouce` int(11) DEFAULT NULL,
  `Dimension` varchar(100) NOT NULL,
  `Floor_type` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_room`
--

INSERT INTO `t_building_room` (`id`, `BuildingID`, `Name`, `Stage`, `Width_X`, `Width_Pouce`, `Height_Y`, `Height_Pouce`, `Dimension`, `Floor_type`, `updated_at`, `created_at`) VALUES
(99, 5, 'HAL', 'RC', 0, NULL, 0, NULL, '5.9x6.10 P', 'CERAM', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(100, 5, 'CUI', 'RC', 0, NULL, 0, NULL, '11.6x15.4 P', 'CERAM', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(101, 5, 'SAM', 'RC', 0, NULL, 0, NULL, '12.10x11 P', 'CERAM', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(102, 5, 'SAL', 'RC', 0, NULL, 0, NULL, '17x15 P', 'BOIS', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(103, 5, 'CCP', 'RC', 0, NULL, 0, NULL, '12x12 P', 'BOIS', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(104, 5, 'CAC', 'RC', 0, NULL, 0, NULL, '12x9.7 P', 'BOIS', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(105, 5, 'SDB', 'RC', 0, NULL, 0, NULL, '12x9.6 P', 'CERAM', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(106, 5, 'SFM', '0', 0, NULL, 0, NULL, '19.5x18.3 P', 'AU', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(107, 5, 'CAC', '0', 0, NULL, 0, NULL, '15x10.2 P', 'AU', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(108, 5, 'CAC', '0', 0, NULL, 0, NULL, '11.6x11 P', 'AU', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(109, 5, 'AU', '0', 0, NULL, 0, NULL, '14.5x12 P', 'TAP', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(110, 5, 'SDB', '0', 0, NULL, 0, NULL, '11.2x11.10 P', 'AU', '2016-01-29 00:04:27', '2016-01-29 00:04:27'),
(111, 6, 'CUI', 'RC', 0, NULL, 0, NULL, '11.4x11 P', 'CERAM', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(112, 6, 'SAM', 'RC', 0, NULL, 0, NULL, '9x14.10 P', 'CERAM', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(113, 6, 'SAL', 'RC', 0, NULL, 0, NULL, '19.3x10.7 P', 'BOIS', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(114, 6, 'CCP', 'RC', 0, NULL, 0, NULL, '10x11.6 P', 'BOIS', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(115, 6, 'CAC', 'RC', 0, NULL, 0, NULL, '8.2x10 P', 'BOIS', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(116, 6, 'CAC', 'RC', 0, NULL, 0, NULL, '10.2x11.5 P', 'BOIS', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(117, 6, 'SDB', 'RC', 0, NULL, 0, NULL, '8.2x4.11 P', 'CERAM', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(118, 6, 'SFM', '0', 0, NULL, 0, NULL, '19x23.7 P', 'PFLO', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(119, 6, 'BOU', '0', 0, NULL, 0, NULL, '14.9x19.8 P', 'PFLO', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(120, 6, 'ATE', '0', 0, NULL, 0, NULL, '10.8x17.9 P', 'LINO', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(121, 6, 'SDB', '0', 0, NULL, 0, NULL, '4x7.7 P', 'CERAM', '2016-01-29 00:04:34', '2016-01-29 00:04:34'),
(122, 7, 'CUI', 'RC', 0, NULL, 0, NULL, '10x10.3 P', 'CERAM', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(123, 7, 'SAM', 'RC', 0, NULL, 0, NULL, '8.9x11.4 P', 'CERAM', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(124, 7, 'SAL', 'RC', 0, NULL, 0, NULL, '14.6x11.10 P', 'BOIS', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(125, 7, 'S-E', 'RC', 0, NULL, 0, NULL, '8.6x5 P', 'CERAM', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(126, 7, 'CCP', '2', 0, NULL, 0, NULL, '11x13 P', 'BOIS', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(127, 7, 'CAC', '2', 0, NULL, 0, NULL, '9.5x8 P', 'BOIS', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(128, 7, 'CAC', '2', 0, NULL, 0, NULL, '9.2x9.2 P', 'BOIS', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(129, 7, 'SDB', '2', 0, NULL, 0, NULL, '9.3x7.3 P', 'CERAM', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(130, 7, 'SFM', '0', 0, NULL, 0, NULL, '18.3x12.3 P', 'PFLO', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(131, 7, 'CAC', '0', 0, NULL, 0, NULL, '9.11x10.7 P', 'PFLO', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(132, 7, 'ATE', '0', 0, NULL, 0, NULL, '8x11.1 P', 'BETO', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(133, 7, 'SDB', '0', 0, NULL, 0, NULL, '8x6.4 P', 'CERAM', '2016-01-29 00:04:41', '2016-01-29 00:04:41'),
(134, 8, 'CUI', 'RC', 0, NULL, 0, NULL, '13x15 P', 'CERAM', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(135, 8, 'SAL', 'RC', 0, NULL, 0, NULL, '12.2x13 P', 'BOIS', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(136, 8, 'CAC', 'RC', 0, NULL, 0, NULL, '11.10x11.6 P', 'BOIS', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(137, 8, 'CAC', 'RC', 0, NULL, 0, NULL, '9.3x9.2 P', 'BOIS', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(138, 8, 'SDB', 'RC', 0, NULL, 0, NULL, '6.8x8.2 P', 'CERAM', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(139, 8, 'SFM', '0', 0, NULL, 0, NULL, '14.3x10.9 P', 'PFLO', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(140, 8, 'S-E', '0', 0, NULL, 0, NULL, '7.4x5.7 P', 'CERAM', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(141, 8, 'CAC', '0', 0, NULL, 0, NULL, '8.5x10.1 P', 'PFLO', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(142, 8, 'ATE', '0', 0, NULL, 0, NULL, '30.5x12.10 P', 'BETO', '2016-01-29 00:08:31', '2016-01-29 00:08:31'),
(156, 11, 'CUI', 'RC', 0, NULL, 0, NULL, '10.0x11.11 P', 'CERAM', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(157, 11, 'SAM', 'RC', 0, NULL, 0, NULL, '10.0x12.0 P', 'CERAM', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(158, 11, 'SAL', 'RC', 0, NULL, 0, NULL, '13.8x11.6 P', 'BOIS', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(159, 11, 'HAL', 'RC', 0, NULL, 0, NULL, '8.6x4.0 P', 'CERAM', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(160, 11, 'S-E', 'RC', 0, NULL, 0, NULL, '5.0x7.2 P', 'CERAM', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(161, 11, 'CCP', '2', 0, NULL, 0, NULL, '11.11x11.3 P', 'PFLO', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(162, 11, 'CAC', '2', 0, NULL, 0, NULL, '9.6x10.8 P', 'PFLO', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(163, 11, 'CAC', '2', 0, NULL, 0, NULL, '10.7x10.0 P', 'PFLO', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(164, 11, 'SDB', '2', 0, NULL, 0, NULL, '10.10x7.6 P', 'CERAM', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(165, 11, 'SFM', '0', 0, NULL, 0, NULL, '13.1x20.0 P', 'PFLO', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(166, 11, 'CAC', '0', 0, NULL, 0, NULL, '9.6x12.0 P', 'PFLO', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(167, 11, 'ATE', '0', 0, NULL, 0, NULL, '18.3x21.5 P', 'BETO', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(168, 11, 'S-E', '0', 0, NULL, 0, NULL, '11.0x6.4 P', 'CERAM', '2016-02-04 21:35:07', '2016-02-04 21:35:07'),
(227, 10, 'CCP', '4', 1, 2, 1, 2, '', 'BOIS', '2016-02-17 02:04:31', '2016-02-17 02:04:31'),
(228, 10, 'ATE', '0', 0, 0, 0, 0, '', 'AU', '2016-02-17 03:14:57', '2016-02-17 03:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `t_building_type`
--

CREATE TABLE `t_building_type` (
  `id` int(10) NOT NULL COMMENT 'ID',
  `NameFR` varchar(250) NOT NULL COMMENT 'French Name',
  `NameEN` varchar(250) NOT NULL COMMENT 'English Name',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_building_type`
--

INSERT INTO `t_building_type` (`id`, `NameFR`, `NameEN`, `updated_at`, `created_at`) VALUES
(1, 'Bungalow', 'Bungalow', '2016-01-08 13:41:36', '0000-00-00 00:00:00'),
(2, 'Bungalow Surélevé', 'Raised Bungalow', '2016-01-08 13:41:36', '0000-00-00 00:00:00'),
(3, 'Domaine et villa', 'Villa', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(4, 'Fermette', 'Acreage / Hobby Farm / Ranch', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(5, 'Jumelé', 'Semi-detached', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(6, 'Maison 2 étages', '2 Storey', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(7, 'Maison 3 étages', '3 Storey', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(8, 'Maison 4 étages', '4 Storey', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(9, 'Maison de campagne', 'Country home', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(10, 'Maison en rangée / de ville', 'Townhouse', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(11, 'Maison flottante', 'Float home', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(12, 'Maison mobile', 'Mobile home', '2016-01-08 13:44:39', '0000-00-00 00:00:00'),
(13, 'Maison modulaire', 'Manufactured home', '2016-01-08 13:47:39', '0000-00-00 00:00:00'),
(14, 'Maison à paliers multiples', 'Split Level', '2016-01-08 13:47:39', '0000-00-00 00:00:00'),
(15, 'Maison à un étage et demi', '1 1/2 Storey', '2016-01-08 13:47:39', '0000-00-00 00:00:00'),
(16, 'Mi-étages avant et arrière', 'Backsplit', '2016-01-08 13:47:39', '0000-00-00 00:00:00'),
(17, 'Bi-génération', 'Bi-generation', '2016-01-08 13:47:39', '0000-00-00 00:00:00'),
(18, 'Divers', 'Misc.', '2016-01-08 13:47:39', '0000-00-00 00:00:00'),
(21, 'Duplex', 'Duplex', '2016-01-08 13:47:39', '0000-00-00 00:00:00'),
(22, 'Triplex', 'Triplex', '2016-01-08 13:47:39', '0000-00-00 00:00:00'),
(23, 'Quadruplex', 'Quadruplex', '2016-01-08 13:48:36', '0000-00-00 00:00:00'),
(24, 'Quintuplex', 'Quintuplex', '2016-01-08 13:48:36', '0000-00-00 00:00:00'),
(25, '6 unités ou plus', '6 units or more', '2016-01-08 13:48:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_choice`
--

CREATE TABLE `t_choice` (
  `ID` varchar(100) NOT NULL,
  `GroupID` varchar(100) NOT NULL,
  `Value_FR` varchar(500) NOT NULL,
  `Value_EN` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_choice`
--

INSERT INTO `t_choice` (`ID`, `GroupID`, `Value_FR`, `Value_EN`, `updated_at`, `created_at`) VALUES
('AU', 'COUVRE_PLANCHER_CODE', 'Autre', 'Other\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('BETO', 'COUVRE_PLANCHER_CODE', 'Béton', 'Concrete\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('BOID', 'COUVRE_PLANCHER_CODE', 'Bois dur', 'Hardwood\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('BOIM', 'COUVRE_PLANCHER_CODE', 'Bois mou', 'Softwood\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('BOIS', 'COUVRE_PLANCHER_CODE', 'Bois', 'Wood\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('CERAM', 'COUVRE_PLANCHER_CODE', 'Céramique', 'Ceramic tiles\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('LATTES', 'COUVRE_PLANCHER_CODE', 'Lattes de bois', 'Wood strips\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('LINO', 'COUVRE_PLANCHER_CODE', 'Linoléum', 'Linoleum\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('MARB', 'COUVRE_PLANCHER_CODE', 'Marbre', 'Marble\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('PARQ', 'COUVRE_PLANCHER_CODE', 'Parqueterie', 'Parquetry\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('PFLO', 'COUVRE_PLANCHER_CODE', 'Plancher flottant', 'Floating floor\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('TAP', 'COUVRE_PLANCHER_CODE', 'Tapis', 'Carpet\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('0', 'ETAGE', 'Sous-sol', 'Basement\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('1', 'ETAGE', '1er étage', '1st floor\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('2', 'ETAGE', '2ième étage', '2nd floor\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('3', 'ETAGE', '3ième étage', '3rd floor\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('4', 'ETAGE', '4ième étage', '4th floor\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('5', 'ETAGE', '5ème étage', '5th floor\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('6', 'ETAGE', '6ème étage', '6th floor\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('AU', 'ETAGE', 'Autre', 'Other\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('GREN', 'ETAGE', 'Grenier', 'Attic\r', '2016-01-29 13:41:00', '2016-01-29 13:41:00'),
('ATE', 'PIECE_CODE', 'Atelier', 'Workshop\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('AU', 'PIECE_CODE', 'Autre', 'Other\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BIB', 'PIECE_CODE', 'Bibliothèque', 'Library\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BOU', 'PIECE_CODE', 'Boudoir', 'Den\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BUR', 'PIECE_CODE', 'Bureau à domicile', 'Home office\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CAC', 'PIECE_CODE', 'Chambre à coucher', 'Bedroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CAV', 'PIECE_CODE', 'Cave/ chambre froide', 'Cellar / Cold room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CCP', 'PIECE_CODE', 'Chambre à coucher principale', 'Master bedroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CR', 'PIECE_CODE', 'Coin repas', 'Dinette\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CUI', 'PIECE_CODE', 'Cuisine', 'Kitchen\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('HAL', 'PIECE_CODE', 'Hall d\'entrée', 'Hallway\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('MEZ', 'PIECE_CODE', 'Mezzanine', 'Mezzanine\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('RAN', 'PIECE_CODE', 'Rangement', 'Storage\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SAL', 'PIECE_CODE', 'Salon', 'Living room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SAM', 'PIECE_CODE', 'Salle à manger', 'Dining room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDB', 'PIECE_CODE', 'Salle de bains', 'Bathroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDC', 'PIECE_CODE', 'Salle de couture', 'Sewing room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDJ', 'PIECE_CODE', 'Salle de jeux', 'Playroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDL', 'PIECE_CODE', 'Salle de lavage', 'Laundry room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('S-E', 'PIECE_CODE', 'Salle d\'eau', 'Washroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SER', 'PIECE_CODE', 'Serre', 'Greenhouse\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SFM', 'PIECE_CODE', 'Salle familiale', 'Family room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SOL', 'PIECE_CODE', 'Solarium', 'Solarium\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('S-S', 'PIECE_CODE', 'Sous-sol', 'Basement\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('VER', 'PIECE_CODE', 'Véranda', 'Veranda\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ATE', 'CODE_DESCRIPTION_PHOTO', 'Atelier', 'Workshop\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('AU', 'CODE_DESCRIPTION_PHOTO', 'Autre', 'Other\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BIB', 'CODE_DESCRIPTION_PHOTO', 'Bibliothèque', 'Library\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BOU', 'CODE_DESCRIPTION_PHOTO', 'Boudoir', 'Den\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BUR', 'CODE_DESCRIPTION_PHOTO', 'Bureau', 'Office\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CAC', 'CODE_DESCRIPTION_PHOTO', 'Chambre à coucher', 'Bedroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CAV', 'CODE_DESCRIPTION_PHOTO', 'Cave/ chambre froide', 'Cellar / Cold room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CCP', 'CODE_DESCRIPTION_PHOTO', 'Chambre à coucher principale', 'Master bedroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('COUR', 'CODE_DESCRIPTION_PHOTO', 'Cour', 'Backyard\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CR', 'CODE_DESCRIPTION_PHOTO', 'Coin repas', 'Dinette\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CUI', 'CODE_DESCRIPTION_PHOTO', 'Cuisine', 'Kitchen\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('HAL', 'CODE_DESCRIPTION_PHOTO', 'Hall d\'entrée', 'Hallway\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('MEZ', 'CODE_DESCRIPTION_PHOTO', 'Mezzanine', 'Mezzanine\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('PRIN', 'CODE_DESCRIPTION_PHOTO', 'Photo principale', 'Main photo\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('RAN', 'CODE_DESCRIPTION_PHOTO', 'Rangement', 'Storage\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('RUE', 'CODE_DESCRIPTION_PHOTO', 'Rue', 'Street\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SAL', 'CODE_DESCRIPTION_PHOTO', 'Salon', 'Living room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SAM', 'CODE_DESCRIPTION_PHOTO', 'Salle à manger', 'Dining room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDB', 'CODE_DESCRIPTION_PHOTO', 'Salle de bains', 'Bathroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDC', 'CODE_DESCRIPTION_PHOTO', 'Salle de couture', 'Sewing room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDJ', 'CODE_DESCRIPTION_PHOTO', 'Salle de jeux', 'Playroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDL', 'CODE_DESCRIPTION_PHOTO', 'Salle de lavage', 'Laundry room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('S-E', 'CODE_DESCRIPTION_PHOTO', 'Salle d\'eau', 'Washroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SER', 'CODE_DESCRIPTION_PHOTO', 'Serre', 'Greenhouse\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SFM', 'CODE_DESCRIPTION_PHOTO', 'Salle familiale', 'Family room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SOL', 'CODE_DESCRIPTION_PHOTO', 'Solarium', 'Solarium\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('S-S', 'CODE_DESCRIPTION_PHOTO', 'Sous-sol', 'Basement\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('VER', 'CODE_DESCRIPTION_PHOTO', 'Véranda', 'Veranda\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('RC', 'ETAGE', 'Rez-de-chaussée', 'Ground floor\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('VEAU', 'CODE_DESCRIPTION_PHOTO', 'Vue sur l\'eau', 'Water view\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BEAU', 'CODE_DESCRIPTION_PHOTO', 'Bord de l\'eau', 'Waterfront\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('VPLA', 'CODE_DESCRIPTION_PHOTO', 'Vente sur plan', 'Pre-sale\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ECON', 'CODE_DESCRIPTION_PHOTO', 'En construction', 'Under construction\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ACON', 'CODE_DESCRIPTION_PHOTO', 'À construire', 'To be built\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('MMOD', 'CODE_DESCRIPTION_PHOTO', 'Maison modèle', 'Model home\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('EXTE', 'CODE_DESCRIPTION_PHOTO', 'Extérieur', 'Exterior\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('FACA', 'CODE_DESCRIPTION_PHOTO', 'Façade', 'Frontage\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('GARA', 'CODE_DESCRIPTION_PHOTO', 'Garage', 'Garage\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('VIN', 'CODE_DESCRIPTION_PHOTO', 'Cave à vin', 'Wine cellar\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('VIN', 'PIECE_CODE', 'Cave à vin', 'Wine cellar\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ARDO', 'COUVRE_PLANCHER_CODE', 'Ardoise', 'Slate\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('GRAN', 'COUVRE_PLANCHER_CODE', 'Granite', 'Granite\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('TUILE', 'COUVRE_PLANCHER_CODE', 'Tuiles', 'Tiles\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('PISC', 'CODE_DESCRIPTION_PHOTO', 'Piscine', 'Pool\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('REMI', 'CODE_DESCRIPTION_PHOTO', 'Remise', 'Shed\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('INT', 'CODE_DESCRIPTION_PHOTO', 'Intérieur', 'Interior\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ERABLIERE', 'CODE_DESCRIPTION_PHOTO', 'Érablière', 'Maple grove\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('TBOI', 'CODE_DESCRIPTION_PHOTO', 'Terre à bois', 'Woodland\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ECUR', 'CODE_DESCRIPTION_PHOTO', 'Écurie', 'Stable\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('GRAN', 'CODE_DESCRIPTION_PHOTO', 'Grange', 'Barn\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('AERIENNE', 'CODE_DESCRIPTION_PHOTO', 'Photo aérienne', 'Aerial photo\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('COMM', 'CODE_DESCRIPTION_PHOTO', 'Commerce', 'Commerce\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('RESTAU', 'CODE_DESCRIPTION_PHOTO', 'Restaurant', 'Restaurant\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ASCN', 'CODE_DESCRIPTION_PHOTO', 'Ascenseur', 'Elevator\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('GARC', 'CODE_DESCRIPTION_PHOTO', 'Garçonnière', 'Bachelor\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('MARI', 'CODE_DESCRIPTION_PHOTO', 'Port de plaisance (marina)', 'Marina\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('RECP', 'CODE_DESCRIPTION_PHOTO', 'Réception', 'Reception Area\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('TERA', 'CODE_DESCRIPTION_PHOTO', 'Terrasse', 'Patio\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('TER', 'CODE_DESCRIPTION_PHOTO', 'Terre/Terrain', 'Land/Lot\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('VDE', 'CODE_DESCRIPTION_PHOTO', 'Vue d\'ensemble', 'Overall View\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('PVC', 'COUVRE_PLANCHER_CODE', 'PVC', 'PVC\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BALCON', 'CODE_DESCRIPTION_PHOTO', 'Balcon', 'Balcony\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('BOISE', 'CODE_DESCRIPTION_PHOTO', 'Boisé', 'Wooded area\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CINE', 'CODE_DESCRIPTION_PHOTO', 'Cinéma maison', 'Home theatre\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CORRIDOR', 'CODE_DESCRIPTION_PHOTO', 'PASAGEWAY', 'Corridor\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ESCA', 'CODE_DESCRIPTION_PHOTO', 'Escalier', 'Staircase\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('FACARR', 'CODE_DESCRIPTION_PHOTO', 'Face arrière', 'Back facade\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('INTERG', 'CODE_DESCRIPTION_PHOTO', 'Intergénération', 'Intergenerational\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('JARDIN', 'CODE_DESCRIPTION_PHOTO', 'Jardin', 'Garden\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('LOGEMENT', 'CODE_DESCRIPTION_PHOTO', 'Logement', 'Dwelling\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SCOMMUN', 'CODE_DESCRIPTION_PHOTO', 'Salle communautaire', 'Common room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SCONF', 'CODE_DESCRIPTION_PHOTO', 'Salle de conférence', 'Conference room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SDBCCP', 'CODE_DESCRIPTION_PHOTO', 'Salle de bains attenante à la CCP', 'Ensuite bathroom\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SECRETAR', 'CODE_DESCRIPTION_PHOTO', 'Bureau des secrétaires', 'Secretaries\' office\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SEXERC', 'CODE_DESCRIPTION_PHOTO', ' Salle d\'exercice', 'Exercise room\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('SPA', 'CODE_DESCRIPTION_PHOTO', 'Spa', 'Hot tub\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('STAT', 'CODE_DESCRIPTION_PHOTO', 'Stationnement', 'Parking\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('VUE', 'CODE_DESCRIPTION_PHOTO', 'Vue', 'View\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('S2', 'ETAGE', 'Sous-sol 2', 'Basement 2\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('CSSO', 'COUVRE_PLANCHER_CODE', 'Couvre-sol souple', 'Flexible floor coverings\r', '2016-01-29 13:41:01', '2016-01-29 13:41:01'),
('ATTA', 'ABRI', 'Attaché', 'Attached\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'ABRI', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('DET', 'ABRI', 'Détaché', 'Detached\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('DOUB', 'ABRI', 'Double largeur ou plus', 'Double width or more\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'ALLE', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('DOUB', 'ALLE', 'Double largeur ou plus', 'Double width or more\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('NPAV', 'ALLE', 'Non pavée', 'Not Paved\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('UNI', 'ALLE', 'Pavé uni', 'Plain paving stone\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'AMEN', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CLOT', 'AMEN', 'Clôturé', 'Fenced\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('HAIE', 'AMEN', 'Terrain/cour bordé de haies', 'Land / Yard lined with hedges\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('NPAY', 'AMEN', 'Non paysager', 'Not landscaped\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PATI', 'AMEN', 'Patio', 'Patio\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PAY', 'AMEN', 'Paysager', 'Landscape\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PPAY', 'AMEN', 'Partiellement paysager', 'Partially landscaped\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('TERR', 'AMEN', 'Terrasse', 'Terrace\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('POUL', 'ANIM', 'poulet', 'Chicken\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AGNE', 'ANIM', 'agneau', 'Lamb\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'ANIM', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AUTR', 'ANIM', 'autruche', 'Austrich\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BISO', 'ANIM', 'bison', 'Bison\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOEU', 'ANIM', 'boeuf', 'Beef\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CAIL', 'ANIM', 'caille', 'Quail\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CHEV', 'ANIM', 'chèvre', 'Goat\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('FAIS', 'ANIM', 'faisan', 'Pheasant\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MOUT', 'ANIM', 'mouton', 'Sheep\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PORC', 'ANIM', 'porc', 'Pig\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('VACH', 'ANIM', 'vache', 'Cow\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('VEAU', 'ANIM', 'veau', 'Veal\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'ARMO', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIS', 'ARMO', 'Bois', 'Wood\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MELM', 'ARMO', 'Mélamine', 'Melamine\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('STRA', 'ARMO', 'Stratifié', 'Laminated\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'BASS', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('DALL', 'BASS', 'Dalle de béton au sol', 'Concrete slab on the ground\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('TBAT', 'BASS', 'Terre battue', 'Compacted earth\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'BATI', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ETAB', 'BATI', 'Étable', 'Cattle shed\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('GARA', 'BATI', 'Garage', 'Garage\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('GRNG', 'BATI', 'Grange', 'Barn\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('HANG', 'BATI', 'Hangar', 'Hangar\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('POUL', 'BATI', 'Poulailler', 'Hanhouse\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('REMI', 'BATI', 'Remise (Machinerie)', 'Shed\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('40', 'CEAU', '40 gallons', '40 Gallon\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('60', 'CEAU', '60 gallons', '60 Gallon\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'CEAU', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ACIE', 'CHAR', 'Acier', 'Steel\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'CHAR', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BETO', 'CHAR', 'Béton', 'Concrete\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIS', 'CHAR', 'Bois', 'Wood\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AIRS', 'CHAU', 'Air soufflé', 'Air circulation\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'CHAU', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AUCN', 'CHAU', 'Aucun', 'None\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EAUC', 'CHAU', 'Eau chaude', 'Hot water\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PCHA', 'CHAU', 'Plinthes chauffantes', 'Baseboard heaters\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PCON', 'CHAU', 'Plinthes à convection', 'Space heating baseboards\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PELC', 'CHAU', 'Plinthes électriques', 'Electric baseboard units\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('RADI', 'CHAU', 'Radiant', 'Radiant\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('THER', 'CHAU', 'Thermopompe', 'Heat pump\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('VAP', 'CHAU', 'Radiateur vapeur', 'Steem radiator\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'CUI', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BROY', 'CUI', 'Broyeur', 'Garbage disposal unit\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('COMP', 'CUI', 'Compacteur', 'Trash compactor\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('FOUR', 'CUI', 'Four encastré', 'Embedded oven\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ILOT', 'CUI', 'Ilot central', 'Central cooking island\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('TCUI', 'CUI', 'Table de cuisson', 'Cooking surface\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AMU', 'EAU', 'Municipalité', 'Municipality\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'EAU', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AUCN', 'EAU', 'Aucun', 'None\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CIT', 'EAU', 'Citerne', 'Tank\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('COMP', 'EAU', 'Avec compteur d\'eau', 'With water meter\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('COOP', 'EAU', 'Coopérative', 'Cooperative\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ELAC', 'EAU', 'Eau du lac', 'Lake water\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PA', 'EAU', 'Puits artésien', 'Artesian well\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PRIV', 'EAU', 'Privé', 'Private\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PS', 'EAU', 'Puits de surface', 'Shallow well\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'ENER', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BIEN', 'ENER', 'Bi-énergie', 'Bi-energy\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIS', 'ENER', 'Bois', 'Wood\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ELEC', 'ENER', 'Électricité', 'Electricity\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('GAZN', 'ENER', 'Gaz naturel', 'Natural gas\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('HUMZ', 'ENER', 'Mazout', 'Heating oil\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PROP', 'ENER', 'Propane', 'Propane\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SOLA', 'ENER', 'Énergie solaire', 'Solar energy\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AEAU', 'EQUI', 'Adoucisseur d\'eau', 'Water softener\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ASP', 'EQUI', 'Installation aspirateur central', 'Central vacuum cleaner system installation\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'EQUI', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CLIM', 'EQUI', 'Climatiseur', 'Air conditioning\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('GRCD', 'EQUI', 'Garde-robe de cèdre', 'Cedar closet\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('INTP', 'EQUI', 'Interphone', 'Entry phone\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('REMS', 'EQUI', 'Remise', 'Shed\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SAUN', 'EQUI', 'Sauna', 'Sauna\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SYAL', 'EQUI', 'Système d\'alarme', 'Alarm system\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EQU1', 'ERAB', 'Equipement 1', 'Equipment 1\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EQU2', 'ERAB', 'Equipement 2', 'Equipment 2\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EQU3', 'ERAB', 'Equipement 3', 'Equipment 3\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EQU4', 'ERAB', 'Equipement 4', 'Equipment 4\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EQU5', 'ERAB', 'Equipement 5', 'Equipment 5\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ERAB', 'ERAB', 'Érablière', 'Sugar shack\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('TUBG', 'ERAB', 'Tubulure gravité', 'Gravity piping\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('TUBT', 'ERAB', 'Tubulure traditionnelle', 'Traditional piping\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AUTR', 'EXPL', 'Autruches', 'Austrich\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOVI', 'EXPL', 'Bovin', 'Bovine\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EEXP', 'EXPL', 'En exploitation', 'Exploited\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('GEN', 'EXPL', 'Général', 'General\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('HORT', 'EXPL', 'Horticulture', 'Horticulture\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('LAIT', 'EXPL', 'Laitière', 'Milk\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MARA', 'EXPL', 'Maraîchère', 'Market gardening\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('NEXP', 'EXPL', 'Non exploité', 'Not exploited\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PANI', 'EXPL', 'Petits animaux', 'Small Animals\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ASCE', 'FACC', 'Ascenseur', 'Elevator\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('HAND', 'FACC', 'Accès pour handicapés', 'Access for disabled\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ALUM', 'FENE', 'Aluminium', 'Aluminum\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'FENE', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIS', 'FENE', 'Bois', 'Wood\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PVC', 'FENE', 'PVC', 'PVC\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'FOND', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BETO', 'FOND', 'Béton coulé', 'Poured concrete\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BLBE', 'FOND', 'Bloc de béton', 'Concrete block\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIS', 'FOND', 'Bois', 'Wood\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PIER', 'FOND', 'Pierre', 'Stone\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PILO', 'FOND', 'Pilotis', 'Piles\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ANNX', 'FOPO', 'Poêle - annexe', 'Stove-annex\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'FOPO', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIS', 'FOPO', 'Foyer au bois', 'Wood fireplace\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('COMB', 'FOPO', 'Poêle à combustion lente', 'Slow-burning stove\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('GAZ', 'FOPO', 'Foyer au gaz', 'Gaz fireplace\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('GRAN', 'FOPO', 'Poêle à granules', 'Granule stove\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PAB', 'FOPO', 'Poêle à bois', 'Wood burning stove\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ATT', 'GARA', 'Attaché', 'Attached\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'GARA', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CHAU', 'GARA', 'Chauffé', 'Heated\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('DET', 'GARA', 'Détaché', 'Detached\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('DOUB', 'GARA', 'Double largeur ou plus', 'Double width or more\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('INTG', 'GARA', 'Intégré', 'Fitted\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CQDS', 'LAIT', 'Certificat de quota disponible', 'Quota certificat available\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CQND', 'LAIT', 'Certificat de quota non disponible', 'Quota certificat not available\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('DTEC', 'LAIT', 'Date d\'émission du certificat', 'Emission certificate date\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('QADD', 'LAIT', 'Droit additionnel de quota', 'Additional quota right\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('QKMG', 'LAIT', 'Quota : Kg/Mg', 'Quota : Kg/Mg\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('QLBS', 'LAIT', 'Quota : Livres', 'Quota : pound\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('QLTR', 'LAIT', 'Quota : Litres', 'Quota : liters\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('QNAD', 'LAIT', 'Aucun droit additionnel de Quota', 'No additional quota rigth\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('QNRS', 'LAIT', 'Quota non respecté', 'Quota not respected\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('QRES', 'LAIT', 'Quota respecté', 'Quota respected\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PRIV', 'LIMT', 'Privé', 'Private\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PUBL', 'LIMT', 'Public', 'Public\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AEAU', 'LOC', 'Adoucisseur d\'eau', 'Water softener\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('APCH', 'LOC', 'Appareils de chauffage', 'Heating appliances\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'LOC', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CEAU', 'LOC', 'Chauffe-eau', 'Water heater\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SYAL', 'LOC', 'Système d\'alarme', 'Alarm system\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('THER', 'LOC', 'Thermo-pompe', 'Thermo-pump\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ABRV', 'MACH', 'Système d\'abrevoir', 'Watering system\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'MACH', 'AUTRE', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CHAR', 'MACH', 'Charrue', 'Plow\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CONV', 'MACH', 'Convoyeur', 'Conveyor\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ECUR', 'MACH', 'Écureur automatique', 'Écureur automatique\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EPAN', 'MACH', 'Épandeur', 'Spreader\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EPNF', 'MACH', 'Épandeur à fumier', 'Dung spreader\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('FAN', 'MACH', 'Faneuse', 'Tedder\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('FAUC', 'MACH', 'Faucheuse', 'Mower\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('FEND', 'MACH', 'Fendeuse', 'Wood chopper\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('FOSS', 'MACH', 'Fosse', 'Pit\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('GEN', 'MACH', 'Génératrice', 'Generator\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('HERS', 'MACH', 'Herse', 'Harrow\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MARL', 'MACH', 'Matériel roulant', 'Rolling equipment\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MELN', 'MACH', 'Mélangeur', 'Mixer\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MNTB', 'MACH', 'Monte-balle', 'Monte-balle\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('NEIG', 'MACH', 'Équipement à neige', 'Snow equipment\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PULV', 'MACH', 'Pulvérisateur', 'Vaporiser\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('RATO', 'MACH', 'Rateau', 'Rake\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('RESL', 'MACH', 'Réservoir à lait', 'Milk Container\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('RESV', 'MACH', 'Réservoir', 'Container\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ROUL', 'MACH', 'Rouleau', 'Roll\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SECH', 'MACH', 'Séchoir', 'Dryer\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SEMO', 'MACH', 'Semoir', 'Seeder/\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SILO', 'MACH', 'Silo', 'Silo\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('STRT', 'MACH', 'Système de traite', 'Milker system\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('TRAC', 'MACH', 'Tracteur', 'Tractor\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('TRAY', 'MACH', 'Trayeuse', 'Milker\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('VENT', 'MACH', 'Ventilateur', 'Fan\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('VISG', 'MACH', 'Vis à grain', 'Vis a grain\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('WAGN', 'MACH', 'Wagon', 'Wagon\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('1', 'NBUN', '1 1/2', '1 1/2\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('2', 'NBUN', '2 1/2', '2 1/2\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('3', 'NBUN', '3 1/2', '3 1/2\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('4', 'NBUN', '4 1/2', '4 1/2\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('5', 'NBUN', '5 1/2', '5 1/2\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('6', 'NBUN', '6 1/2', '6 1/2\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'NBUN', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('E', 'ORIE', 'Est', 'East\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('N', 'ORIE', 'Nord', 'North\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('N-E', 'ORIE', 'Nord-est', 'North-East\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('N-O', 'ORIE', 'Nord-ouest', 'North-West\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('O', 'ORIE', 'Ouest', 'West\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('S', 'ORIE', 'Sud', 'South\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('S-E', 'ORIE', 'Sud-est', 'South-East\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('S-O', 'ORIE', 'Sud-ouest', 'South-West\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ACIE', 'PARE', 'Acier', 'Steel\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AGRE', 'PARE', 'Granulat (agrégat)', 'Aggregate\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ALUM', 'PARE', 'Aluminium', 'Aluminum\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AMIA', 'PARE', 'Amiante', 'Asbestos\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ASPH', 'PARE', 'Bardeaux d\'asphalte', 'Asphalt shingles\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'PARE', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BCED', 'PARE', 'Bardeaux de cèdre', 'Cedar shingles\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BETO', 'PARE', 'Béton', 'Concrete\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIS', 'PARE', 'Bois', 'Wood\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BRIQ', 'PARE', 'Brique', 'Brick\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CCED', 'PARE', 'Clin de cèdre', 'Cedar covering joint\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('FIBP', 'PARE', 'Fibre pressée', 'Pressed fibre\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PBRI', 'PARE', 'Papier imitation brique', 'Sheating brick paper\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('PIER', 'PARE', 'Pierre', 'Stone\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SBRQ', 'PARE', 'Simili-Brique', 'Brick immitation\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('SPIE', 'PARE', 'Simili-Pierre', 'Rock immitation\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('STUC', 'PARE', 'Stuc', 'Stucco\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('VINY', 'PARE', 'Vinyle', 'Vinyl\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AEAU', 'PART', 'Accès à l\'eau', 'Water access\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AFLV', 'PART', 'Accès au fleuve', 'River access\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ALAC', 'PART', 'Accès au lac', 'Lake access\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ARIV', 'PART', 'Accès à la rivière', 'River access\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AU', 'PART', 'Autre', 'Other\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('AVOI', 'PART', 'Aucun voisin à l\'arrière', 'No neighbours in the back\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOID', 'PART', 'Terrain boisé dur', 'Hard wooded lot\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIM', 'PART', 'Terrain boisé mou', 'Soft wooded lot\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('BOIS', 'PART', 'Boisé', 'Wooded\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CEAU', 'PART', 'Terrain avec cours d\'eau', 'Lot with a stream\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('COIN', 'PART', 'Coin de rue', 'Street corner\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CUL1', 'PART', 'Culture actuelle 1', 'Culture 1\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CUL2', 'PART', 'Culture actuelle 2', 'Culture 2\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CUL3', 'PART', 'Culture actuelle 3', 'Culture 3\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CUL4', 'PART', 'Culture actuelle 4', 'Culture 4\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CUL5', 'PART', 'Culture actuelle 5', 'Culture 5\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CULA', 'PART', 'Culture (Sol argileux)', 'Culture (clayey soil)\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CULS', 'PART', 'Cul-de-sac', 'Cul-de-sac\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('CULX', 'PART', 'Culture (Sol sablonneux)', 'Culture (sandy soil)\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('DRAI', 'PART', 'Terrain drainé', 'Drained lot\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('EAU', 'PART', 'Bordé par l\'eau', 'Waterfront\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ENCL', 'PART', 'Enclavé', 'Hemmed in\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('ETNG', 'PART', 'Terrain avec étang', 'Lot with pond\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('LAC', 'PART', 'Terrain avec lac', 'Lot with lake\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('LOUE', 'PART', 'Terrain loué', 'Rented land\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MIXT', 'PART', 'Terrain boisé mixte', 'Lot with mixed wood\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MMAT', 'PART', 'Maison mobile avec terrain', 'Mobile home with land\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MMST', 'PART', 'Maison mobile sans terrain', 'Mobile home without land\r', '2016-02-08 16:20:05', '2016-02-08 16:20:05'),
('MOTN', 'PART', 'Non navigable', 'Non navigable\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MOTP', 'PART', 'Navigable', 'Navigable\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('NACA', 'PART', 'Non accessible à l\'année', 'Unaccessible year-round\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('NDRN', 'PART', 'Terrain non drainé', 'Land not drained\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PASS', 'PART', 'Droit de passage', 'Right of passage\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PRIV', 'PART', 'Rue privée', 'Private street\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'PISC', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CHAU', 'PISC', 'Chauffée', 'Heated\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CREU', 'PISC', 'Creusée', 'Inground\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('HT', 'PISC', 'Hors-terre', 'Above-ground\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INT', 'PISC', 'Intérieure', 'Indoor\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AGR', 'PROX', 'Activités agricoles', 'Agricultural activities\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'PROX', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AUTO', 'PROX', 'Autoroute/Voie rapide', 'Highway\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BOIS', 'PROX', 'Boisé', 'Wooded\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CEGP', 'PROX', 'Cegep', 'Cegep\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COMM', 'PROX', 'Activités commerciales', 'Commercial activities\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EGL', 'PROX', 'Église', 'Church\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GOLF', 'PROX', 'Golf', 'Golf\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('HOP', 'PROX', 'Hôpital', 'Hospital\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('IND', 'PROX', 'Activités industrielles', 'Industrial activities\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PARC', 'PROX', 'Parc-espace vert', 'Park - green area\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PRIM', 'PROX', 'École primaire', 'Elementary school\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('REC', 'PROX', 'Activités récréatives', 'Recreational activities\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SEC', 'PROX', 'École secondaire', 'High school\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TRSP', 'PROX', 'Transport en commun', 'Public transport\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('UNIV', 'PROX', 'Université', 'University\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VFER', 'PROX', 'Voie ferrée', 'Railroad track\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('2EV', 'SDB', 'Deux éviers', 'Two sinks\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ATTN', 'SDB', 'Attenante à la chambre principale', 'Adjoining to the master bedroom\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'SDB', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BPOD', 'SDB', 'Bain podium', 'Podium bath\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BREM', 'SDB', 'Baignoire à remous', 'Whirlpool bath-tub\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DIND', 'SDB', 'Douche indépendante', 'Seperate shower\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TMAS', 'SDB', 'Baignoire thermo-masseur', 'Jacuzzi bath-tub\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ASP', 'SDIS', 'Aspirateur central', 'Central vacuum cleaner\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ASSR', 'SDIS', 'Assurance', 'Insurance\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'SDIS', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BILL', 'SDIS', 'Salle de billard', 'Pool room\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BREM', 'SDIS', 'Baignoire à remous', 'Whirlpool bath-tub\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BRIC', 'SDIS', 'Atelier de bricolage', 'Workshop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BUAN', 'SDIS', 'Buanderie', 'Laundry room\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CABL', 'SDIS', 'Télécâble', 'Cable TV\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CHAU', 'SDIS', 'Chauffage', 'Heating\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CLIM', 'SDIS', 'Climatisation', 'Air conditioning\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CONC', 'SDIS', 'Concierge', 'Caretaker\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DEIN', 'SDIS', 'Détecteur d\'incendie', 'Fire detector\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DENG', 'SDIS', 'Déneigement', 'Snow removal\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DEPN', 'SDIS', 'Dépanneur', 'Convenience store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ELEC', 'SDIS', 'Électricité', 'Electricity\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EXER', 'SDIS', 'Salle d\'exercice', 'Exercise room\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GEST', 'SDIS', 'Gestion', 'Management\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INTP', 'SDIS', 'Interphone', 'Intercom\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PELS', 'SDIS', 'Tonte de la pelouse', 'Lawn-mowing\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PISC', 'SDIS', 'Piscine', 'Pool\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PISE', 'SDIS', 'Piscine extérieure', 'Outdoor pool\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PISI', 'SDIS', 'Piscine intérieure', 'Indoor pool\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RECP', 'SDIS', 'Salle de réception', 'Reception area\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SAUN', 'SDIS', 'Sauna', 'Sauna\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SECR', 'SDIS', 'Sécurité (surveillance)', 'Security (surveillance)\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SINT', 'SDIS', 'Stationnement intérieur', 'Indoor parking\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('STEX', 'SDIS', 'Stationnement extérieur', 'Outdoor parking\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SYAL', 'SDIS', 'Système d\'alarme', 'Alarm system\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SYGC', 'SDIS', 'Système de gicleurs', 'Jet system\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TENN', 'SDIS', 'Court de tennis', 'Tennis court\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TJEU', 'SDIS', 'Terrain de jeux', 'Playground\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VIDO', 'SDIS', 'Vide-ordures', 'Garbage dump\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('6', 'SS', '6 pieds et plus', '6 feet and over\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AMNN', 'SS', 'Non aménagé', 'Unfinished\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AMNP', 'SS', 'Partiellement aménagé', 'Partially finished\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AMNT', 'SS', 'Totalement aménagé', 'Finished basement\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'SS', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AUCN', 'SS', 'Aucun sous-sol', 'No basement\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BAS', 'SS', 'Bas (moins de 6 pieds)', 'Low (less than 6 feet)\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CAVE', 'SS', 'Cave', 'Cellar\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COMP', 'SS', 'Sous-sol complet', 'Complete basement\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ENTR', 'SS', 'Entrée indépendante', 'Separate entrance\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('HAUT', 'SS', 'Hauteur libre', 'Unrestricted height\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LOGM', 'SS', 'Logement', 'Apartment\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PART', 'SS', 'Sous-sol partiel', 'Partial basement\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RANG', 'SS', 'Rangement', 'Storage\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VSAN', 'SS', 'Vide sanitaire', 'Crawl space\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ABRI', 'STAT', 'À l\'abri', 'In carport\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'STAT', 'Autre', 'other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AUCN', 'STAT', 'Aucun', 'None\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EXT', 'STAT', 'Extérieur', 'Outdoor\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GARA', 'STAT', 'Au garage', 'Garage\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INT', 'STAT', 'Intérieur', 'Interior\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PEXT', 'STAT', 'Prise extérieure', 'Exterior electric outlet\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TOT', 'STAT', 'Total', 'Total\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VIGN', 'STAT', 'Vignette', 'Vignette\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'SYEG', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AUCN', 'SYEG', 'Aucun', 'None\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CHAM', 'SYEG', 'Champ d\'épuration', 'Purification field\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EGMU', 'SYEG', 'Municipal', 'Municipal sewer\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FSCE', 'SYEG', 'Fosse septique sans champ d\'épuration', 'Septic tank without purification field\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FSE', 'SYEG', 'Fosse septique', 'Septic tank\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FSES', 'SYEG', 'Fosse septique scellée', 'Sealed septic tank\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PRIV', 'SYEG', 'Privé', 'Private sewer\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PUSP', 'SYEG', 'Puits sec (puisard)', 'Dry well\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'SYEL', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CCIR', 'SYEL', 'Panneau coupe-circuit', 'Breaker panel\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FUSE', 'SYEL', 'Panneau à fusible', 'Fuse panel\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'TERR', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BETO', 'TERR', 'Béton', 'Concrete\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BOIS', 'TERR', 'Bois', 'Wood\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'TFEN', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COUL', 'TFEN', 'Coulissante', 'Sliding\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GUIL', 'TFEN', 'Guillotine', 'Hung\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MAN', 'TFEN', 'Manivelle', 'Crank handle\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PFEN', 'TFEN', 'Porte-fenêtre', 'French window\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PFRA', 'TFEN', 'Porte française', 'French door\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'TOIT', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BAA', 'TOIT', 'Bardeaux d\'asphalte', 'Asphalt shingles\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BCED', 'TOIT', 'Bardeaux de cèdre', 'Cedar shingles\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TOL', 'TOIT', 'Tôle', 'Tin\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ACCI', 'TOPO', 'Accidenté', 'Uneven\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'TOPO', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ESCR', 'TOPO', 'Escarpé', 'Steep\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MONT', 'TOPO', 'En montagne', 'Up hills\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PENT', 'TOPO', 'En pente', 'Sloped\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PLAT', 'TOPO', 'Plat', 'Flat\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RAVI', 'TOPO', 'Ravin', 'Ravine\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VAL', 'TOPO', 'Vallonnée', 'Undulating\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'VUE', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EAU', 'VUE', 'Sur l\'eau', 'Water\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FLV', 'VUE', 'Sur le fleuve', 'River\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LAC', 'VUE', 'Sur le lac', 'Lake\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MONT', 'VUE', 'Sur la montagne', 'Mountain\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PANO', 'VUE', 'Panoramique', 'Panoramic\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RIV', 'VUE', 'Sur la rivière', 'River\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VILL', 'VUE', 'Sur la ville', 'City\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AGR', 'ZONG', 'Agricole', 'Agricultural\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'ZONG', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COMM', 'ZONG', 'Commercial', 'Commercial\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('IND', 'ZONG', 'Industriel', 'Industrial\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MULT', 'ZONG', 'Multifamilial', 'Multifamily\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RES', 'ZONG', 'Résidentiel', 'Residential\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VILG', 'ZONG', 'Villégiature', 'Vacationing area\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CABS', 'BATI', 'Cabane à sucre', 'Sugar shack\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('KVEN', 'BATI', 'Kiosque de vente', 'Kiosk of sale\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PORC', 'BATI', 'Porcherie', 'Pigsty\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EXTN', 'ENTR', 'Extérieur non permis', 'Outside forbiden\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EXTP', 'ENTR', 'Extérieur permis', 'Outside permitted\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INT', 'ENTR', 'Intérieur', 'Inside\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PRMS', 'ENTR', 'Permis', 'Permitted\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06');
INSERT INTO `t_choice` (`ID`, `GroupID`, `Value_FR`, `Value_EN`, `updated_at`, `created_at`) VALUES
('CAFT', 'EQUI', 'Cafeteria', 'Cafeteria\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CUI', 'EQUI', 'Cuisine', 'Kitchen\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DAJS', 'EQUI', 'Débarcadère ajustable', 'Adjustable dock\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DEPN', 'EQUI', 'Dépanneur', 'Convenience store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DEXT', 'EQUI', 'Débarcadère extérieur', 'Outside dock\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DINT', 'EQUI', 'Débarcadère intérieur', 'Inside dock\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DNIV', 'EQUI', 'Débarcadère à niveau', 'On level dock\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EAIR', 'EQUI', 'Échangeur d\'air', 'Ventilation system\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ENS', 'EQUI', 'Enseigne', 'Sign\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MCHR', 'EQUI', 'Monte charge', 'Elevator\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PELE', 'EQUI', 'Porte de garage électrique', 'Electric garage door\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PNTR', 'EQUI', 'Pont roulant', 'Overhead traveling crane\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('POR1', 'EQUI', 'Porte de débarcadère 1', 'Dock door 1\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('POR2', 'EQUI', 'Porte de débarcadère 2', 'Dock door 2\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('POR3', 'EQUI', 'Porte de débarcadère 3', 'Dock door 3\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('POR4', 'EQUI', 'Porte de débarcadère 4', 'Dock door 4\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('POR5', 'EQUI', 'Porte de débarcadère 5', 'Dock door 5\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SDB', 'EQUI', 'Salle de bains', 'Washroom\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('STER', 'EQUI', 'Chaîne stéréo intégrée', 'Integrated audio system\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ERAB', 'EXPL', 'Érablière', 'Maple forest\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PORC', 'EXPL', 'Élevage de porc', 'Pig breeding\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VERG', 'EXPL', 'Verger', 'Orchard\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VIGN', 'EXPL', 'Vignoble', 'Vineyard\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DCON', 'PART', 'Délai de construction', 'Construction delays\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SPXT', 'STAT', 'Sans prise extérieure', 'No electric plug\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'TPAR', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COMM', 'TPAR', 'Commercial', 'Commercial\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('IND', 'TPAR', 'Industriel', 'Industrial\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INLD', 'TPAR', 'Industriel lourd', '\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INLG', 'TPAR', 'Industriel léger', '\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('NIL', 'ALLE', 'Aucune', 'None\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CONG', 'EQUI', 'Congélateur', 'Freezer\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('REFR', 'EQUI', 'Réfrigération', 'Refrigerators\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'EXPL', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AVIC', 'EXPL', 'Avicole', 'Poultry\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CERE', 'EXPL', 'Céréalière', 'Grain\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CULT', 'EXPL', 'Culture', 'Crop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FMIX', 'EXPL', 'Fermage mixte', 'Mixed farming\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FORE', 'EXPL', 'Forestière', 'Forestry\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LOTB', 'EXPL', 'Lots à bois', 'Wooded lot\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LOTC', 'EXPL', 'Lots à construire', 'Building lot\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TERR', 'EXPL', 'Terrains', 'Land\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ESCA', 'FACC', 'Escaliers', 'Staircases\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EXCA', 'FACC', 'Escalateurs', 'Escalators\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AIHL', 'FACC', 'Accès intérieur hauteur libre', 'Interior access clearance\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AIAU', 'FACC', 'Accès intérieur autre', 'Interior access other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AGRI', 'GCOM', 'Équipements agricoles', 'Agricultural Equipment\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AMEU', 'GCOM', 'Ameublement', 'Furniture Store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ANIM', 'GCOM', 'Animalerie', 'Pet Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ANTI', 'GCOM', 'Antiquité', 'Antique\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('APIC', 'GCOM', 'Apiculture', 'Apiculture\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('APPM', 'GCOM', 'Appareils ménagers', 'Household Appliances\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AREN', 'GCOM', 'Agence de rencontres', 'Dating Agency\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ARTI', 'GCOM', 'Artisanat', 'Arts & Crafts\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ASPO', 'GCOM', 'Articles de sport', 'Sporting Goods\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'GCOM', 'Autres', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AUBE', 'GCOM', 'Auberge (6 cac +)', 'Inn (6 mbr +)\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AUTO', 'GCOM', 'Concessionnaire', 'Dealer\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AVOY', 'GCOM', 'Agence de voyages', 'Travel Agency\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BAR', 'GCOM', 'Bar', 'Bar\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BIJO', 'GCOM', 'Bijouterie', 'Jewellery Store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BILL', 'GCOM', 'Salle de billard', 'Pool Room\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BOUC', 'GCOM', 'Boucherie', 'Butcher Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BOUL', 'GCOM', 'Boulangerie', 'Bakery\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BOUT', 'GCOM', 'Boutique', 'Boutique\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BRAS', 'GCOM', 'Brasserie', 'Brewery\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BRON', 'GCOM', 'Salon de bronzage', 'Tanning Salon\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BUAN', 'GCOM', 'Buanderie', 'Laundromat\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CABE', 'GCOM', 'Café / Beignes', 'Coffee Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CADE', 'GCOM', 'Boutique de cadeaux', 'Gift Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CAMP', 'GCOM', 'Camping', 'Campsite\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CARR', 'GCOM', 'Atelier de carrosserie', 'Body Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CASS', 'GCOM', 'Casse-croûte', 'Snack Bar\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CCOM', 'GCOM', 'Centre commercial', 'Shopping Center\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CHAR', 'GCOM', 'Charcuterie / Fromagerie', 'Delicatessen / Cheese\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CINE', 'GCOM', 'Cinéma / Théâtre', 'Cinema / Theater\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COIF', 'GCOM', 'Salon de coiffure', 'Hairdresser\'s Salon\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COIH', 'GCOM', 'Salon de coiffure - Hommes', 'Barber Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COMP', 'GCOM', 'Comptabilité', 'Accounting\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CONF', 'GCOM', 'Confiserie / Chocolaterie', 'Candy / Chocolate Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CORD', 'GCOM', 'Cordonnerie', 'Cobbler\'s shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CPHY', 'GCOM', 'Centre de cond. physique', 'Fitness Center\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CREM', 'GCOM', 'Crémerie', 'Ice Cream Parlour\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CSAN', 'GCOM', 'Centre de santé', 'Health Center\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CVID', 'GCOM', 'Club vidéo', 'Video Club\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DECO', 'GCOM', 'Décoration', 'Decoration\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DEME', 'GCOM', 'Compagnie de déménagement', 'Moving Company\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DEPA', 'GCOM', 'Dépanneur', 'Convenience Store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DIVE', 'GCOM', 'Divertissements', 'Entertainment\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EBEN', 'GCOM', 'Ébénisterie', 'Cabinetmaking\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ELEC', 'GCOM', 'Fournitures électriques', 'Electric Supplies\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ELEO', 'GCOM', 'Appareils électroniques', 'Electronic Products\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ELEV', 'GCOM', 'Élevage', 'Breeding\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EMBA', 'GCOM', 'Emballage', 'Wrapping\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EPIC', 'GCOM', 'Épicerie', 'Grocery\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EQUE', 'GCOM', 'Centre équestre', 'Riding School\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ERAB', 'GCOM', 'Érablière', 'Maple Grove\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FART', 'GCOM', 'Fournitures artisanales', 'Arts & Crafts Supplies\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FERM', 'GCOM', 'Ferme', 'Farm\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FLAI', 'GCOM', 'Ferme laitière', 'Dairy Farm\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FLEU', 'GCOM', 'Boutique de fleuriste', 'Flower Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FRUI', 'GCOM', 'Fruits & légumes', 'Fruits & Vegetables\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GARA', 'GCOM', 'Garage (mécanique)', 'Garage (mechanic)\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GARD', 'GCOM', 'Garderie', 'Day Care Center\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GITE', 'GCOM', 'Gîte touristique', 'Bed & breakfast(5mbr -)\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GOLF', 'GCOM', 'Terrain de golf', 'Golf Course\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('HBAR', 'GCOM', 'Hôtel et bar salon', 'Hotel Bar\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('HOMO', 'GCOM', 'Hôtel', 'Hotel\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('HORT', 'GCOM', 'Horticulture', 'Horticulture\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INFO', 'GCOM', 'Équipements informatiques', 'Computer Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('JOUR', 'GCOM', 'Kiosque à journaux', 'Newspaper Stand\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LAUT', 'GCOM', 'Lave-auto', 'Car Wash\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LIBR', 'GCOM', 'Librairie', 'Book Store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LING', 'GCOM', 'Lingerie féminine', 'Lingerie\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MAGA', 'GCOM', 'Magasins à rayons', 'Department Store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MALI', 'GCOM', 'Marché d\'alimentation', 'Grocers\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MANU', 'GCOM', 'Manufacture', 'Factory\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MARA', 'GCOM', 'Ferme maraîchère', 'Vegetable Farm\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MASS', 'GCOM', 'Massothérapie', 'Massotherapy\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MCON', 'GCOM', 'Matériaux de construction', 'Building Materials\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MERC', 'GCOM', 'Mercerie', 'Men\'s Clothing\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MOTE', 'GCOM', 'Motel', 'Motel\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MRET', 'GCOM', 'Maison de retraités', 'Retirement Home\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('NETT', 'GCOM', 'Nettoyage à sec', 'Dry Cleaning\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PAPE', 'GCOM', 'Papeterie', 'Stationery\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PATI', 'GCOM', 'Pâtisserie', 'Pastry Shop\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PAUT', 'GCOM', 'Pièces d\'auto', 'Auto Parts\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PEIN', 'GCOM', 'Peinture / Papier peint', 'Paint & Wallpaper\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PEPI', 'GCOM', 'Pépinière', 'Nursery (tree)\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PHAR', 'GCOM', 'Pharmacie', 'Pharmacy\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PLOM', 'GCOM', 'Plomberie', 'Plumbing\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('POUR', 'GCOM', 'Pourvoirie', 'Outfitter\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('QUIL', 'GCOM', 'Salon de quilles', 'Bowling Alley\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('QUIN', 'GCOM', 'Quincaillerie', 'Hardware Store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RDIS', 'GCOM', 'Route de distribution', 'Distribution Road\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('REST', 'GCOM', 'Restaurant', 'Restaurant\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RMEU', 'GCOM', 'Réparation de meubles', 'Furniture Repair\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RRAP', 'GCOM', 'Restauration rapide', 'Fast Food\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SBEA', 'GCOM', 'Salon de beauté', 'Beauty Parlor\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SENC', 'GCOM', 'Services d\'encan', 'Auction Services\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SERR', 'GCOM', 'Serres', 'Greenhouse\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SPHO', 'GCOM', 'Studio de photos', 'Photo Studio\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SREC', 'GCOM', 'Salle de réception', 'Reception Hall\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SSER', 'GCOM', 'Station-service', 'Service Station\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('STAT', 'GCOM', 'Espace de stationnement', 'Parking Lot\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TABA', 'GCOM', 'Tabagie', 'Tobacco Store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TAGR', 'GCOM', 'Terrain agricole', 'Farm Land\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TAVE', 'GCOM', 'Taverne', 'Tavern\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TFOR', 'GCOM', 'Terre forestière', 'Forestland\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TRAI', 'GCOM', 'Traiteur', 'Catering\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TRAN', 'GCOM', 'Transport routier', 'Road Transport\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VARI', 'GCOM', 'Variétés', 'Variety Store\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VERG', 'GCOM', 'Verger', 'Orchard\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ENTR', 'GCOM', 'Commerce d\'entreposage', 'Storage business\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LOCA', 'GCOM', 'Commerce de location', 'Rental business\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RESI', 'GCOM', 'Résidence spécialisée', 'Specialized residence\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('HMOT', 'GCOM', 'Hôtel/Motel', 'Hotel/Motel\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ACGA', 'PART', 'Accès aux grandes artères', 'Access to major arteries\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ARPR', 'PART', 'Artères principales', 'Main arteries\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ARSE', 'PART', 'Artères secondaires', 'Secondary arteries\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FAAC', 'PART', 'Facile d\'accès', 'Accessible\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CHPR', 'PART', 'Chauffage payé par le propriétaire', 'Heating paid by owner\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CHLO', 'PART', 'Chauffage payé par le locataire', 'Heating paid by tenant\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('COTE', 'PART', 'Style jumelé (côte à côte)', 'Side by side\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EV1', 'PART', 'Étude environnementale phase 1', 'Environmental study phase 1\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EV2', 'PART', 'Étude environnementale phase 2', 'Environmental study phase 2\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BACH', 'PART', 'Garçonnière', 'Bachelor\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DCOM', 'PART', 'Dans un centre commercial', 'In a shopping center\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AERO', 'PROX', 'Aéroport', 'Airport\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CCOM', 'PROX', 'Centre commercial', 'Shopping center\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SCOM', 'SDIS', 'Salle communautaire', 'Community center\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CONF', 'SDIS', 'Salle de conférence', 'Conference room\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INCO', 'EAU', 'Inconnu', 'Unknown\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INCO', 'SYEG', 'Inconnu', 'Unknown\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FABR', 'TCOM', 'Fabrication', 'Manufacturing\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ENTR', 'TCOM', 'Entreposage', 'Warehouse\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('AU', 'TCOM', 'Autre', 'Other\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BURE', 'TCOM', 'Bureau', 'Office\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('DETA', 'TCOM', 'Detail', 'Retail\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('GROS', 'TCOM', 'Grossiste', 'Wholesaler\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ILEG', 'TCOM', 'Industriel léger', 'Light Industrial\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ILOU', 'TCOM', 'Industriel lourd', 'Heavy Industrial\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RESI', 'TCOM', 'Résidentiel', 'Residential\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SERV', 'TCOM', 'Service', 'Service\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('VENT', 'TCOM', 'Vente', 'Sale\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SAIS', 'PART', 'Saisonnier', 'Seasonal\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('INTG', 'PART', 'Intergénération', 'Intergeneration\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('FGRA', 'FOPO', 'Foyer aux granules', 'Pellet fireplace\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MAZO', 'FOPO', 'Foyer au mazout', 'Oil fireplace\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PGAZ', 'FOPO', 'Poêle au gaz', 'Gas stove\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PMAZ', 'FOPO', 'Poêle au mazout', 'Oil stove\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MASN', 'PARE', 'Masonite', 'Masonite\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PBET', 'PARE', 'Pierre de béton', 'Concrete stone\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BIOF', 'SYEG', 'Biofiltre', 'Biological filter\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('METR', 'PROX', 'Métro', 'Metro\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TRAI', 'PROX', 'Train de banlieue', 'Commuter train\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('PCYC', 'PROX', 'Piste cyclable', 'Bicycle path\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SALP', 'PROX', 'Ski alpin', 'Alpine skiing\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SFON', 'PROX', 'Ski de fond', 'Cross-country skiing\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CLMC', 'EQUI', 'Climatiseur central', 'Central air conditioning\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('CLMM', 'EQUI', 'Climatiseur mural', 'Wall-mounted air conditioning\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('THEC', 'EQUI', 'Thermopompe centrale', 'Central heat pump\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('THEM', 'EQUI', 'Thermopompe murale', 'Wall-mounted heat pump\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('THER', 'ARMO', 'Thermoplastique', 'Thermoplastic\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SIMP', 'GARA', 'Simple largeur', 'Single width\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TAND', 'GARA', 'Tandem', 'Tandem\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('MBEL', 'TOIT', 'Membrane élastomère', 'Elastomer membrane\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BIGR', 'TOIT', 'Bitume et gravier', 'Asphalt and gravel\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('OSBA', 'TFEN', 'Oscillo-battant', 'Tilt and turn\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('RECY', 'GCOM', 'Recyclage', 'Recycling\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('TOIL', 'GCOM', 'Salon de toilettage', 'Pet grooming\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SDOM', 'GCOM', 'Soins à domicile', 'Home care\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('SERU', 'GCOM', 'Serrurier', 'Locksmith\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ECOL', 'GCOM', 'École', 'School\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ECON', 'GCOM', 'École de conduite', 'Driving school\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('EGLI', 'GCOM', 'Église', 'Church\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BION', 'SYEG', 'Système BIONEST', 'BIONEST system\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ASPH', 'ALLE', 'Asphalte', 'Asphalt\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('BETO', 'ALLE', 'Béton', 'Concrete\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('LAIT', 'BATI', 'Laiterie', 'Dairy\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('ECUR', 'BATI', 'Écurie', 'Stable\r', '2016-02-08 16:20:06', '2016-02-08 16:20:06'),
('7', 'NBUN', '7 1/2', '7 1/2', '2016-02-16 14:09:11', '0000-00-00 00:00:00'),
('8', 'NBUN', '8 1/2', '8 1/2', '2016-02-16 14:09:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_city`
--

CREATE TABLE `t_city` (
  `CityID` int(10) NOT NULL,
  `CityName` varchar(255) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `URL` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_city`
--

INSERT INTO `t_city` (`CityID`, `CityName`, `CountryID`, `URL`) VALUES
(1, 'Qu&eacute;bec Rive-Sud', 1, 'quebec-rive-sud'),
(2, 'Qu&eacute;bec Rive-Nord', 1, 'quebec-rive-nord');

-- --------------------------------------------------------

--
-- Table structure for table `t_code`
--

CREATE TABLE `t_code` (
  `Code` varchar(40) NOT NULL,
  `Used` int(1) NOT NULL,
  `Used_date` datetime DEFAULT NULL,
  `CompanyID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Paid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_code`
--

INSERT INTO `t_code` (`Code`, `Used`, `Used_date`, `CompanyID`, `UserID`, `Paid`) VALUES
('007765838b910398bda8065c164268ce', 0, NULL, 1, NULL, 0),
('024d8a06d5470e3fa03191a7517fe14b', 0, NULL, 1, NULL, 0),
('04cc015b3055845f221e9c04b57844b5', 0, NULL, 1, NULL, 0),
('04e27b2a4dc5f0d37aa246202ec7f39a', 0, NULL, 1, NULL, 0),
('054fa81406e16c5b4304e00ba9145548', 0, NULL, 1, NULL, 0),
('060fed1a310fcd3b30a1aa4d98f940ad', 1, '2016-01-15 00:00:00', 1, 670, 1),
('061c6d610de71f8a15a43c3999741960', 0, NULL, 1, NULL, 0),
('0811e4eba9573d15b36e48dbc1a35c7f', 0, NULL, 1, NULL, 0),
('0db8dc4f32b073cf4afc6077e9cac398', 0, NULL, 1, NULL, 0),
('0e607e2225f22004b8876224c867f6fb', 0, NULL, 1, NULL, 0),
('0e7d79ad0cc825381f95d0c7504f435b', 0, NULL, 1, NULL, 0),
('0f2e3b762fa3198e05bb6603ceb57493', 0, NULL, 1, NULL, 0),
('102d28d26800c127135741f308be4368', 0, NULL, 1, NULL, 0),
('10f308199594fe21e40fec2a66616a60', 0, NULL, 1, NULL, 0),
('129849cba3ff883354344c979675bf4d', 0, NULL, 1, NULL, 0),
('18a8d44dbd38a068e18f259b549b1363', 0, NULL, 1, NULL, 0),
('1b19d1d5fcff1829989ab302c2890750', 0, NULL, 1, NULL, 0),
('1c5e657096e22e99d07b4b6a1fe331dd', 0, NULL, 1, NULL, 0),
('1d631d23f091285d93113119462e9197', 0, NULL, 1, NULL, 0),
('1dc1336d56e9397b1e1afae7a3dd32a7', 0, NULL, 1, NULL, 0),
('1fa67ecff2443f31a5d397fa67e191cd', 0, NULL, 2, NULL, 0),
('1fe8a65860e6e679978999bc2109e5d6', 0, NULL, 1, NULL, 0),
('1ff4c960c638d86f1dcbf22d890b3ba7', 0, NULL, 1, NULL, 0),
('23d4c95621fa10e600946da5ae6a449d', 0, NULL, 2, NULL, 0),
('2472b73b3b2587cb9421707dd1ee06f3', 0, NULL, 1, NULL, 0),
('26293460ed8a4906dea3431509542ead', 0, NULL, 1, NULL, 0),
('2680b286535715278650324585db491c', 0, NULL, 1, NULL, 0),
('27759529b04f3d525f916bdab51e492e', 0, NULL, 1, NULL, 0),
('29ee03f982cbf70c1cf5bcecc97e6087', 0, NULL, 1, NULL, 0),
('2a5fc9d9ba6479383babce0081158f77', 0, NULL, 1, NULL, 0),
('2a870bb5020af0edeecb63c7a92fde55', 0, NULL, 1, NULL, 0),
('2ba09cd880c852c378f6d44c8f9a739b', 0, NULL, 1, NULL, 0),
('2eb14057d9e294fc5a48708cc6db2aff', 0, NULL, 1, NULL, 0),
('2f1dedeaaa5dad42f6a491fed2382cf6', 0, NULL, 1, NULL, 0),
('2f379d24fd44e05195180bd7d078c0a8', 0, NULL, 1, NULL, 0),
('314a4925a4123a23ea52fe3e8f88d835', 0, NULL, 1, NULL, 0),
('31ba43f905e80e4380f8b7c4e9b38987', 0, NULL, 1, NULL, 0),
('32e70189353fcf779d9d854e8b710dff', 0, NULL, 1, NULL, 0),
('35a6f8aff5cbf6fd92ca2a7c3cc3c40e', 0, NULL, 1, NULL, 0),
('373ea63cc24dd0d687961ee129a610fb', 0, NULL, 1, NULL, 0),
('3cab740fe3c28aa00c7e7926007bd9c1', 0, NULL, 1, NULL, 0),
('3d71c4e6eaace78e3c63efce2a72361e', 0, NULL, 1, NULL, 0),
('4459d0f2a0c8a9e2d63cb2a54d67b88c', 0, NULL, 1, NULL, 0),
('445dea536128841e3e8853ef0836fcbd', 0, NULL, 1, NULL, 0),
('44a2878d8c01f0ba335de788d0cb9ce0', 0, NULL, 1, NULL, 0),
('451e535b2b1278487036d0efbb531a98', 0, NULL, 1, NULL, 0),
('4653c76651a272ff4d75950a77040da6', 0, NULL, 1, NULL, 0),
('47a0d05ea6c974d75c9747e44ff48665', 0, NULL, 1, NULL, 0),
('480cc8b3cff3da47c5add0a763bb250a', 0, NULL, 1, NULL, 0),
('4961af0667805b9486b8ec10c7da32ad', 0, NULL, 1, NULL, 0),
('49c3cdd0d181a99d216f681a6c004bd8', 0, NULL, 1, NULL, 0),
('4d692fd4bf9defddd600ec0db4c04a6c', 0, NULL, 1, NULL, 0),
('4f2808fa0764a387015ff6fb0052833c', 0, NULL, 1, NULL, 0),
('4f32ea32e747f4e1290bb2cfe4caa2a2', 0, NULL, 1, NULL, 0),
('50dcac590b13c3256742c2116e7bcbe3', 0, NULL, 1, NULL, 0),
('510f4486f14d9506cd601ee1dc0bb1ea', 0, NULL, 1, NULL, 0),
('51d25d17be2105ea2ab9ad8dba321f50', 0, NULL, 1, NULL, 0),
('520527766a5a8d9580249941110ed747', 0, NULL, 1, NULL, 0),
('5435af7eecf7855ad45dd5a7efbd584d', 0, NULL, 1, NULL, 0),
('54b4d3de8b35a4c8a417df757679ab78', 0, NULL, 1, NULL, 0),
('55b7892bf1a59a74458c7d4fff2eb9c1', 0, NULL, 1, NULL, 0),
('56c61c1f9931be2ce41325cf2c36e38f', 0, NULL, 1, NULL, 0),
('595dff51d95c8c7bb4872e345cc4ea7a', 0, NULL, 1, NULL, 0),
('5b1f8d0ae7f312ef27ec145c8ce22bb5', 0, NULL, 1, NULL, 0),
('5eb8b1cced23b238e962f1a2e4b44160', 0, NULL, 1, NULL, 0),
('614ba1fc2b2108bdc35348dc21658581', 0, NULL, 1, NULL, 0),
('616dd6800278f927de2553c6b34be131', 0, NULL, 2, NULL, 0),
('619138cc766c0d5e48f184d590dd64c9', 0, NULL, 1, NULL, 0),
('61c33ae673c73ba5d9be849413981a76', 0, NULL, 1, NULL, 0),
('62e48c728c95346929b7ee99feae84ee', 0, NULL, 1, NULL, 0),
('6442c76293226efa757b47104318a1d5', 0, NULL, 1, NULL, 0),
('670ab92cdff2cbef5b39e905b9474f80', 0, NULL, 1, NULL, 0),
('693cd5bcbfbfc24e6fd00f22bb7fdce0', 0, NULL, 1, NULL, 0),
('6b52b1ffc3f6fd758f1c583218c11783', 0, NULL, 1, NULL, 0),
('6efbc492fcfe2944afd89119f3340a71', 0, NULL, 2, NULL, 0),
('6f8bcf9c286257553ee33ccbb1d8db73', 0, NULL, 1, NULL, 0),
('6fa382aa5b254dbd8d7712cf98911604', 0, NULL, 1, NULL, 0),
('7117d23e83d2914f1d608a7eb81b1c15', 0, NULL, 1, NULL, 0),
('71a6fd830666ba540bc99cac7e97619c', 0, NULL, 1, NULL, 0),
('71e3602aade051206289bbf2c210e3bd', 0, NULL, 2, NULL, 0),
('72cc4a5cd9789a7d2edd51d32fa5fe3f', 0, NULL, 1, NULL, 0),
('741ea493340c0694848657e26f5ff3b8', 0, NULL, 1, NULL, 0),
('756c0bec14de0b3bad4b2a7db8cad1d1', 0, NULL, 1, NULL, 0),
('7655ec39a5b3d7b4d07bff3e5df0f928', 0, NULL, 1, NULL, 0),
('7aede9fa4c427bb6eb1c044df7e68131', 0, NULL, 1, NULL, 0),
('7c915c2aeaa628f710e5cbb8b53b0405', 0, NULL, 1, NULL, 0),
('7e85cfd670ef58d65bd554abbaab1c0e', 0, NULL, 1, NULL, 0),
('828e5a3be2e797e27602d3485059abff', 0, NULL, 1, NULL, 0),
('82d802470af28112e0ba80a6ce6c7f6d', 0, NULL, 1, NULL, 0),
('84979ae5b62858682b3f13066ee6ac09', 0, NULL, 1, NULL, 0),
('876dc9593a4eecc60843f72f5d28061e', 0, NULL, 1, NULL, 0),
('88404a71c793ed87883ed50981093b67', 0, NULL, 1, NULL, 0),
('88437ad89b15da5e88eb9d80e0fe85a4', 0, NULL, 1, NULL, 0),
('88dbb3e289db4a59dd3f05ea70839e0c', 0, NULL, 1, NULL, 0),
('898adf67942e63ec2a0fddffade0edce', 0, NULL, 1, NULL, 0),
('89b6a2800b84b64cfc2c17742fb08321', 0, NULL, 1, NULL, 0),
('8ad122faf4c648e398411d994bfcd36a', 0, NULL, 1, NULL, 0),
('8bdc664169350ae51026754ce3043db5', 0, NULL, 1, NULL, 0),
('8e3a1beeb89e70baf3ec68652222e33d', 0, NULL, 1, NULL, 0),
('8e68b70c75cbecd74f3f3cb31f9a6af3', 0, NULL, 1, NULL, 0),
('8e6ef130dc6f8b4db4c4e203c9095be3', 0, NULL, 1, NULL, 0),
('8eeceb7176267df5da03bbdca0b5b9e3', 0, NULL, 1, NULL, 0),
('8fbb8a6b3eb8362c6999b72e2d06aaac', 0, NULL, 2, NULL, 0),
('90852a2d46405362d075f1e0ef70a19e', 0, NULL, 1, NULL, 0),
('91ab4649436c4381cd9d3cd51bf13f36', 0, NULL, 1, NULL, 0),
('953e04177889de7fd792ebf4b99fbbf3', 0, NULL, 1, NULL, 0),
('9604833bd8e09a4ea2a7cf9d43fb835f', 0, NULL, 1, NULL, 0),
('98b3a5c59d5e64b5a4cf2d8d743c80f7', 0, NULL, 1, NULL, 0),
('9a0d565cdce172c05caeed42475b082b', 0, NULL, 1, NULL, 0),
('9c387b298bc02dc86b41093ed48500f0', 0, NULL, 1, NULL, 0),
('9f659f0f0a08d736fb1e3266161fa5db', 0, NULL, 1, NULL, 0),
('9fb57a119c5a1dfee28b1f8261f13bf0', 0, NULL, 1, NULL, 0),
('a0d2752ec2135b9d8044ee32bf1b17c2', 0, NULL, 1, NULL, 0),
('a13a57f4b8c6096e0940c0f77fcf0e0e', 0, NULL, 1, NULL, 0),
('a1c0bb63699f4c78008c578bb887e7b4', 0, NULL, 1, NULL, 0),
('a249acff0c9ebb71930820fde2deea3f', 0, NULL, 1, NULL, 0),
('a3a2f8667828853af4da2f7c4ce28988', 0, NULL, 1, NULL, 0),
('a5db176aabad339a0152aa69ec30decf', 0, NULL, 1, NULL, 0),
('a659af5fd3ecc7e763c8476013615ff5', 0, NULL, 1, NULL, 0),
('a859d15d634cd1c9a818976eca7e84ec', 0, NULL, 1, NULL, 0),
('a89d5218e151ad2c095569065a3e59ab', 0, NULL, 1, NULL, 0),
('aca6bc69e8c67408b8f6bda35ec9bdc4', 0, NULL, 1, NULL, 0),
('acff517a04771b9358a972a819352757', 0, NULL, 1, NULL, 0),
('ae319b5c5a125abcfcf37783b373f628', 0, NULL, 1, NULL, 0),
('b088d053c6f536c35502ff19103b390e', 0, NULL, 2, NULL, 0),
('b1cba253049b4dba309c87d3180b1961', 0, NULL, 1, NULL, 0),
('b2043cb049ee08049034cfd4f9c5ce1c', 0, NULL, 1, NULL, 0),
('b3444f267f4ae02cf42c98672c0f2864', 0, NULL, 1, NULL, 0),
('ba095653b30528df72e8424b2a261d7c', 0, NULL, 1, NULL, 0),
('bbfe8bc454cf5e801015433c2a739fde', 0, NULL, 1, NULL, 0),
('be5869bb59f9c1d21b5b75bc2eb04a0b', 0, NULL, 2, NULL, 0),
('bf383a6dd8346f70790290846d2aacd7', 0, NULL, 1, NULL, 0),
('c07c3b4504ab90cb9dc9d9c81ae6bdea', 0, NULL, 1, NULL, 0),
('c4c1c777f8e66bcb38d714bd69616507', 0, NULL, 1, NULL, 0),
('c5937a0994fc1a790ec9c486b4f6fb38', 0, NULL, 1, NULL, 0),
('c610a63f542925309aa0fc2dff90131f', 0, NULL, 1, NULL, 0),
('c61180b108296f27d1bed34f7b0675af', 0, NULL, 2, NULL, 0),
('c6cff7dbc274656c626daf44b7cfe510', 0, NULL, 1, NULL, 0),
('c71c1fe0c820628a767ebeef8c307ac6', 0, NULL, 1, NULL, 0),
('c82f8ac413bfb967fc0831a49f243b0a', 0, NULL, 1, NULL, 0),
('c8549e69657f2b93a2e2e48fdee5f8e8', 0, NULL, 1, NULL, 0),
('c8a80790a3bd70d97fc029c738d8efca', 0, NULL, 1, NULL, 0),
('cad8c82da16604ee1aa4bc7faccea977', 0, NULL, 1, NULL, 0),
('cd6c5971f5bd228eb9993a6c3ca5e938', 0, NULL, 1, NULL, 0),
('cf07451207288d708fd3e2c9ef376ccd', 0, NULL, 1, NULL, 0),
('d05ef8fbb34a3866cf93c453583dd62e', 0, NULL, 1, NULL, 0),
('d0beafd0a492cdb36575ccecba490f69', 0, NULL, 1, NULL, 0),
('d1add4ee9111bf00dfa7cd20797c5411', 0, NULL, 1, NULL, 0),
('d203739b046e2a57172ecc916706ce08', 0, NULL, 1, NULL, 0),
('d318df9a6ef3fe14ff53badde8c31595', 0, NULL, 1, NULL, 0),
('d34c1fcb5462b6b78a2f44c56f8fb649', 0, NULL, 1, NULL, 0),
('d7ea2eb27cff4b13eb4eea005651dd93', 0, NULL, 1, NULL, 0),
('d98b150667bc94fec1269307f5ff0a77', 0, NULL, 1, NULL, 0),
('db4adce642294066698d7ce8769f8ecf', 0, NULL, 1, NULL, 0),
('dc1a9657650ac459faf742600eca2820', 0, NULL, 1, NULL, 0),
('de890ba1fe1e126152b30c2522d009d2', 0, NULL, 2, NULL, 0),
('e35cdfca000ff02afaded57bdd1e3bbe', 0, NULL, 1, NULL, 0),
('e3b98a5b1e1421b76062a2df1c9dae11', 0, NULL, 1, NULL, 0),
('e5631d0d0a6d84dd159b31a6a0faa267', 0, NULL, 1, NULL, 0),
('eb85e78c229c408d9f502b917c1ada70', 0, NULL, 1, NULL, 0),
('ec458a9b1cd588f9ffece127eee10692', 0, NULL, 1, NULL, 0),
('ec7c6a77e011e8beff0cf9ae2b4e0dd2', 0, NULL, 1, NULL, 0),
('ed37e90db2b007701ec2e8e5714919d8', 0, NULL, 1, NULL, 0),
('edac9d5f3246590873e42e0aa2dded3f', 0, NULL, 1, NULL, 0),
('ede152949a169695bbdaeeff9f16de67', 0, NULL, 1, NULL, 0),
('ee677f1d465f51db09dcbe38ffb9f176', 0, NULL, 1, NULL, 0),
('ef567ea9be2513df8eb8fccf551b4c5f', 0, NULL, 1, NULL, 0),
('f1e6071d34e6b3d7f4007201a06a7213', 0, NULL, 1, NULL, 0),
('f32e2b099fda8dab1151a961888930ff', 0, NULL, 1, NULL, 0),
('f57eacbb20c93a3402c36dafb6d7deb9', 0, NULL, 1, NULL, 0),
('fb4924a7723b1910ec41da9f4df8e580', 0, NULL, 1, NULL, 0),
('fdb862ecf5037efe8a8d4176e530e1df', 0, NULL, 1, NULL, 0),
('ff40d52db9a728cf0ec78b73c5201a3b', 0, NULL, 1, NULL, 0),
('ff9c7df1b7436722173b7cbc4af3906e', 0, NULL, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_commercants`
--

CREATE TABLE `t_commercants` (
  `id` int(10) NOT NULL,
  `CityID` int(10) NOT NULL,
  `CategoryID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Logo` varchar(300) NOT NULL,
  `CityName` varchar(50) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `SiteWeb` varchar(150) NOT NULL,
  `TexteFR` text NOT NULL,
  `TexteEN` text NOT NULL,
  `ServiceFR` varchar(1500) NOT NULL,
  `ServiceEN` varchar(1500) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Realisations` text NOT NULL,
  `RedirectTo` varchar(50) NOT NULL,
  `UrlName` varchar(50) NOT NULL,
  `Span` varchar(10) NOT NULL,
  `PromoVisitor` varchar(200) NOT NULL,
  `PromoMember` varchar(200) NOT NULL,
  `CertifiedLogo` varchar(500) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_commercants`
--

INSERT INTO `t_commercants` (`id`, `CityID`, `CategoryID`, `Name`, `Logo`, `CityName`, `Mail`, `SiteWeb`, `TexteFR`, `TexteEN`, `ServiceFR`, `ServiceEN`, `Phone`, `Realisations`, `RedirectTo`, `UrlName`, `Span`, `PromoVisitor`, `PromoMember`, `CertifiedLogo`, `updated_at`, `created_at`) VALUES
(3, 2, 2, 'clic-assure', 'logo-clic-assure.png', 'Quebec', 'test@test.com', 'www.clicassure.com/?code=IMMO-CLIC', 'Bonjour', 'Welcome', 'service1;service2;service3;', 'service1;service2;service3;', '418-557-3903', 'test', 'WebSite', 'clic-assure', '12', '', '', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(4, 2, 6, 'Fortin & Fortin', 'fortin-et-fortin-notaire-logo.png', 'Québec', 'fortinnotaires@fortinnotaires.com', 'www.fortinnotaires.com', 'Vous pouvez compter sur lâ€™expÃ©rience de Me Michel Fortin, Me Caroline Fortin et Me MÃ©lissa Bourque qui ont dÃ©veloppÃ© une aptitude Ã  vulgariser les textes et actes juridiques dans lesquels vous serez appelÃ©s Ã  intervenir. Notre Ã©tude est rÃ©putÃ©e pour exÃ©cuter les mandats qui lui sont confiÃ©s dans les dÃ©lais requis, avec professionnalisme, vigilance et  diligence, et ce, dans tous les champs de compÃ©tence inhÃ©rents Ã  la pratique notariale.', 'Vous pouvez compter sur lâ€™expÃ©rience de Me Michel Fortin, Me Caroline Fortin et Me MÃ©lissa Bourque qui ont dÃ©veloppÃ© une aptitude Ã  vulgariser les textes et actes juridiques dans lesquels vous serez appelÃ©s Ã  intervenir. Notre Ã©tude est rÃ©putÃ©e pour exÃ©cuter les mandats qui lui sont confiÃ©s dans les dÃ©lais requis, avec professionnalisme, vigilance et  diligence, et ce, dans tous les champs de compÃ©tence inhÃ©rents Ã  la pratique notariale.', 'Transactions immobiliÃ¨res (vente et hypothÃ¨que);Testaments et mandats en prÃ©vision de lâ€™inaptitude;Successions;Droit commercial,des entreprises et sociÃ©tÃ©s;ProcÃ©dures non-contentieuses;', 'Transactions immobiliÃ¨res (vente et hypothÃ¨que);Testaments et mandats en prÃ©vision de lâ€™inaptitude;Successions;Droit commercial,des entreprises et sociÃ©tÃ©s;ProcÃ©dures non-contentieuses;', '418 872-4620', 'fortin-fortin-batisse.jpg;fortin-fortin-equipe.jpg;', 'Commercant', 'fortin-et-fortin', '4', '5%*', '10%* <br/> Rabais applicable sur le tarifs des honoraires en vigueur au moment de la transaction.', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(5, 2, 6, 'Boilard, Renaud', 'boilar-renaud-notaires-logo.png', 'Saint-Raymond', 'olivierboilard@notarius.net', 'www.boilardrenaud.com', 'Boilard, Renaud Notaires Inc. est une Ã©tude forte et dynamique composÃ©e de dix notaires et conseillers juridiques ainsi que plusieurs techniciennes et secrÃ©taires juridiques qui rÃ©pondront Ã  vos besoins dans les diffÃ©rents domaines du droit.   Cette Ã©quipe regroupe des notaires qui comptent de nombreuses annÃ©es dâ€™exercice et qui constituent la plus importante Ã©tude du milieu. Ils vous offriront un service professionnel, efficace et Ã  la fine pointe de la technologie.  Avant de prendre une dÃ©cision importante, venez rencontrer votre notaire, un partenaire de confiance!', 'Boilard, Renaud Notaires Inc. est une Ã©tude forte et dynamique composÃ©e de dix notaires et conseillers juridiques ainsi que plusieurs techniciennes et secrÃ©taires juridiques qui rÃ©pondront Ã  vos besoins dans les diffÃ©rents domaines du droit.   Cette Ã©quipe regroupe des notaires qui comptent de nombreuses annÃ©es dâ€™exercice et qui constituent la plus importante Ã©tude du milieu. Ils vous offriront un service professionnel, efficace et Ã  la fine pointe de la technologie.  Avant de prendre une dÃ©cision importante, venez rencontrer votre notaire, un partenaire de confiance!', 'Convention de conjoints de fait;Contrat de mariage;Achat dâ€™une propriÃ©tÃ©;HypothÃ¨que;RÃ©daction ou rÃ©vision de votre testament;Planification et rÃ¨glement dâ€™une succession;Mandat en prÃ©vision de lâ€™inaptitude;Convention entre actionnaires;Incorporation et transfert de compagnie;', 'Convention de conjoints de fait;Contrat de mariage;Achat dâ€™une propriÃ©tÃ©;HypothÃ¨que;RÃ©daction ou rÃ©vision de votre testament;Planification et rÃ¨glement dâ€™une succession;Mandat en prÃ©vision de lâ€™inaptitude;Convention entre actionnaires;Incorporation et transfert de compagnie;', '418 337-2222', 'mario-boilard.jpg;me-olivier-juneau-boilard.jpg;', 'Commercant', 'boilard-renaud', '4', '5%*', '10%* <br/>* Rabais applicable sur le tarif des honoraires en vigueur au moment de la transaction.', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(6, 2, 6, 'LafreniÃ¨re, Bourdages & Bouchard notaires', 'joel-lafreniere-notaire-logo.png', 'Québec', 'info@lbbnotaires.com', 'www.lbbnotaires.com', 'Notre Ã©tude est formÃ©e de trois notaires, JoÃ«l LafreniÃ¨re, Katherine Bourdages et Marie-Ãˆve Bouchard Dionne, ainsi que d\'une Ã©quipe de ressources qualifiÃ©es pour vous accompagner tout au long de votre vie dans les diffÃ©rents Ã©vÃ¨nements importants qui nÃ©cessitent des dÃ©cisions dâ€™ordre juridique, telles que : le mariage, lâ€™arrivÃ©e dâ€™un enfant, une sÃ©paration, un dÃ©cÃ¨s, lâ€™achat ou la vente dâ€™une maison, la crÃ©ation dâ€™une entreprise, etc.<br/><br/>   Notre Ã©tude se donne comme principale mission dâ€™offrir des services juridiques personnalisÃ©s et de haute qualitÃ©. Notre premiÃ¨re prÃ©occupation demeure la satisfaction de nos clients.<br/><br/>   Fiez-vous Ã  notre expertise pour vous conseiller et vous assurer de la protection de votre famille et de votre patrimoine.', 'Notre Ã©tude est formÃ©e de trois notaires, JoÃ«l LafreniÃ¨re, Katherine Bourdages et Marie-Ãˆve Bouchard Dionne, ainsi que d\'une Ã©quipe de ressources qualifiÃ©es pour vous accompagner tout au long de votre vie dans les diffÃ©rents Ã©vÃ¨nements importants qui nÃ©cessitent des dÃ©cisions dâ€™ordre juridique, telles que : le mariage, lâ€™arrivÃ©e dâ€™un enfant, une sÃ©paration, un dÃ©cÃ¨s, lâ€™achat ou la vente dâ€™une maison, la crÃ©ation dâ€™une entreprise, etc.<br/><br/>   Notre Ã©tude se donne comme principale mission dâ€™offrir des services juridiques personnalisÃ©s et de haute qualitÃ©. Notre premiÃ¨re prÃ©occupation demeure la satisfaction de nos clients.<br/><br/>   Fiez-vous Ã  notre expertise pour vous conseiller et vous assurer de la protection de votre famille et de votre patrimoine.', 'Achat et vente dâ€™immeuble;HypothÃ¨ques mobiliÃ¨res et immobiliÃ¨res;Offre dâ€™achat et avant-contrat;RÃ©daction de testaments;Fiducie testamentaire;RÃ©daction de mandat  de protection en prÃ©vision dâ€™inaptitude;RÃ©daction de contrat dâ€™union civil et de contrat de mariage;RÃ©gime de protection : tutelle et curatelle;Liquidation de succession;Homologation de mandat de protection;VÃ©rification de testament Vente; dâ€™entreprise;Constitution, fusion et liquidation dâ€™entreprises;', 'Achat et vente dâ€™immeuble;HypothÃ¨ques mobiliÃ¨res et immobiliÃ¨res;Offre dâ€™achat et avant-contrat;RÃ©daction de testaments;Fiducie testamentaire;RÃ©daction de mandat  de protection en prÃ©vision dâ€™inaptitude;RÃ©daction de contrat dâ€™union civil et de contrat de mariage;RÃ©gime de protection : tutelle et curatelle;Liquidation de succession;Homologation de mandat de protection;VÃ©rification de testament Vente; dâ€™entreprise;Constitution, fusion et liquidation dâ€™entreprises;', '418-651-5435', 'photo-joel lafreniere-1.jpg;photo-joel lafreniere-2.jpg;', 'Commercant', 'joel-lafreniere-notaire', '4', '5%*', '10%* <br/> *Rabais applicable sur le tarifs des honoraires en vigueur au moment de la transaction.', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(7, 2, 4, 'Sylvie Caron Design', 'sylvie-caron-design-logo.png', 'Saint-Augustin-de-Desmaures', 'info@sylviecarondesign.com', 'www.sylviecarondesign.com', 'Chez Sylvie Caron Design Inc., nous sommes des crÃ©atrices dâ€™ambiance : Designer, DÃ©coratrice, Coloriste, Stylisteâ€¦nous sommes tout Ã§a Ã  la fois! Peu importe le type de mandat que vous avez Ã  nous soumettre, il nous fera plaisir de le prendre en main. Votre projet prendra forme grÃ¢ce aux designs uniques qui nous caractÃ©risent depuis plusieurs annÃ©es dÃ©jÃ . Nous saurons vous proposer des espaces de vie fonctionnels et Ã©lÃ©gants. En sâ€™appuyant sur des plans techniques dÃ©taillÃ©s et avec lâ€™aide dâ€™une Ã©quipe de collaborateurs chevronnÃ©s, la rÃ©alisation pourra sâ€™effectuer selon les rÃ¨gles de lâ€™art! Notre vision de votre demeure vous surprendra !', 'Chez Sylvie Caron Design Inc., nous sommes des crÃ©atrices dâ€™ambiance : Designer, DÃ©coratrice, Coloriste, Stylisteâ€¦nous sommes tout Ã§a Ã  la fois! Peu importe le type de mandat que vous avez Ã  nous soumettre, il nous fera plaisir de le prendre en main. Votre projet prendra forme grÃ¢ce aux designs uniques qui nous caractÃ©risent depuis plusieurs annÃ©es dÃ©jÃ . Nous saurons vous proposer des espaces de vie fonctionnels et Ã©lÃ©gants. En sâ€™appuyant sur des plans techniques dÃ©taillÃ©s et avec lâ€™aide dâ€™une Ã©quipe de collaborateurs chevronnÃ©s, la rÃ©alisation pourra sâ€™effectuer selon les rÃ¨gles de lâ€™art! Notre vision de votre demeure vous surprendra !', 'Design;DÃ©coration;Stylisme;Magasinage PersonnalisÃ©;RÃ©amÃ©nagement;Plans techniques et Suivi de chantier;', 'Design;DÃ©coration;Stylisme;Magasinage PersonnalisÃ©;RÃ©amÃ©nagement;Plans techniques et Suivi de chantier;', '(418) 658-0778', 'photo-sylvie-caron-design.jpg;photo-sylvie-caron-design2.jpg;photo-sylvie-caron-design3.jpg;', 'Commercant', 'sylvie-caron-design', '12', '5%*', '10%* <br/> Rabais applicable sur les honoraires ', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(3, 1, 2, 'clic-assure', 'logo-clic-assure.png', 'Quebec', 'test@test.com', 'www.clicassure.com/?code=IMMO-CLIC', 'Bonjour', 'Welcome', 'service1;service2;service3;', 'service1;service2;service3;', '418-557-3903', 'test', 'WebSite', 'clic-assure', '12', '', '', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(4, 1, 6, 'Fortin & Fortin', 'fortin-et-fortin-notaire-logo.png', 'Québec', 'fortinnotaires@fortinnotaires.com', 'www.fortinnotaires.com', 'Vous pouvez compter sur lâ€™expÃ©rience de Me Michel Fortin, Me Caroline Fortin et Me MÃ©lissa Bourque qui ont dÃ©veloppÃ© une aptitude Ã  vulgariser les textes et actes juridiques dans lesquels vous serez appelÃ©s Ã  intervenir. Notre Ã©tude est rÃ©putÃ©e pour exÃ©cuter les mandats qui lui sont confiÃ©s dans les dÃ©lais requis, avec professionnalisme, vigilance et  diligence, et ce, dans tous les champs de compÃ©tence inhÃ©rents Ã  la pratique notariale.', 'Vous pouvez compter sur lâ€™expÃ©rience de Me Michel Fortin, Me Caroline Fortin et Me MÃ©lissa Bourque qui ont dÃ©veloppÃ© une aptitude Ã  vulgariser les textes et actes juridiques dans lesquels vous serez appelÃ©s Ã  intervenir. Notre Ã©tude est rÃ©putÃ©e pour exÃ©cuter les mandats qui lui sont confiÃ©s dans les dÃ©lais requis, avec professionnalisme, vigilance et  diligence, et ce, dans tous les champs de compÃ©tence inhÃ©rents Ã  la pratique notariale.', 'Transactions immobiliÃ¨res (vente et hypothÃ¨que);Testaments et mandats en prÃ©vision de lâ€™inaptitude;Successions;Droit commercial,des entreprises et sociÃ©tÃ©s;ProcÃ©dures non-contentieuses;', 'Transactions immobiliÃ¨res (vente et hypothÃ¨que);Testaments et mandats en prÃ©vision de lâ€™inaptitude;Successions;Droit commercial,des entreprises et sociÃ©tÃ©s;ProcÃ©dures non-contentieuses;', '418 872-4620', 'fortin-fortin-batisse.jpg;fortin-fortin-equipe.jpg;', 'Commercant', 'fortin-et-fortin', '4', '5%*', '10%* <br/> Rabais applicable sur le tarifs des honoraires en vigueur au moment de la transaction.', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(6, 1, 6, 'LafreniÃ¨re, Bourdages & Bouchard notaires', 'joel-lafreniere-notaire-logo.png', 'Québec', 'info@lbbnotaires.com', 'www.lbbnotaires.com', 'Notre Ã©tude est formÃ©e de trois notaires, JoÃ«l LafreniÃ¨re, Katherine Bourdages et Marie-Ãˆve Bouchard Dionne, ainsi que d\'une Ã©quipe de ressources qualifiÃ©es pour vous accompagner tout au long de votre vie dans les diffÃ©rents Ã©vÃ¨nements importants qui nÃ©cessitent des dÃ©cisions dâ€™ordre juridique, telles que : le mariage, lâ€™arrivÃ©e dâ€™un enfant, une sÃ©paration, un dÃ©cÃ¨s, lâ€™achat ou la vente dâ€™une maison, la crÃ©ation dâ€™une entreprise, etc.<br/><br/>   Notre Ã©tude se donne comme principale mission dâ€™offrir des services juridiques personnalisÃ©s et de haute qualitÃ©. Notre premiÃ¨re prÃ©occupation demeure la satisfaction de nos clients.<br/><br/>   Fiez-vous Ã  notre expertise pour vous conseiller et vous assurer de la protection de votre famille et de votre patrimoine.', 'Notre Ã©tude est formÃ©e de trois notaires, JoÃ«l LafreniÃ¨re, Katherine Bourdages et Marie-Ãˆve Bouchard Dionne, ainsi que d\'une Ã©quipe de ressources qualifiÃ©es pour vous accompagner tout au long de votre vie dans les diffÃ©rents Ã©vÃ¨nements importants qui nÃ©cessitent des dÃ©cisions dâ€™ordre juridique, telles que : le mariage, lâ€™arrivÃ©e dâ€™un enfant, une sÃ©paration, un dÃ©cÃ¨s, lâ€™achat ou la vente dâ€™une maison, la crÃ©ation dâ€™une entreprise, etc.<br/><br/>   Notre Ã©tude se donne comme principale mission dâ€™offrir des services juridiques personnalisÃ©s et de haute qualitÃ©. Notre premiÃ¨re prÃ©occupation demeure la satisfaction de nos clients.<br/><br/>   Fiez-vous Ã  notre expertise pour vous conseiller et vous assurer de la protection de votre famille et de votre patrimoine.', 'Achat et vente dâ€™immeuble;HypothÃ¨ques mobiliÃ¨res et immobiliÃ¨res;Offre dâ€™achat et avant-contrat;RÃ©daction de testaments;Fiducie testamentaire;RÃ©daction de mandat  de protection en prÃ©vision dâ€™inaptitude;RÃ©daction de contrat dâ€™union civil et de contrat de mariage;RÃ©gime de protection : tutelle et curatelle;Liquidation de succession;Homologation de mandat de protection;VÃ©rification de testament Vente; dâ€™entreprise;Constitution, fusion et liquidation dâ€™entreprises;', 'Achat et vente dâ€™immeuble;HypothÃ¨ques mobiliÃ¨res et immobiliÃ¨res;Offre dâ€™achat et avant-contrat;RÃ©daction de testaments;Fiducie testamentaire;RÃ©daction de mandat  de protection en prÃ©vision dâ€™inaptitude;RÃ©daction de contrat dâ€™union civil et de contrat de mariage;RÃ©gime de protection : tutelle et curatelle;Liquidation de succession;Homologation de mandat de protection;VÃ©rification de testament Vente; dâ€™entreprise;Constitution, fusion et liquidation dâ€™entreprises;', '418-651-5435', 'photo-joel lafreniere-1.jpg;photo-joel lafreniere-2.jpg;', 'Commercant', 'joel-lafreniere-notaire', '4', '5%*', '10%* <br/> *Rabais applicable sur le tarifs des honoraires en vigueur au moment de la transaction.', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(9, 1, 6, 'Diane Plante Notaire', 'diane-plante-notaire-logo.png', 'Québec', 'dianeplante@notarius.net', 'www.dianeplantenotaire.ca', 'Diane Plante, votre notaire de confiance <br/> Une prise en charge rapide, respectueuse et compÃ©tente vous attend dÃ¨s le premier contact tÃ©lÃ©phonique. Soyez assurÃ©s que les dossiers confiÃ©s sont traitÃ©s comme sâ€™il sâ€™agissait de nos propres dossiers personnels.  Une Ã©tude notariale dÃ©montrant du professionnalisme et de lâ€™empathie envers autrui. VoilÃ  lâ€™offre!  Expertise et Ã©coute active  En faisant appel Ã  Diane Plante Notaire, vous faites le choix de lâ€™expertise et de lâ€™Ã©coute pour obtenir des solutions personnalisÃ©es et sÃ©rieuses. <br/><br/> Que vous soyez un particulier qui dÃ©sire assurer sa succession ou une entreprise qui a besoin dâ€™un spÃ©cialiste en droit commercial, vous pouvez compter sur une Ã©quipe disponible, courtoise et dynamique.   Soyez prÃªts Ã  positivement faire face Ã  lâ€™imprÃ©vu  Envisagez lâ€™avenir de maniÃ¨re sereine en effectuant toutes vos dÃ©marches notariales dans le respect de la loi avec une Ã©quipe qui comprend bien vos prÃ©occupations et vos attentes. <br/><br/> Diane Plante Notaire et son Ã©quipe est Ã  votre service du lundi au vendredi avec possibilitÃ© de rendez-vous en soirÃ©e. Avoir un notaire compÃ©tent Ã  ses cÃ´tÃ©s, câ€™est essentiel pour affronter les dÃ©fis de la vie. Prenez rendez-vous dÃ¨s aujourdâ€™hui.   Association professionnelle  Membre de la Chambre des notaires du QuÃ©bec ', 'Diane Plante, votre notaire de confiance <br/> Une prise en charge rapide, respectueuse et compÃ©tente vous attend dÃ¨s le premier contact tÃ©lÃ©phonique. Soyez assurÃ©s que les dossiers confiÃ©s sont traitÃ©s comme sâ€™il sâ€™agissait de nos propres dossiers personnels.  Une Ã©tude notariale dÃ©montrant du professionnalisme et de lâ€™empathie envers autrui. VoilÃ  lâ€™offre!  Expertise et Ã©coute active  En faisant appel Ã  Diane Plante Notaire, vous faites le choix de lâ€™expertise et de lâ€™Ã©coute pour obtenir des solutions personnalisÃ©es et sÃ©rieuses. <br/><br/> Que vous soyez un particulier qui dÃ©sire assurer sa succession ou une entreprise qui a besoin dâ€™un spÃ©cialiste en droit commercial, vous pouvez compter sur une Ã©quipe disponible, courtoise et dynamique.   Soyez prÃªts Ã  positivement faire face Ã  lâ€™imprÃ©vu  Envisagez lâ€™avenir de maniÃ¨re sereine en effectuant toutes vos dÃ©marches notariales dans le respect de la loi avec une Ã©quipe qui comprend bien vos prÃ©occupations et vos attentes. <br/><br/> Diane Plante Notaire et son Ã©quipe est Ã  votre service du lundi au vendredi avec possibilitÃ© de rendez-vous en soirÃ©e. Avoir un notaire compÃ©tent Ã  ses cÃ´tÃ©s, câ€™est essentiel pour affronter les dÃ©fis de la vie. Prenez rendez-vous dÃ¨s aujourdâ€™hui.   Association professionnelle  Membre de la Chambre des notaires du QuÃ©bec ', 'Droit notarial;Pratique traditionnelle (immobilier, testament, mandat...);RÃ¨glement de successions;Ouverture de rÃ©gimes de protection;MÃ©diation familiale;Et plus encore;', 'Droit notarial;Pratique traditionnelle (immobilier, testament, mandat...);RÃ¨glement de successions;Ouverture de rÃ©gimes de protection;MÃ©diation familiale;Et plus encore;', '418-831-4060', 'photo-diane-plante-notaire1.jpg;photo-diane-plante-notaire2.jpg;photo-diane-plante-notaire3.jpg;', 'Commercant', 'diane-plante-notaire', '4', '5%', '10%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(7, 1, 4, 'Sylvie Caron Design', 'sylvie-caron-design-logo.png', 'Saint-Augustin-de-Desmaures', 'info@sylviecarondesign.com', 'www.sylviecarondesign.com', 'Chez Sylvie Caron Design Inc., nous sommes des crÃ©atrices dâ€™ambiance : Designer, DÃ©coratrice, Coloriste, Stylisteâ€¦nous sommes tout Ã§a Ã  la fois! Peu importe le type de mandat que vous avez Ã  nous soumettre, il nous fera plaisir de le prendre en main. Votre projet prendra forme grÃ¢ce aux designs uniques qui nous caractÃ©risent depuis plusieurs annÃ©es dÃ©jÃ . Nous saurons vous proposer des espaces de vie fonctionnels et Ã©lÃ©gants. En sâ€™appuyant sur des plans techniques dÃ©taillÃ©s et avec lâ€™aide dâ€™une Ã©quipe de collaborateurs chevronnÃ©s, la rÃ©alisation pourra sâ€™effectuer selon les rÃ¨gles de lâ€™art! Notre vision de votre demeure vous surprendra !', 'Chez Sylvie Caron Design Inc., nous sommes des crÃ©atrices dâ€™ambiance : Designer, DÃ©coratrice, Coloriste, Stylisteâ€¦nous sommes tout Ã§a Ã  la fois! Peu importe le type de mandat que vous avez Ã  nous soumettre, il nous fera plaisir de le prendre en main. Votre projet prendra forme grÃ¢ce aux designs uniques qui nous caractÃ©risent depuis plusieurs annÃ©es dÃ©jÃ . Nous saurons vous proposer des espaces de vie fonctionnels et Ã©lÃ©gants. En sâ€™appuyant sur des plans techniques dÃ©taillÃ©s et avec lâ€™aide dâ€™une Ã©quipe de collaborateurs chevronnÃ©s, la rÃ©alisation pourra sâ€™effectuer selon les rÃ¨gles de lâ€™art! Notre vision de votre demeure vous surprendra !', 'Design;DÃ©coration;Stylisme;Magasinage PersonnalisÃ©;RÃ©amÃ©nagement;Plans techniques et Suivi de chantier;', 'Design;DÃ©coration;Stylisme;Magasinage PersonnalisÃ©;RÃ©amÃ©nagement;Plans techniques et Suivi de chantier;', '(418) 658-0778', 'photo-sylvie-caron-design.jpg;photo-sylvie-caron-design2.jpg;photo-sylvie-caron-design3.jpg;', 'Commercant', 'sylvie-caron-design', '12', '5%*', '10%* <br/> Rabais applicable sur les honoraires ', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(8, 1, 8, 'clic-assure', 'logo-clic-assure.png', 'Quebec', 'test@test.com', 'www.clicassure.com/?code=IMMO-CLIC', 'Bonjour', 'Welcome', 'service1;service2;service3;', 'service1;service2;service3;', '418-557-3903', 'test', 'WebSite', 'clic-assure', '12', '', '', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(8, 2, 8, 'clic-assure', 'logo-clic-assure.png', 'Quebec', 'test@test.com', 'www.clicassure.com/?code=IMMO-CLIC', 'Bonjour', 'Welcome', 'service1;service2;service3;', 'service1;service2;service3;', '418-557-3903', 'test', 'WebSite', 'clic-assure', '12', '', '', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(10, 2, 5, 'Inspection DMI', 'inspection-dmi-logo.png', 'Quebec', 'danny@inspectiondmi.com', 'www.inspectiondmi.com', 'Vous investissez des sommes importantes en immobilier alors nous investissons toute notre expertise dans le but de protÃ©ger vos intÃ©rÃªts.  Afin de maximiser l\'efficacitÃ© des inspections, nous utilisons des outils technologiques.  Il est d\'ailleurs possible de retenir les services d\'un inspecteur possÃ©dant la certification de `` Thermographe en investigation du bÃ¢timent `` qui peut dÃ©tecter plusieurs anomalies Ã  l\'aide d\'une camÃ©ra thermique infrarouge. La satisfaction de notre clientÃ¨le est primordiale, c\'est pourquoi nous sommes la seule entreprise du genre qui garantit votre satisfaction entiÃ¨re lors de l\'inspection, sinon, vous ne payez rien, point final. Contactez-nous pour une soumission rapide et gratuite. Notez que nous sommes dÃ©tenteurs des assurances responsabilitÃ©s professionnels, erreur et omission en plus d\'Ãªtre membres de l\'association des inspecteurs en bÃ¢timents du QuÃ©bec. ', 'Vous investissez des sommes importantes en immobilier alors nous investissons toute notre expertise dans le but de protÃ©ger vos intÃ©rÃªts.  Afin de maximiser l\'efficacitÃ© des inspections, nous utilisons des outils technologiques.  Il est d\'ailleurs possible de retenir les services d\'un inspecteur possÃ©dant la certification de `` Thermographe en investigation du bÃ¢timent `` qui peut dÃ©tecter plusieurs anomalies Ã  l\'aide d\'une camÃ©ra thermique infrarouge. La satisfaction de notre clientÃ¨le est primordiale, c\'est pourquoi nous sommes la seule entreprise du genre qui garantit votre satisfaction entiÃ¨re lors de l\'inspection, sinon, vous ne payez rien, point final. Contactez-nous pour une soumission rapide et gratuite. Notez que nous sommes dÃ©tenteurs des assurances responsabilitÃ©s professionnels, erreur et omission en plus d\'Ãªtre membres de l\'association des inspecteurs en bÃ¢timents du QuÃ©bec. ', 'Inspection prÃ© achat;inspection prÃ© vente;inspection prÃ©ventive pour maison;copropriÃ©tÃ© ou immeuble Ã  revenu;', 'Inspection prÃ© achat;inspection prÃ© vente;inspection prÃ©ventive pour maison;copropriÃ©tÃ© ou immeuble Ã  revenu;', '', '', 'Commercant', 'inspection-dmi', '4', '5%', '10%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(11, 2, 5, 'ComSpec', 'comspec-logo.png', 'Quebec', 'inspection@comspecinspection.com', 'www.comspecinspection.com', 'ComSpec,  est la plus grande entreprise d\'inspection pr&eacute;-achat de la grande r&eacute;gion Qu&eacute;bec.\r\n\r\nComSpec, une r&eacute;f&eacute;rence en inspection pr&eacute;-achat autant pour les courtiers, leurs clients (vendeurs, acheteurs), et m&ecirc;me tous les inspecteurs en b&acirc;timent qui &oelig;uvrent dans l\'inspection pr&eacute;-achat.\r\n\r\nComSpec,  fait environ 1200 &agrave; 1500 inspections pr&eacute;-achat par ann&eacute;e.\r\n\r\nComSpec,  tous ses inspecteurs sont membre d\'une association professionnelle reconnu par l\'OACIQ.\r\n\r\nComSpec,  vous remet le rapport d\'inspection pr&eacute;-achat ainsi que les photos, imm&eacute;diatement apr&egrave;s l\'inspection ou la journ&eacute;e m&ecirc;me par courriel.\r\n\r\nComSpec,  remet toujours au client \' Le Guide de R&eacute;f&eacute;rence de l\'Habitation \' gratuitement.    Le seul manuel fran&ccedil;ais disponible au Qu&eacute;bec pour l\'entretien d\'une habitation.\r\n\r\nAvant d\'acheter, faites inspecter', 'ComSpec,  est la plus grande entreprise d\'inspection pr&eacute;-achat de la grande r&eacute;gion Qu&eacute;bec.\r\n\r\nComSpec, une r&eacute;f&eacute;rence en inspection pr&eacute;-achat autant pour les courtiers, leurs clients (vendeurs, acheteurs), et m&ecirc;me tous les inspecteurs en b&acirc;timent qui &oelig;uvrent dans l\'inspection pr&eacute;-achat.\r\n\r\nComSpec,  fait environ 1200 &agrave; 1500 inspections pr&eacute;-achat par ann&eacute;e.\r\n\r\nComSpec,  tous ses inspecteurs sont membre d\'une association professionnelle reconnu par l\'OACIQ.\r\n\r\nComSpec,  vous remet le rapport d\'inspection pr&eacute;-achat ainsi que les photos, imm&eacute;diatement apr&egrave;s l\'inspection ou la journ&eacute;e m&ecirc;me par courriel.\r\n\r\nComSpec,  remet toujours au client \' Le Guide de R&eacute;f&eacute;rence de l\'Habitation \' gratuitement.    Le seul manuel fran&ccedil;ais disponible au Qu&eacute;bec pour l\'entretien d\'une habitation.\r\n\r\nAvant d\'acheter, faites inspecter', 'Service dâ€™inspection prÃ©-achat de bÃ¢timents rÃ©sidentiels et commercials.;', 'Service dâ€™inspection prÃ©-achat de bÃ¢timents rÃ©sidentiels et commercials.;', '418-832-9090', '', 'Commercant', 'comspec', '4', '5%', '10%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(10, 1, 5, 'Inspection DMI', 'inspection-dmi-logo.png', 'Quebec', 'danny@inspectiondmi.com', 'www.inspectiondmi.com', 'Vous investissez des sommes importantes en immobilier alors nous investissons toute notre expertise dans le but de protÃ©ger vos intÃ©rÃªts.  Afin de maximiser l\'efficacitÃ© des inspections, nous utilisons des outils technologiques.  Il est d\'ailleurs possible de retenir les services d\'un inspecteur possÃ©dant la certification de `` Thermographe en investigation du bÃ¢timent `` qui peut dÃ©tecter plusieurs anomalies Ã  l\'aide d\'une camÃ©ra thermique infrarouge. La satisfaction de notre clientÃ¨le est primordiale, c\'est pourquoi nous sommes la seule entreprise du genre qui garantit votre satisfaction entiÃ¨re lors de l\'inspection, sinon, vous ne payez rien, point final. Contactez-nous pour une soumission rapide et gratuite. Notez que nous sommes dÃ©tenteurs des assurances responsabilitÃ©s professionnels, erreur et omission en plus d\'Ãªtre membres de l\'association des inspecteurs en bÃ¢timents du QuÃ©bec. ', 'Vous investissez des sommes importantes en immobilier alors nous investissons toute notre expertise dans le but de protÃ©ger vos intÃ©rÃªts.  Afin de maximiser l\'efficacitÃ© des inspections, nous utilisons des outils technologiques.  Il est d\'ailleurs possible de retenir les services d\'un inspecteur possÃ©dant la certification de `` Thermographe en investigation du bÃ¢timent `` qui peut dÃ©tecter plusieurs anomalies Ã  l\'aide d\'une camÃ©ra thermique infrarouge. La satisfaction de notre clientÃ¨le est primordiale, c\'est pourquoi nous sommes la seule entreprise du genre qui garantit votre satisfaction entiÃ¨re lors de l\'inspection, sinon, vous ne payez rien, point final. Contactez-nous pour une soumission rapide et gratuite. Notez que nous sommes dÃ©tenteurs des assurances responsabilitÃ©s professionnels, erreur et omission en plus d\'Ãªtre membres de l\'association des inspecteurs en bÃ¢timents du QuÃ©bec. ', 'Inspection prÃ© achat;inspection prÃ© vente;inspection prÃ©ventive pour maison;copropriÃ©tÃ© ou immeuble Ã  revenu;', 'Inspection prÃ© achat;inspection prÃ© vente;inspection prÃ©ventive pour maison;copropriÃ©tÃ© ou immeuble Ã  revenu;', '', '', 'Commercant', 'inspection-dmi', '4', '5%', '10%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(12, 2, 3, 'Jean Tachereau Arpenteur-G&eacute;om&egrave;tre', 'jean-tachereau-logo.png', 'Quebec', 'info@jtarpenteur.com', 'www.jtarpenteur.com', 'Depuis plus de vingt ans, lâ€™Ã©quipe de Jean Taschereau Arpenteur-GÃ©omÃ¨tre amÃ©liore en continu ses techniques de travail et procÃ©dÃ©s dâ€™opÃ©rations afin de livrer RAPIDEMENT un travail de QUALITÃ‰ en conformitÃ© avec les normes pertinentes Ã€ JOUR.  Nos arpenteurs se font un devoir de CONSEILLER nos clients sur lâ€™OPTIMISATION de leurs terrains et bÃ¢timents, que ce soit pour des projets RÃ‰SIDENTIELS, COMMERCIAUX, INDUSTRIELS ou INSTITUTIONNELS. Notre Ã©quipe multidisciplinaire vise en permanence les mÃªmes objectifs : La QUALITÃ‰ TOTALE et la SATISFACTION de nos clients. <br/><br/> Faire confiance Ã  Jean Taschereau Arpenteur-GÃ©omÃ¨tre, câ€™est vous assurer du MEILLEUR SERVICE de lâ€™industrie par des professionnels attentionnÃ©s. Appelez-nous, un humain vous rÃ©pondra et sâ€™occupera de vous!      Notre mission  Â« Innover continuellement dans nos mÃ©thodes de travail afin dâ€™assurer une expÃ©rience irrÃ©prochable Ã  nos clients, et maintenir notre position de leader en Ã©tant Ã  lâ€™avant-garde dans lâ€™ensemble des services, des techniques et des technologies dâ€™arpentage. Â»', 'Depuis plus de vingt ans, lâ€™Ã©quipe de Jean Taschereau Arpenteur-GÃ©omÃ¨tre amÃ©liore en continu ses techniques de travail et procÃ©dÃ©s dâ€™opÃ©rations afin de livrer RAPIDEMENT un travail de QUALITÃ‰ en conformitÃ© avec les normes pertinentes Ã€ JOUR.  Nos arpenteurs se font un devoir de CONSEILLER nos clients sur lâ€™OPTIMISATION de leurs terrains et bÃ¢timents, que ce soit pour des projets RÃ‰SIDENTIELS, COMMERCIAUX, INDUSTRIELS ou INSTITUTIONNELS. Notre Ã©quipe multidisciplinaire vise en permanence les mÃªmes objectifs : La QUALITÃ‰ TOTALE et la SATISFACTION de nos clients. <br/><br/> Faire confiance Ã  Jean Taschereau Arpenteur-GÃ©omÃ¨tre, câ€™est vous assurer du MEILLEUR SERVICE de lâ€™industrie par des professionnels attentionnÃ©s. Appelez-nous, un humain vous rÃ©pondra et sâ€™occupera de vous!      Notre mission  Â« Innover continuellement dans nos mÃ©thodes de travail afin dâ€™assurer une expÃ©rience irrÃ©prochable Ã  nos clients, et maintenir notre position de leader en Ã©tant Ã  lâ€™avant-garde dans lâ€™ensemble des services, des techniques et des technologies dâ€™arpentage. Â»', 'Bornage;Piquetage;Certification des espaces locatifs;Certificat de localisation;CopropriÃ©tÃ© divise (condos);Description technique;Implantation;OpÃ©rations cadastrales;Projet de dÃ©veloppement domiciliaire ou commercial;', 'Bornage;Piquetage;Certification des espaces locatifs;Certificat de localisation;CopropriÃ©tÃ© divise (condos);Description technique;Implantation;OpÃ©rations cadastrales;Projet de dÃ©veloppement domiciliaire ou commercial;', '418-111-2222', 'test', 'Commercant', 'jean-tachereau', '4', '5%*', '10%* <br/>*Applicables seulement sur les certificats de localisation', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(12, 1, 3, 'Jean Tachereau Arpenteur-G&eacute;om&egrave;tre', 'jean-tachereau-logo.png', 'Quebec', 'info@jtarpenteur.com', 'www.jtarpenteur.com', 'Depuis plus de vingt ans, lâ€™Ã©quipe de Jean Taschereau Arpenteur-GÃ©omÃ¨tre amÃ©liore en continu ses techniques de travail et procÃ©dÃ©s dâ€™opÃ©rations afin de livrer RAPIDEMENT un travail de QUALITÃ‰ en conformitÃ© avec les normes pertinentes Ã€ JOUR.  Nos arpenteurs se font un devoir de CONSEILLER nos clients sur lâ€™OPTIMISATION de leurs terrains et bÃ¢timents, que ce soit pour des projets RÃ‰SIDENTIELS, COMMERCIAUX, INDUSTRIELS ou INSTITUTIONNELS. Notre Ã©quipe multidisciplinaire vise en permanence les mÃªmes objectifs : La QUALITÃ‰ TOTALE et la SATISFACTION de nos clients. <br/><br/> Faire confiance Ã  Jean Taschereau Arpenteur-GÃ©omÃ¨tre, câ€™est vous assurer du MEILLEUR SERVICE de lâ€™industrie par des professionnels attentionnÃ©s. Appelez-nous, un humain vous rÃ©pondra et sâ€™occupera de vous!      Notre mission  Â« Innover continuellement dans nos mÃ©thodes de travail afin dâ€™assurer une expÃ©rience irrÃ©prochable Ã  nos clients, et maintenir notre position de leader en Ã©tant Ã  lâ€™avant-garde dans lâ€™ensemble des services, des techniques et des technologies dâ€™arpentage. Â»', 'Depuis plus de vingt ans, lâ€™Ã©quipe de Jean Taschereau Arpenteur-GÃ©omÃ¨tre amÃ©liore en continu ses techniques de travail et procÃ©dÃ©s dâ€™opÃ©rations afin de livrer RAPIDEMENT un travail de QUALITÃ‰ en conformitÃ© avec les normes pertinentes Ã€ JOUR.  Nos arpenteurs se font un devoir de CONSEILLER nos clients sur lâ€™OPTIMISATION de leurs terrains et bÃ¢timents, que ce soit pour des projets RÃ‰SIDENTIELS, COMMERCIAUX, INDUSTRIELS ou INSTITUTIONNELS. Notre Ã©quipe multidisciplinaire vise en permanence les mÃªmes objectifs : La QUALITÃ‰ TOTALE et la SATISFACTION de nos clients. <br/><br/> Faire confiance Ã  Jean Taschereau Arpenteur-GÃ©omÃ¨tre, câ€™est vous assurer du MEILLEUR SERVICE de lâ€™industrie par des professionnels attentionnÃ©s. Appelez-nous, un humain vous rÃ©pondra et sâ€™occupera de vous!      Notre mission  Â« Innover continuellement dans nos mÃ©thodes de travail afin dâ€™assurer une expÃ©rience irrÃ©prochable Ã  nos clients, et maintenir notre position de leader en Ã©tant Ã  lâ€™avant-garde dans lâ€™ensemble des services, des techniques et des technologies dâ€™arpentage. Â»', 'Bornage;Piquetage;Certification des espaces locatifs;Certificat de localisation;CopropriÃ©tÃ© divise (condos);Description technique;Implantation;OpÃ©rations cadastrales;Projet de dÃ©veloppement domiciliaire ou commercial;', 'Bornage;Piquetage;Certification des espaces locatifs;Certificat de localisation;CopropriÃ©tÃ© divise (condos);Description technique;Implantation;OpÃ©rations cadastrales;Projet de dÃ©veloppement domiciliaire ou commercial;', '418-111-2222', 'test', 'Commercant', 'jean-tachereau', '4', '5%*', '10%* <br/>*Applicables seulement sur les certificats de localisation', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(13, 2, 3, 'Groupe V.R.S.B.', 'groupe-vrsb-logo.png', 'Quebec', 'h.lefrancois@groupevrsb.com', 'www.groupevrsb.com', 'Le Groupe VRSB, implantÃ© en arpentage dans la rÃ©gion de QuÃ©bec depuis plus de 35 ans, est votre rÃ©fÃ©rence exactitude.  Pour la vente de votre propriÃ©tÃ©, nous produirons un certificat de localisation Ã  prix compÃ©titifs dans les dÃ©lais respectÃ©s, et ce, pour des bÃ¢timents rÃ©sidentiels, Ã  logements, de copropriÃ©tÃ©s ou commerciaux.  De plus, le Groupe VRSB offre les services dâ€™arpentage suivants :	', 'Le Groupe VRSB, implantÃ© en arpentage dans la rÃ©gion de QuÃ©bec depuis plus de 35 ans, est votre rÃ©fÃ©rence exactitude.  Pour la vente de votre propriÃ©tÃ©, nous produirons un certificat de localisation Ã  prix compÃ©titifs dans les dÃ©lais respectÃ©s, et ce, pour des bÃ¢timents rÃ©sidentiels, Ã  logements, de copropriÃ©tÃ©s ou commerciaux.  De plus, le Groupe VRSB offre les services dâ€™arpentage suivants :	', 'Certificat de localisation;Plan projet dâ€™implantation;Certificat dâ€™implantation;Piquetage;Projet de lotissement;OpÃ©ration cadastrale;Bornage;Plan topographique;ModÃ©lisation 3D;PhotogrammÃ©trie;Arpentage de construction;Service de drone;', 'Certificat de localisation;Plan projet dâ€™implantation;Certificat dâ€™implantation;Piquetage;Projet de lotissement;OpÃ©ration cadastrale;Bornage;Plan topographique;ModÃ©lisation 3D;PhotogrammÃ©trie;Arpentage de construction;Service de drone;', '418-628-5544', 'homme-instrument.jpg;LPhilippe-et-Equipement.jpg;LPhilippe-MaisonCloc.jpg;', 'Commercant', 'groupe-vrsb', '4', '5%*', '10%* <br/> *Applicables seulement sur les certificats de localisation', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(14, 2, 3, 'Arpentage ArpEC', 'arpentage-arpec-logo.png', 'Quebec', 'info@arpec.ca', 'www.arpec.ca', 'Arpentage ArpEC est un bureau d\'arpenteur-gÃ©omÃ¨tre situÃ© Ã  QuÃ©bec offrant la gamme complÃ¨te des services d\'arpentage dont la confection de certificats de localisation.    Notre force, lorsque vous communiquez avec nous, vous parlez directement Ã  lâ€™arpenteur-gÃ©omÃ¨tre qui est en charge de votre dossier, sans intermÃ©diaire.   Vos dÃ©lais sont les nÃ´tres et nous mettons tout en place afin de vous offrir le meilleur service possible.  Arpentage ArpEC, au-delÃ  des limites.', 'Arpentage ArpEC est un bureau d\'arpenteur-gÃ©omÃ¨tre situÃ© Ã  QuÃ©bec offrant la gamme complÃ¨te des services d\'arpentage dont la confection de certificats de localisation.    Notre force, lorsque vous communiquez avec nous, vous parlez directement Ã  lâ€™arpenteur-gÃ©omÃ¨tre qui est en charge de votre dossier, sans intermÃ©diaire.   Vos dÃ©lais sont les nÃ´tres et nous mettons tout en place afin de vous offrir le meilleur service possible.  Arpentage ArpEC, au-delÃ  des limites.', 'Certificat de localisation;Certificat de localisation de condo (partie privative);Plan projet d\'implantation;OpÃ©ration cadastrale (morcellement);Piquetage;Bornage;', 'Certificat de localisation;Certificat de localisation de condo (partie privative);Plan projet d\'implantation;OpÃ©ration cadastrale (morcellement);Piquetage;Bornage;', '418-527-0005', 'photo-arpec-1.jpg;photo-arpec-2.jpg;photo-arpec-3.jpg;', 'Commercant', 'arpec', '4', '5%*', '10%* <br/> *Applicables seulement sur les certificats de localisation', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(15, 2, 7, 'Empire RLT', 'empire-rlt-logo.png', 'Quebec', 'empirerlt@yahoo.ca', 'www.empirerlt.com', 'Empire RLT est une compagnie de construction situÃ© Ã  QuÃ©bec ayant comme objectif la pleine satisfaction de sa clientÃ¨le. La qualitÃ© de ses services, sa courtoisie, sa compÃ©tence et son service Ã  la clientÃ¨le feront de votre choix de faire affaire avec nous, le meilleur qui soit!', 'Empire RLT est une compagnie de construction situÃ© Ã  QuÃ©bec ayant comme objectif la pleine satisfaction de sa clientÃ¨le. La qualitÃ© de ses services, sa courtoisie, sa compÃ©tence et son service Ã  la clientÃ¨le feront de votre choix de faire affaire avec nous, le meilleur qui soit!', 'Construction neuve;rÃ©novation;gestion de chantiers;', 'Construction neuve;rÃ©novation;gestion de chantiers;', '418-111-2222', 'photo-rtl1.jpg;photo-rtl2.jpg;photo-rtl3.jpg;', 'Commercant', 'empire-rlt', '4', '5% sur main-d\'Å“uvre', '10% sur main-d\'Å“uvre', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(16, 2, 9, 'Empire RLT', 'empire-rlt-logo.png', 'Quebec', 'empirerlt@yahoo.ca', 'www.empirerlt.com', 'Empire RLT est une compagnie de construction situÃ© Ã  QuÃ©bec ayant comme objectif la pleine satisfaction de sa clientÃ¨le. La qualitÃ© de ses services, sa courtoisie, sa compÃ©tence et son service Ã  la clientÃ¨le feront de votre choix de faire affaire avec nous, le meilleur qui soit!', 'Empire RLT est une compagnie de construction situÃ© Ã  QuÃ©bec ayant comme objectif la pleine satisfaction de sa clientÃ¨le. La qualitÃ© de ses services, sa courtoisie, sa compÃ©tence et son service Ã  la clientÃ¨le feront de votre choix de faire affaire avec nous, le meilleur qui soit!', 'Construction neuve;rÃ©novation;gestion de chantiers;', 'Construction neuve;rÃ©novation;gestion de chantiers;', '(418) 111-2222', 'photo-rtl1.jpg;photo-rtl2.jpg;photo-rtl3.jpg;', 'Commercant', 'empire-rlt', '4', '5% sur main-d\'Å“uvre', '10% sur main-d\'Å“uvre', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(17, 2, 9, 'R&eacute;novation Moisan Demers', 'renovation-moisan-demers-logo.png', 'Quebec', 'CLIENTELE@MOISANDEMERS.COM', 'WWW.MOISANDEMERS.COM', 'RÃ‰NOVATION MOISAN DEMERS est un entrepreneur gÃ©nÃ©ral spÃ©cialisÃ© dans la rÃ©novation rÃ©sidentielle dâ€™intÃ©rieur depuis 1997.  Sous lâ€™Ã©quipe dâ€™experts de RÃ‰VOVATION MOISAN DEMERS, lâ€™exÃ©cution de votre projet se fait toujours selon les plus hauts standards de qualitÃ©, et ce, avec rigueur et professionnalisme.  Notre rÃ©putation sâ€™est construite au fil des annÃ©es de par une considÃ©ration indiscutable de notre clientÃ¨le, des rÃ©sultats au-delÃ  des attentes et le respect des Ã©chÃ©anciers.  De petites ou de grandes envergures, sachez que votre projet est aussi le nÃ´tre. Nous sommes la clÃ© du succÃ¨s de votre rÃªve.   RÃ‰NOVATION MOISAN DEMERS, votre partenaire de confiance!', 'RÃ‰NOVATION MOISAN DEMERS est un entrepreneur gÃ©nÃ©ral spÃ©cialisÃ© dans la rÃ©novation rÃ©sidentielle dâ€™intÃ©rieur depuis 1997.  Sous lâ€™Ã©quipe dâ€™experts de RÃ‰VOVATION MOISAN DEMERS, lâ€™exÃ©cution de votre projet se fait toujours selon les plus hauts standards de qualitÃ©, et ce, avec rigueur et professionnalisme.  Notre rÃ©putation sâ€™est construite au fil des annÃ©es de par une considÃ©ration indiscutable de notre clientÃ¨le, des rÃ©sultats au-delÃ  des attentes et le respect des Ã©chÃ©anciers.  De petites ou de grandes envergures, sachez que votre projet est aussi le nÃ´tre. Nous sommes la clÃ© du succÃ¨s de votre rÃªve.   RÃ‰NOVATION MOISAN DEMERS, votre partenaire de confiance!', 'Service dâ€™estimation gratuite; Gestion de projet; PossibilitÃ© de service 100% clÃ© en main; DÃ©molition et construction; MÃ©canique de bÃ¢timent (plomberie, ventilation, chauffage); Ã‰lectricitÃ©; PlÃ¢trage et peinture; Menuiserie de finition; Carrelage; Douche Ã  lâ€™italienne; Pose de bois franc et autres revÃªtements de sol; Escalier sur mesure; Et plusieurs autres services!;', 'Service dâ€™estimation gratuite; Gestion de projet; PossibilitÃ© de service 100% clÃ© en main; DÃ©molition et construction; MÃ©canique de bÃ¢timent (plomberie, ventilation, chauffage); Ã‰lectricitÃ©; PlÃ¢trage et peinture; Menuiserie de finition; Carrelage; Douche Ã  lâ€™italienne; Pose de bois franc et autres revÃªtements de sol; Escalier sur mesure; Et plusieurs autres services!;', '418-686-8000', 'photo-moisan-demers1.jpg;photo-moisan-demers2.jpg;photo-moisan-demers3.jpg;', 'Commercant', 'renovation-moisan-demers', '8', '5% sur main-dâ€™Å“uvre', '10% sur main-dâ€™Å“uvre', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(17, 1, 9, 'R&eacute;novation Moisan Demers', 'renovation-moisan-demers-logo.png', 'Quebec', 'CLIENTELE@MOISANDEMERS.COM', 'WWW.MOISANDEMERS.COM', 'RÃ‰NOVATION MOISAN DEMERS est un entrepreneur gÃ©nÃ©ral spÃ©cialisÃ© dans la rÃ©novation rÃ©sidentielle dâ€™intÃ©rieur depuis 1997.  Sous lâ€™Ã©quipe dâ€™experts de RÃ‰VOVATION MOISAN DEMERS, lâ€™exÃ©cution de votre projet se fait toujours selon les plus hauts standards de qualitÃ©, et ce, avec rigueur et professionnalisme.  Notre rÃ©putation sâ€™est construite au fil des annÃ©es de par une considÃ©ration indiscutable de notre clientÃ¨le, des rÃ©sultats au-delÃ  des attentes et le respect des Ã©chÃ©anciers.  De petites ou de grandes envergures, sachez que votre projet est aussi le nÃ´tre. Nous sommes la clÃ© du succÃ¨s de votre rÃªve.   RÃ‰NOVATION MOISAN DEMERS, votre partenaire de confiance!', 'RÃ‰NOVATION MOISAN DEMERS est un entrepreneur gÃ©nÃ©ral spÃ©cialisÃ© dans la rÃ©novation rÃ©sidentielle dâ€™intÃ©rieur depuis 1997.  Sous lâ€™Ã©quipe dâ€™experts de RÃ‰VOVATION MOISAN DEMERS, lâ€™exÃ©cution de votre projet se fait toujours selon les plus hauts standards de qualitÃ©, et ce, avec rigueur et professionnalisme.  Notre rÃ©putation sâ€™est construite au fil des annÃ©es de par une considÃ©ration indiscutable de notre clientÃ¨le, des rÃ©sultats au-delÃ  des attentes et le respect des Ã©chÃ©anciers.  De petites ou de grandes envergures, sachez que votre projet est aussi le nÃ´tre. Nous sommes la clÃ© du succÃ¨s de votre rÃªve.   RÃ‰NOVATION MOISAN DEMERS, votre partenaire de confiance!', 'Service dâ€™estimation gratuite; Gestion de projet; PossibilitÃ© de service 100% clÃ© en main; DÃ©molition et construction; MÃ©canique de bÃ¢timent (plomberie, ventilation, chauffage); Ã‰lectricitÃ©; PlÃ¢trage et peinture; Menuiserie de finition; Carrelage; Douche Ã  lâ€™italienne; Pose de bois franc et autres revÃªtements de sol; Escalier sur mesure; Et plusieurs autres services!;', 'Service dâ€™estimation gratuite; Gestion de projet; PossibilitÃ© de service 100% clÃ© en main; DÃ©molition et construction; MÃ©canique de bÃ¢timent (plomberie, ventilation, chauffage); Ã‰lectricitÃ©; PlÃ¢trage et peinture; Menuiserie de finition; Carrelage; Douche Ã  lâ€™italienne; Pose de bois franc et autres revÃªtements de sol; Escalier sur mesure; Et plusieurs autres services!;', '418-686-8000', 'photo-moisan-demers1.jpg;photo-moisan-demers2.jpg;photo-moisan-demers3.jpg;', 'Commercant', 'renovation-moisan-demers', '12', '5% sur main-dâ€™Å“uvre', '10% sur main-dâ€™Å“uvre', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(18, 1, 10, 'G-Solutions Fissures', 'g-solutions-fissures-logo.png', 'Quebec', 'gsf6143346@hotmail.com', 'www.g-solutionsfissures.com', 'G-Solutions Fissures est fier de vous offrir son expertise acquise dans le milieu industriel pour la rÃ©paration de bÃ©ton. SpÃ©cialisÃ© en injection et expert dans les rÃ©parations de fissures de bÃ©ton structural. GSF a acquis son expÃ©rience en rÃ©parant des barrages pour Hydro-QuÃ©bec, des Viaducs pour le MinistÃ¨re des Transports ainsi que de lâ€™injection dans les bassins dâ€™eaux potables pour les municipalitÃ©s. Nous appliquons de faÃ§on minutieuse cette mÃªme technique qui est approuvÃ©e par les ingÃ©nieurs pour la rÃ©paration de fissures de fondation au niveau rÃ©sidentiel. <br/> <br/> G-Solutions Fissures a obtenu une note globale de 97% de satisfaction auprÃ¨s de la clientÃ¨le du CAA-Habitation. Nous offrons donc, des techniques et produits utilisÃ©s depuis plusieurs annÃ©es dans le milieu industriel et commercial. Au besoin et selon la fissure, nous avons trois types dâ€™injection : Injection dâ€™Ã©poxy, injection de coulis cimentaire et lâ€™injection de polyurÃ©thane. Le rÃ©sultat est durable et instantanÃ©. La spÃ©cialitÃ© se concentre principalement sur la rÃ©paration des fissures de lâ€™intÃ©rieur (SANS EXCAVATION) ou peut aussi Ãªtre rÃ©solue de lâ€™extÃ©rieur. (Avec Excavation).De plus, toutes rÃ©parations incluent une garantie transfÃ©rable. Nâ€™HÃ©sitez pas Ã  faire appel Ã  G-Solutions Fissures.', 'G-Solutions Fissures est fier de vous offrir son expertise acquise dans le milieu industriel pour la rÃ©paration de bÃ©ton. SpÃ©cialisÃ© en injection et expert dans les rÃ©parations de fissures de bÃ©ton structural. GSF a acquis son expÃ©rience en rÃ©parant des barrages pour Hydro-QuÃ©bec, des Viaducs pour le MinistÃ¨re des Transports ainsi que de lâ€™injection dans les bassins dâ€™eaux potables pour les municipalitÃ©s. Nous appliquons de faÃ§on minutieuse cette mÃªme technique qui est approuvÃ©e par les ingÃ©nieurs pour la rÃ©paration de fissures de fondation au niveau rÃ©sidentiel. <br/> <br/> G-Solutions Fissures a obtenu une note globale de 97% de satisfaction auprÃ¨s de la clientÃ¨le du CAA-Habitation. Nous offrons donc, des techniques et produits utilisÃ©s depuis plusieurs annÃ©es dans le milieu industriel et commercial. Au besoin et selon la fissure, nous avons trois types dâ€™injection : Injection dâ€™Ã©poxy, injection de coulis cimentaire et lâ€™injection de polyurÃ©thane. Le rÃ©sultat est durable et instantanÃ©. La spÃ©cialitÃ© se concentre principalement sur la rÃ©paration des fissures de lâ€™intÃ©rieur (SANS EXCAVATION) ou peut aussi Ãªtre rÃ©solue de lâ€™extÃ©rieur. (Avec Excavation).De plus, toutes rÃ©parations incluent une garantie transfÃ©rable. Nâ€™HÃ©sitez pas Ã  faire appel Ã  G-Solutions Fissures.', 'RÃ©paration de fissure de fondation; infiltration dâ€™eau; Ã‰tanchÃ©itÃ©; RÃ©paration de solage; Excavation; injection de polyurÃ©thane; injection d Ã©poxy; injection de coulis cimentaire; rÃ©paration de piscine creusÃ©; installation de membrane hydrofuge.; ', 'RÃ©paration de fissure de fondation; infiltration dâ€™eau; Ã‰tanchÃ©itÃ©; RÃ©paration de solage; Excavation; injection de polyurÃ©thane; injection d Ã©poxy; injection de coulis cimentaire; rÃ©paration de piscine creusÃ©; installation de membrane hydrofuge.; ', '418-614-3346', 'Photo GSFissures.png;Photo 2 GSFissures.png;', 'Commercant', 'g-solutions-fissures', '4', '5%, maximum de 250$ de rabais par adresse', 'Ã‰valuation  GRATUITE en plus dâ€™un  un Rabais de 10%. Jusquâ€™Ã  un maximum de 500$ de rabais par adresse', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00');
INSERT INTO `t_commercants` (`id`, `CityID`, `CategoryID`, `Name`, `Logo`, `CityName`, `Mail`, `SiteWeb`, `TexteFR`, `TexteEN`, `ServiceFR`, `ServiceEN`, `Phone`, `Realisations`, `RedirectTo`, `UrlName`, `Span`, `PromoVisitor`, `PromoMember`, `CertifiedLogo`, `updated_at`, `created_at`) VALUES
(18, 2, 10, 'G-Solutions Fissures', 'g-solutions-fissures-logo.png', 'Quebec', 'gsf6143346@hotmail.com', 'www.g-solutionsfissures.com', 'G-Solutions Fissures est fier de vous offrir son expertise acquise dans le milieu industriel pour la rÃ©paration de bÃ©ton. SpÃ©cialisÃ© en injection et expert dans les rÃ©parations de fissures de bÃ©ton structural. GSF a acquis son expÃ©rience en rÃ©parant des barrages pour Hydro-QuÃ©bec, des Viaducs pour le MinistÃ¨re des Transports ainsi que de lâ€™injection dans les bassins dâ€™eaux potables pour les municipalitÃ©s. Nous appliquons de faÃ§on minutieuse cette mÃªme technique qui est approuvÃ©e par les ingÃ©nieurs pour la rÃ©paration de fissures de fondation au niveau rÃ©sidentiel. <br/> <br/> G-Solutions Fissures a obtenu une note globale de 97% de satisfaction auprÃ¨s de la clientÃ¨le du CAA-Habitation. Nous offrons donc, des techniques et produits utilisÃ©s depuis plusieurs annÃ©es dans le milieu industriel et commercial. Au besoin et selon la fissure, nous avons trois types dâ€™injection : Injection dâ€™Ã©poxy, injection de coulis cimentaire et lâ€™injection de polyurÃ©thane. Le rÃ©sultat est durable et instantanÃ©. La spÃ©cialitÃ© se concentre principalement sur la rÃ©paration des fissures de lâ€™intÃ©rieur (SANS EXCAVATION) ou peut aussi Ãªtre rÃ©solue de lâ€™extÃ©rieur. (Avec Excavation).De plus, toutes rÃ©parations incluent une garantie transfÃ©rable. Nâ€™HÃ©sitez pas Ã  faire appel Ã  G-Solutions Fissures.', 'G-Solutions Fissures est fier de vous offrir son expertise acquise dans le milieu industriel pour la rÃ©paration de bÃ©ton. SpÃ©cialisÃ© en injection et expert dans les rÃ©parations de fissures de bÃ©ton structural. GSF a acquis son expÃ©rience en rÃ©parant des barrages pour Hydro-QuÃ©bec, des Viaducs pour le MinistÃ¨re des Transports ainsi que de lâ€™injection dans les bassins dâ€™eaux potables pour les municipalitÃ©s. Nous appliquons de faÃ§on minutieuse cette mÃªme technique qui est approuvÃ©e par les ingÃ©nieurs pour la rÃ©paration de fissures de fondation au niveau rÃ©sidentiel. <br/> <br/> G-Solutions Fissures a obtenu une note globale de 97% de satisfaction auprÃ¨s de la clientÃ¨le du CAA-Habitation. Nous offrons donc, des techniques et produits utilisÃ©s depuis plusieurs annÃ©es dans le milieu industriel et commercial. Au besoin et selon la fissure, nous avons trois types dâ€™injection : Injection dâ€™Ã©poxy, injection de coulis cimentaire et lâ€™injection de polyurÃ©thane. Le rÃ©sultat est durable et instantanÃ©. La spÃ©cialitÃ© se concentre principalement sur la rÃ©paration des fissures de lâ€™intÃ©rieur (SANS EXCAVATION) ou peut aussi Ãªtre rÃ©solue de lâ€™extÃ©rieur. (Avec Excavation).De plus, toutes rÃ©parations incluent une garantie transfÃ©rable. Nâ€™HÃ©sitez pas Ã  faire appel Ã  G-Solutions Fissures.', 'RÃ©paration de fissure de fondation; infiltration dâ€™eau; Ã‰tanchÃ©itÃ©; RÃ©paration de solage; Excavation; injection de polyurÃ©thane; injection d Ã©poxy; injection de coulis cimentaire; rÃ©paration de piscine creusÃ©; installation de membrane hydrofuge.; ', 'RÃ©paration de fissure de fondation; infiltration dâ€™eau; Ã‰tanchÃ©itÃ©; RÃ©paration de solage; Excavation; injection de polyurÃ©thane; injection d Ã©poxy; injection de coulis cimentaire; rÃ©paration de piscine creusÃ©; installation de membrane hydrofuge.; ', '418-614-3346', 'Photo GSFissures.png;Photo 2 GSFissures.png;', 'Commercant', 'g-solutions-fissures', '4', '5%, maximum de 250$ de rabais par adresse', 'Ã‰valuation  GRATUITE en plus dâ€™un  un Rabais de 10%. Jusquâ€™Ã  un maximum de 500$ de rabais par adresse', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(19, 1, 11, 'Expert Drainage Qu&eacute;bec inc.', 'expert-drainage-quebec-logo.png', 'Quebec', 'edq@expertdrainagequebec.ca', 'www.expertdrainagequebec.com', 'Expert Drainage QuÃ©bec est une entreprise qui a vos intÃ©rÃªts Ã  cÅ“ur dans le domaine du drainage de fondation et de la boue ferreuse (ocre).  Nos travaux exÃ©cutÃ©s ont une garantie 25 ans et transfÃ©rable.  Nous sommes trÃ¨s actifs dans le processus dâ€™achat et de vente de maison et Ã©galement dans le domaine de lâ€™infiltration dâ€™eau grÃ¢ce Ã  notre grande expertise dans ce domaine.  Nous sommes les Experts du drainage Ã  QuÃ©bec. ', 'Welcome', 'Expertise par mini camÃ©ra;Expertise par excavation;RÃ©paration de fissure(s);Drain de fondation, Ã©goÃ»ts et aqueduc;', 'Expertise par mini camÃ©ra;Expertise par excavation;RÃ©paration de fissure(s);Drain de fondation, Ã©goÃ»ts et aqueduc;', '418-660-1060', 'EDQ.jpg;EDQ1.jpg;EDQ2.jpg;logo-CMMTQ.jpg;', 'Commercant', 'expert-drainage-quebec', '4', '5%*', '10%* <br/> *Sur rÃ©paration dâ€™une fissure', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(19, 2, 11, 'Expert Drainage Qu&eacute;bec inc.', 'expert-drainage-quebec-logo.png', 'Quebec', 'edq@expertdrainagequebec.ca', 'www.expertdrainagequebec.com', 'Expert Drainage QuÃ©bec est une entreprise qui a vos intÃ©rÃªts Ã  cÅ“ur dans le domaine du drainage de fondation et de la boue ferreuse (ocre).  Nos travaux exÃ©cutÃ©s ont une garantie 25 ans et transfÃ©rable.  Nous sommes trÃ¨s actifs dans le processus dâ€™achat et de vente de maison et Ã©galement dans le domaine de lâ€™infiltration dâ€™eau grÃ¢ce Ã  notre grande expertise dans ce domaine.  Nous sommes les Experts du drainage Ã  QuÃ©bec. ', 'Welcome', 'Expertise par mini camÃ©ra;Expertise par excavation;RÃ©paration de fissure(s);Drain de fondation, Ã©goÃ»ts et aqueduc;', 'Expertise par mini camÃ©ra;Expertise par excavation;RÃ©paration de fissure(s);Drain de fondation, Ã©goÃ»ts et aqueduc;', '418-660-1060', 'EDQ.jpg;EDQ1.jpg;EDQ2.jpg;logo-CMMTQ.jpg;', 'Commercant', 'expert-drainage-quebec', '4', '5%*', '10%* <br/> *Sur rÃ©paration dâ€™une fissure', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(1, 1, 1, 'financement', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(1, 2, 1, 'financement', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(20, 1, 5, 'Inspection AP', 'inspection-ap-logo.png', 'Qu&eacute;bec', 'info@inspectionap.ca', 'www.inspectionap.ca', 'Inspection AP & associÃ©s est une firme dâ€™inspection en bÃ¢timent qui se spÃ©cialise dans lâ€™inspection de bÃ¢timent prÃ©-achat, prÃ©-vente et prÃ©-livraison, principalement rÃ©sidentielle. <br/> <br/> Notre but est de vous offrir une inspection de bÃ¢timent adaptÃ©e Ã  vos besoins, pour vous permettre de prendre une dÃ©cision Ã©clairÃ©e sur lâ€™achat de votre future propriÃ©tÃ©. <br/> <br/>  Fonctionnant selon les normes nationales et dÃ©tenteurs dâ€™une assurance erreur est omission, nous vous fournirons une inspection qui rÃ©pondra Ã  vos attentes et un rapport dÃ©taillÃ©, avec photo, en moins de 48 heures ainsi quâ€™un service aprÃ¨s inspection. <br/> <br/>  Faites affaire avec un inspecteur en bÃ¢timent et obtenez la tranquillitÃ© dâ€™esprit ! <br/>  Â·         Soyez assurer dâ€™avoir une inspection dÃ©taillÃ©e de lâ€™Ã©tat de la propriÃ©tÃ©  <br/> Â·         Ã‰viter les mauvaises surprises qui affectent grandement la valeur et la qualitÃ© dâ€™une propriÃ©tÃ©  <br/> Â·         Ã‰viter les moisissures et les infiltrations dâ€™eau dÃ©tectable lors de lâ€™inspection  <br/> Â·         DÃ©terminer les travaux futur pour apporter des correctifs au bÃ¢timent  <br/> Â·         Prenez la meilleur des dÃ©cisions avec le maximum de connaissance de lâ€™Ã©tat de la propriÃ©tÃ©\r\n<br/><br/>\r\n\r\nAussi, nous sommes certifiÃ©s par le programme du\r\n \r\n\r\nservice de relogement des Forces armÃ©es canadiennes.\r\n', 'Inspection AP & associÃ©s est une firme dâ€™inspection en bÃ¢timent qui se spÃ©cialise dans lâ€™inspection de bÃ¢timent prÃ©-achat, prÃ©-vente et prÃ©-livraison, principalement rÃ©sidentielle. <br/> <br/> Notre but est de vous offrir une inspection de bÃ¢timent adaptÃ©e Ã  vos besoins, pour vous permettre de prendre une dÃ©cision Ã©clairÃ©e sur lâ€™achat de votre future propriÃ©tÃ©. <br/> <br/>  Fonctionnant selon les normes nationales et dÃ©tenteurs dâ€™une assurance erreur est omission, nous vous fournirons une inspection qui rÃ©pondra Ã  vos attentes et un rapport dÃ©taillÃ©, avec photo, en moins de 48 heures ainsi quâ€™un service aprÃ¨s inspection. <br/> <br/>  Faites affaire avec un inspecteur en bÃ¢timent et obtenez la tranquillitÃ© dâ€™esprit ! <br/>  Â·         Soyez assurer dâ€™avoir une inspection dÃ©taillÃ©e de lâ€™Ã©tat de la propriÃ©tÃ©  <br/> Â·         Ã‰viter les mauvaises surprises qui affectent grandement la valeur et la qualitÃ© dâ€™une propriÃ©tÃ©  <br/> Â·         Ã‰viter les moisissures et les infiltrations dâ€™eau dÃ©tectable lors de lâ€™inspection  <br/> Â·         DÃ©terminer les travaux futur pour apporter des correctifs au bÃ¢timent  <br/> Â·         Prenez la meilleur des dÃ©cisions avec le maximum de connaissance de lâ€™Ã©tat de la propriÃ©tÃ©\r\n<br/><br/>\r\n\r\nAussi, nous sommes certifiÃ©s par le programme du\r\n \r\n\r\nservice de relogement des Forces armÃ©es canadiennes.\r\n', 'Inspection prÃ©-achat;Inspection prÃ©-livraison;Thermographie;Service-conseil;Photos aÃ©riennes avec drone professionnel;Rapport remis en moins de 48 heures;', 'Inspection prÃ©-achat;Inspection prÃ©-livraison;Thermographie;Service-conseil;Photos aÃ©riennes avec drone professionnel;Rapport remis en moins de 48 heures;', '418 843-0727', 'photo-inspection-ap1.jpg;photo-inspection-ap2.jpg;photo-inspection-ap3.jpg;', 'Commercant', 'inspection-ap', '4', '5%*', '10%* <br/> *Applicable sur la facture.', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(20, 2, 5, 'Inspection AP', 'inspection-ap-logo.png', 'Qu&eacute;bec', 'info@inspectionap.ca', 'www.inspectionap.ca', 'Inspection AP & associÃ©s est une firme dâ€™inspection en bÃ¢timent qui se spÃ©cialise dans lâ€™inspection de bÃ¢timent prÃ©-achat, prÃ©-vente et prÃ©-livraison, principalement rÃ©sidentielle. <br/> <br/> Notre but est de vous offrir une inspection de bÃ¢timent adaptÃ©e Ã  vos besoins, pour vous permettre de prendre une dÃ©cision Ã©clairÃ©e sur lâ€™achat de votre future propriÃ©tÃ©. <br/> <br/>  Fonctionnant selon les normes nationales et dÃ©tenteurs dâ€™une assurance erreur est omission, nous vous fournirons une inspection qui rÃ©pondra Ã  vos attentes et un rapport dÃ©taillÃ©, avec photo, en moins de 48 heures ainsi quâ€™un service aprÃ¨s inspection. <br/> <br/>  Faites affaire avec un inspecteur en bÃ¢timent et obtenez la tranquillitÃ© dâ€™esprit ! <br/>  Â·         Soyez assurer dâ€™avoir une inspection dÃ©taillÃ©e de lâ€™Ã©tat de la propriÃ©tÃ©  <br/> Â·         Ã‰viter les mauvaises surprises qui affectent grandement la valeur et la qualitÃ© dâ€™une propriÃ©tÃ©  <br/> Â·         Ã‰viter les moisissures et les infiltrations dâ€™eau dÃ©tectable lors de lâ€™inspection  <br/> Â·         DÃ©terminer les travaux futur pour apporter des correctifs au bÃ¢timent  <br/> Â·         Prenez la meilleur des dÃ©cisions avec le maximum de connaissance de lâ€™Ã©tat de la propriÃ©tÃ©\r\n<br/><br/>\r\n\r\nAussi, nous sommes certifiÃ©s par le programme du\r\n \r\n\r\nservice de relogement des Forces armÃ©es canadiennes.\r\n', 'Inspection AP & associÃ©s est une firme dâ€™inspection en bÃ¢timent qui se spÃ©cialise dans lâ€™inspection de bÃ¢timent prÃ©-achat, prÃ©-vente et prÃ©-livraison, principalement rÃ©sidentielle. <br/> <br/> Notre but est de vous offrir une inspection de bÃ¢timent adaptÃ©e Ã  vos besoins, pour vous permettre de prendre une dÃ©cision Ã©clairÃ©e sur lâ€™achat de votre future propriÃ©tÃ©. <br/> <br/>  Fonctionnant selon les normes nationales et dÃ©tenteurs dâ€™une assurance erreur est omission, nous vous fournirons une inspection qui rÃ©pondra Ã  vos attentes et un rapport dÃ©taillÃ©, avec photo, en moins de 48 heures ainsi quâ€™un service aprÃ¨s inspection. <br/> <br/>  Faites affaire avec un inspecteur en bÃ¢timent et obtenez la tranquillitÃ© dâ€™esprit ! <br/>  Â·         Soyez assurer dâ€™avoir une inspection dÃ©taillÃ©e de lâ€™Ã©tat de la propriÃ©tÃ©  <br/> Â·         Ã‰viter les mauvaises surprises qui affectent grandement la valeur et la qualitÃ© dâ€™une propriÃ©tÃ©  <br/> Â·         Ã‰viter les moisissures et les infiltrations dâ€™eau dÃ©tectable lors de lâ€™inspection  <br/> Â·         DÃ©terminer les travaux futur pour apporter des correctifs au bÃ¢timent  <br/> Â·         Prenez la meilleur des dÃ©cisions avec le maximum de connaissance de lâ€™Ã©tat de la propriÃ©tÃ©\r\n<br/><br/>\r\n\r\nAussi, nous sommes certifiÃ©s par le programme du\r\n \r\n\r\nservice de relogement des Forces armÃ©es canadiennes.\r\n', 'Inspection prÃ©-achat;Inspection prÃ©-livraison;Thermographie;Service-conseil;Photos aÃ©riennes avec drone professionnel;Rapport remis en moins de 48 heures;', 'Inspection prÃ©-achat;Inspection prÃ©-livraison;Thermographie;Service-conseil;Photos aÃ©riennes avec drone professionnel;Rapport remis en moins de 48 heures;', '418 843-0727', 'photo-inspection-ap1.jpg;photo-inspection-ap2.jpg;photo-inspection-ap3.jpg;', 'Commercant', 'inspection-ap', '4', '5%*', '10%* <br/> *Applicable sur la facture.', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(21, 1, 5, 'Inspection Latulippe inc.', 'inspection-latulippe-logo.png', 'Qu&eacute;bec', 'info@inspectionlatulippe.com', 'www.inspectionlatulippe.com', 'Vous projetez dâ€™acheter ou de vendre une maison? <br/> <br/> Lâ€™achat dâ€™une maison est souvent le plus gros investissement dâ€™une vie. Plus quâ€™un investissement, votre future maison sera aussi lâ€™endroit oÃ¹ vous et votre famille devrez Ãªtre en sÃ©curitÃ©. Lâ€™inspection est devenu une Ã©tape nÃ©cessaire et trÃ¨s importante dans le processus de la prise de dÃ©cision de lâ€™achat de votre demeure. Reste maintenant Ã  trouver LE BON inspecteur. Michel Latulippe, Inspecteur de profession, a reÃ§u une formation reconnue et est diplÃ´mÃ© du collÃ¨ge dâ€™enseignement en immobilier (CEI) en inspection de bÃ¢timent, il compte aussi plusieurs annÃ©es dâ€™expÃ©rience en charpenterie-menuiserie de maisons neuves, anciennes ainsi que dans la rÃ©novation. Michel Latulippe est Ã©galement membre de lâ€™Association des inspecteurs en bÃ¢timents du QuÃ©bec ( AIBQ ) et possÃ¨de une assurance afin de mieux vous protÃ©ger. Sa formation continue sur tous les sujets entourant le bÃ¢timent ainsi que sa constante recherche de perfectionnement vous assure un service professionnel et Ã  la hauteur de vos attentes. Son intÃ©rÃªt premier la sÃ©curitÃ© du public. Un acheteur prudent et diligent doit donc sâ€™assurer au prÃ©alabe que son rÃªve ne tourne pas Ã  la catastrophe. <br/> <br/> On se dÃ©place partout de la Beauce Ã  QuÃ©bec sans frais additionnel. <br/> <br/> Chaque bÃ¢timent est inspectÃ© rigoureusement, le vendeur et lâ€™acheteur font une transaction rÃ©flÃ©chie et un choix intelligent. <br/> <br/>\r\nNous acceptons visa-mastercard et american express', 'Vous projetez dâ€™acheter ou de vendre une maison? <br/> <br/> Lâ€™achat dâ€™une maison est souvent le plus gros investissement dâ€™une vie. Plus quâ€™un investissement, votre future maison sera aussi lâ€™endroit oÃ¹ vous et votre famille devrez Ãªtre en sÃ©curitÃ©. Lâ€™inspection est devenu une Ã©tape nÃ©cessaire et trÃ¨s importante dans le processus de la prise de dÃ©cision de lâ€™achat de votre demeure. Reste maintenant Ã  trouver LE BON inspecteur. Michel Latulippe, Inspecteur de profession, a reÃ§u une formation reconnue et est diplÃ´mÃ© du collÃ¨ge dâ€™enseignement en immobilier (CEI) en inspection de bÃ¢timent, il compte aussi plusieurs annÃ©es dâ€™expÃ©rience en charpenterie-menuiserie de maisons neuves, anciennes ainsi que dans la rÃ©novation. Michel Latulippe est Ã©galement membre de lâ€™Association des inspecteurs en bÃ¢timents du QuÃ©bec ( AIBQ ) et possÃ¨de une assurance afin de mieux vous protÃ©ger. Sa formation continue sur tous les sujets entourant le bÃ¢timent ainsi que sa constante recherche de perfectionnement vous assure un service professionnel et Ã  la hauteur de vos attentes. Son intÃ©rÃªt premier la sÃ©curitÃ© du public. Un acheteur prudent et diligent doit donc sâ€™assurer au prÃ©alabe que son rÃªve ne tourne pas Ã  la catastrophe. <br/> <br/> On se dÃ©place partout de la Beauce Ã  QuÃ©bec sans frais additionnel. <br/> <br/> Chaque bÃ¢timent est inspectÃ© rigoureusement, le vendeur et lâ€™acheteur font une transaction rÃ©flÃ©chie et un choix intelligent. <br/> <br/>\r\nNous acceptons visa-mastercard et american express', 'PrÃ©achat;PrÃ©vente;PrÃ©ventive;prÃ©-rÃ©ception;Suivi de construction;', 'PrÃ©achat;PrÃ©vente;PrÃ©ventive;prÃ©-rÃ©ception;Suivi de construction;', '(418) 802-2537', '', 'Commercant', 'inspection-latulippe', '4', '5%', '10%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(22, 1, 11, 'Drainexc', 'drainexc-logo.png', 'Qu&eacute;bec', 'yan.marcotte@drainexc.com', 'www.drainexc.com', 'Une Ã©quipe compÃ©tente Ã  votre service! Drainexc est un chef de file dans le domaine du drainage et de lâ€™excavation en espace restreinte, vous avez un problÃ¨me, nous avons la solution. Avec câ€™est 13 annÃ©e dâ€™expÃ©riences, Drainexc a bÃ¢ti sa rÃ©putation en offrant des travaux de grande qualitÃ©, selon les plus rÃ©centes normes, et ce Ã  prix trÃ¨s compÃ©titif. Faire affaire avec nous, câ€™est sâ€™assurer dâ€™avoir des travaux bien fais, garantie et dans les dÃ©lais prescrit. Une relation de confiance est notre prioritÃ©.', 'Une Ã©quipe compÃ©tente Ã  votre service! Drainexc est un chef de file dans le domaine du drainage et de lâ€™excavation en espace restreinte, vous avez un problÃ¨me, nous avons la solution. Avec câ€™est 13 annÃ©e dâ€™expÃ©riences, Drainexc a bÃ¢ti sa rÃ©putation en offrant des travaux de grande qualitÃ©, selon les plus rÃ©centes normes, et ce Ã  prix trÃ¨s compÃ©titif. Faire affaire avec nous, câ€™est sâ€™assurer dâ€™avoir des travaux bien fais, garantie et dans les dÃ©lais prescrit. Une relation de confiance est notre prioritÃ©.', 'Expertise par camÃ©ra;Expertise par excavation;RÃ©fection de drain de fondation;RÃ©fection de service dâ€™Ã©gout et aqueduc;RÃ©paration de fissure;Excavation de tout genre (maison, agrandissement, espace restreint, â€¦);Fosse septique;AmÃ©nagement paysager;DÃ©contamination;DÃ©molition;DÃ©neigement;', 'Expertise par camÃ©ra;Expertise par excavation;RÃ©fection de drain de fondation;RÃ©fection de service dâ€™Ã©gout et aqueduc;RÃ©paration de fissure;Excavation de tout genre (maison, agrandissement, espace restreint, â€¦);Fosse septique;AmÃ©nagement paysager;DÃ©contamination;DÃ©molition;DÃ©neigement;', '418-682-3255', 'photo-drainexc-1.jpg;', 'Commercant', 'drainexc', '4', '5%*', '10%* <br /> *sur toute expertise (camera ou par excavation) ', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(22, 2, 11, 'Drainexc', 'drainexc-logo.png', 'Qu&eacute;bec', 'yan.marcotte@drainexc.com', 'www.drainexc.com', 'Une Ã©quipe compÃ©tente Ã  votre service! Drainexc est un chef de file dans le domaine du drainage et de lâ€™excavation en espace restreinte, vous avez un problÃ¨me, nous avons la solution. Avec câ€™est 13 annÃ©e dâ€™expÃ©riences, Drainexc a bÃ¢ti sa rÃ©putation en offrant des travaux de grande qualitÃ©, selon les plus rÃ©centes normes, et ce Ã  prix trÃ¨s compÃ©titif. Faire affaire avec nous, câ€™est sâ€™assurer dâ€™avoir des travaux bien fais, garantie et dans les dÃ©lais prescrit. Une relation de confiance est notre prioritÃ©.', 'Une Ã©quipe compÃ©tente Ã  votre service! Drainexc est un chef de file dans le domaine du drainage et de lâ€™excavation en espace restreinte, vous avez un problÃ¨me, nous avons la solution. Avec câ€™est 13 annÃ©e dâ€™expÃ©riences, Drainexc a bÃ¢ti sa rÃ©putation en offrant des travaux de grande qualitÃ©, selon les plus rÃ©centes normes, et ce Ã  prix trÃ¨s compÃ©titif. Faire affaire avec nous, câ€™est sâ€™assurer dâ€™avoir des travaux bien fais, garantie et dans les dÃ©lais prescrit. Une relation de confiance est notre prioritÃ©.', 'Expertise par camÃ©ra;Expertise par excavation;RÃ©fection de drain de fondation;RÃ©fection de service dâ€™Ã©gout et aqueduc;RÃ©paration de fissure;Excavation de tout genre (maison, agrandissement, espace restreint, â€¦);Fosse septique;AmÃ©nagement paysager;DÃ©contamination;DÃ©molition;DÃ©neigement;', 'Expertise par camÃ©ra;Expertise par excavation;RÃ©fection de drain de fondation;RÃ©fection de service dâ€™Ã©gout et aqueduc;RÃ©paration de fissure;Excavation de tout genre (maison, agrandissement, espace restreint, â€¦);Fosse septique;AmÃ©nagement paysager;DÃ©contamination;DÃ©molition;DÃ©neigement;', '418-682-3255', 'photo-drainexc-1.jpg;', 'Commercant', 'drainexc', '4', '5%*', '10%* <br /> *sur toute expertise (camera ou par excavation) ', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(23, 1, 10, 'Drainexc', 'drainexc-logo.png', 'Qu&eacute;bec', 'yan.marcotte@drainexc.com', 'www.drainexc.com', 'Une Ã©quipe compÃ©tente Ã  votre service! Drainexc est un chef de file dans le domaine du drainage et de lâ€™excavation en espace restreinte, vous avez un problÃ¨me, nous avons la solution. Avec câ€™est 13 annÃ©e dâ€™expÃ©riences, Drainexc a bÃ¢ti sa rÃ©putation en offrant des travaux de grande qualitÃ©, selon les plus rÃ©centes normes, et ce Ã  prix trÃ¨s compÃ©titif. Faire affaire avec nous, câ€™est sâ€™assurer dâ€™avoir des travaux bien fais, garantie et dans les dÃ©lais prescrit. Une relation de confiance est notre prioritÃ©.', 'Une Ã©quipe compÃ©tente Ã  votre service! Drainexc est un chef de file dans le domaine du drainage et de lâ€™excavation en espace restreinte, vous avez un problÃ¨me, nous avons la solution. Avec câ€™est 13 annÃ©e dâ€™expÃ©riences, Drainexc a bÃ¢ti sa rÃ©putation en offrant des travaux de grande qualitÃ©, selon les plus rÃ©centes normes, et ce Ã  prix trÃ¨s compÃ©titif. Faire affaire avec nous, câ€™est sâ€™assurer dâ€™avoir des travaux bien fais, garantie et dans les dÃ©lais prescrit. Une relation de confiance est notre prioritÃ©.', 'Expertise par camÃ©ra;Expertise par excavation;RÃ©fection de drain de fondation;RÃ©fection de service dâ€™Ã©gout et aqueduc;RÃ©paration de fissure;Excavation de tout genre (maison, agrandissement, espace restreint, â€¦);Fosse septique;AmÃ©nagement paysager;DÃ©contamination;DÃ©molition;DÃ©neigement;', 'Expertise par camÃ©ra;Expertise par excavation;RÃ©fection de drain de fondation;RÃ©fection de service dâ€™Ã©gout et aqueduc;RÃ©paration de fissure;Excavation de tout genre (maison, agrandissement, espace restreint, â€¦);Fosse septique;AmÃ©nagement paysager;DÃ©contamination;DÃ©molition;DÃ©neigement;', '418-682-3255', 'photo-drainexc-1.jpg;', 'Commercant', 'drainexc-fissure', '4', '5%*', '10%** <br/>*sur rÃ©paration de fissures (max 250$) <br/>**sur rÃ©paration de fissures (max 500$)', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(23, 2, 10, 'Drainexc', 'drainexc-logo.png', 'Qu&eacute;bec', 'yan.marcotte@drainexc.com', 'www.drainexc.com', 'Une Ã©quipe compÃ©tente Ã  votre service! Drainexc est un chef de file dans le domaine du drainage et de lâ€™excavation en espace restreinte, vous avez un problÃ¨me, nous avons la solution. Avec câ€™est 13 annÃ©e dâ€™expÃ©riences, Drainexc a bÃ¢ti sa rÃ©putation en offrant des travaux de grande qualitÃ©, selon les plus rÃ©centes normes, et ce Ã  prix trÃ¨s compÃ©titif. Faire affaire avec nous, câ€™est sâ€™assurer dâ€™avoir des travaux bien fais, garantie et dans les dÃ©lais prescrit. Une relation de confiance est notre prioritÃ©.', 'Une Ã©quipe compÃ©tente Ã  votre service! Drainexc est un chef de file dans le domaine du drainage et de lâ€™excavation en espace restreinte, vous avez un problÃ¨me, nous avons la solution. Avec câ€™est 13 annÃ©e dâ€™expÃ©riences, Drainexc a bÃ¢ti sa rÃ©putation en offrant des travaux de grande qualitÃ©, selon les plus rÃ©centes normes, et ce Ã  prix trÃ¨s compÃ©titif. Faire affaire avec nous, câ€™est sâ€™assurer dâ€™avoir des travaux bien fais, garantie et dans les dÃ©lais prescrit. Une relation de confiance est notre prioritÃ©.', 'Expertise par camÃ©ra;Expertise par excavation;RÃ©fection de drain de fondation;RÃ©fection de service dâ€™Ã©gout et aqueduc;RÃ©paration de fissure;Excavation de tout genre (maison, agrandissement, espace restreint, â€¦);Fosse septique;AmÃ©nagement paysager;DÃ©contamination;DÃ©molition;DÃ©neigement;', 'Expertise par camÃ©ra;Expertise par excavation;RÃ©fection de drain de fondation;RÃ©fection de service dâ€™Ã©gout et aqueduc;RÃ©paration de fissure;Excavation de tout genre (maison, agrandissement, espace restreint, â€¦);Fosse septique;AmÃ©nagement paysager;DÃ©contamination;DÃ©molition;DÃ©neigement;', '418-682-3255', 'photo-drainexc-1.jpg;', 'Commercant', 'drainexc-fissure', '4', '5%*', '10%** <br/>*sur rÃ©paration de fissures (max 250$) <br/>**sur rÃ©paration de fissures (max 500$)', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(24, 1, 3, 'DLT Arpenteurs-GÃ©omÃ¨tres', 'dlt-arpenteurs-geometres-logo.png', 'Qu&eacute;bec', 'Info@dltarpenteur.com', 'www.dltarpenteur.com', 'DLT Arpenteurs-GÃ©omÃ¨tres est une firme professionnelle dâ€™arpentage foncier de la rÃ©gion de QuÃ©bec  avec plus de 37 ans de savoir faire au service des particuliers, agents immobiliers, promoteurs, entrepreneurs et ingÃ©nieurs, notaires et architectes.  Si vous dÃ©sirez vendre votre propriÃ©tÃ©, dÃ©terminer ses limites ou encore agrandir ou construire un nouveau bÃ¢timent, lâ€™Ã©quipe de DLT Arpenteurs-GÃ©omÃ¨tres pourra vous conseiller et rÃ©aliser tous vos travaux dâ€™arpentage dans les dÃ©lais les plus courts, Ã  prix compÃ©titif et surtout sans compromettre la qualitÃ© du service offert.  Pour plus de renseignements, appeler nous, il nous fera plaisir de vous informer.', 'DLT Arpenteurs-GÃ©omÃ¨tres est une firme professionnelle dâ€™arpentage foncier de la rÃ©gion de QuÃ©bec  avec plus de 37 ans de savoir faire au service des particuliers, agents immobiliers, promoteurs, entrepreneurs et ingÃ©nieurs, notaires et architectes.  Si vous dÃ©sirez vendre votre propriÃ©tÃ©, dÃ©terminer ses limites ou encore agrandir ou construire un nouveau bÃ¢timent, lâ€™Ã©quipe de DLT Arpenteurs-GÃ©omÃ¨tres pourra vous conseiller et rÃ©aliser tous vos travaux dâ€™arpentage dans les dÃ©lais les plus courts, Ã  prix compÃ©titif et surtout sans compromettre la qualitÃ© du service offert.  Pour plus de renseignements, appeler nous, il nous fera plaisir de vous informer.', 'Certificat de Localisation;Plan Projet dâ€™implantation;CopropriÃ©tÃ©;Lotissement ;Bornage;Plan Topographique;Piquetage;DÃ©veloppement de projet immobilier;RelevÃ© supperficie locative;Scanneur 3D / modÃ©lisation 3D;Drone / PhotogrammÃ©trie;Arpentage de Construction;', 'Certificat de Localisation;Plan Projet dâ€™implantation;CopropriÃ©tÃ©;Lotissement ;Bornage;Plan Topographique;Piquetage;DÃ©veloppement de projet immobilier;RelevÃ© supperficie locative;Scanneur 3D / modÃ©lisation 3D;Drone / PhotogrammÃ©trie;Arpentage de Construction;', '418-684-0005', 'photo-dlt-arpenteurs-geometres-2.jpg;\r\nphoto-dlt-arpenteurs-geometres-3.jpg;\r\nphoto-dlt-arpenteurs-geometres-1.jpg;', 'Commercant', 'dlt-arpenteurs-geometres', '4', '5%*', '10%* <br/> *Applicable seulement sur les certificats de localisation.', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(25, 1, 7, 'Immofab Construction', 'immofab-logo.png', 'Qu&eacute;bec', 'info@immofab.ca', 'www.immofab.ca', 'Immofab Construction Ã  QuÃ©bec Vous avez un projet de maison, de jumelÃ© ou de condo bien prÃ©cis en tÃªte et cherchez un entrepreneur en construction expÃ©rimentÃ© qui possÃ¨de toutes les qualifications requises pour rÃ©aliser le rÃªve de votre vie? Une entreprise soucieuse des dÃ©tails et qui a fait de la satisfaction de sa clientÃ¨le sa prioritÃ© au fil des ans? Vous avez frappÃ© Ã  la bonne porte. <br/> <br/> SpÃ©cialisÃ© en construction rÃ©sidentielle en tous genres Ã  QuÃ©bec, le groupe ImmoFab saura concrÃ©tiser toutes vos idÃ©es de construction, des plus petites aux plus grandes. FondÃ© par Marcel Bouchard et Pierre GagnÃ©, deux entrepreneurs passionnÃ©s en construction totalisant plus d\'un demi-siÃ¨cle dâ€™expÃ©rience, lâ€™entreprise vous offrira un produit de la plus haute qualitÃ©, personnalisÃ© en fonction de vos besoins et de votre budget. <br/> <br/> Vous nâ€™avez pas de plan prÃ©cis en tÃªte, mais aimeriez profiter de lâ€™expertise et du savoir-faire unique dâ€™une compagnie qui ne cesse dâ€™innover dans le secteur de la construction rÃ©sidentielle Ã  QuÃ©bec?<br/> <br/>  Lâ€™entreprise possÃ¨de Ã©galement une vaste sÃ©lection de maisons Ã  vendre Ã  QuÃ©bec et Ã  Sillery, dÃ©jÃ  prÃªtes Ã  vous accueillir ou encore en chantier, sur le point de voir le jour. Se dÃ©clinant en une multitude de modÃ¨les des plus tendances, les maisons unifamiliales et les jumelÃ©s Ã  vendre Ã  QuÃ©bec valent Ã©galement la peine quâ€™on sâ€™y attarde.<br/> <br/> ImmoFab se dÃ©marque en outre par la qualitÃ© et le design de ses propriÃ©tÃ©s et par son service Ã  la clientÃ¨le irrÃ©prochable. En effet, sachant que la construction dâ€™une maison est souvent une des Ã©tapes les plus importantes dans la vie dâ€™une personne, lâ€™Ã©quipe dâ€™ImmoFab ne mÃ©nage aucun effort pour satisfaire les exigences de confort et de bien-Ãªtre de sa clientÃ¨le.<br/> <br/>En choisissant ImmoFab comme partenaire, les futurs propriÃ©taires bÃ©nÃ©ficieront dâ€™un service clÃ©s en main du dÃ©but Ã  la fin. En effet, ces derniers seront accompagnÃ©s Ã  toutes les Ã©tapes de la construction de leurs projets afin de sâ€™assurer que le produit fini reflÃ¨te leurs prÃ©fÃ©rences.<br/> <br/>Du choix du terrain Ã  la sÃ©lection des matÃ©riaux de construction, en passant par la finition et le terrassement, les aspirants propriÃ©taires seront encadrÃ©s par une Ã©quipe dâ€™experts, qui sont tous reconnus comme des chefs de file dans le domaine de la construction de maisons neuves Ã  QuÃ©bec.<br/> <br/>Chez ImmoFab, vous verrez quâ€™il nâ€™y a aucun compromis possible sur la qualitÃ© du choix de matÃ©riaux et des techniques de construction. Quâ€™il sâ€™agisse dâ€™une maison unifamiliale, dâ€™un jumelÃ© ou dâ€™un projet de condo de petite ou de grande envergure Ã  QuÃ©bec, vous pouvez entiÃ¨rement vous en remettre aux mains des experts dâ€™ImmoFab pour prendre en charge et rÃ©aliser tous vos projets de construction rÃ©sidentielle. Les professionnels de la compagnie font de la satisfaction de leurs clients leur prioritÃ© et ils se donnent Ã  110% pour leur offrir le meilleur rapport qualitÃ©-prix du marchÃ©, et ce, jour aprÃ¨s jour. Contactez-nous dÃ¨s maintenant pour en savoir plus sur nos maisons neuves Ã  vendre Ã  Sillery et QuÃ©bec ou pour prendre rendez-vous avec lâ€™un de nos experts dÃ¨s maintenant. Notre expertise fera toute la diffÃ©rence.', 'Immofab Construction Ã  QuÃ©bec Vous avez un projet de maison, de jumelÃ© ou de condo bien prÃ©cis en tÃªte et cherchez un entrepreneur en construction expÃ©rimentÃ© qui possÃ¨de toutes les qualifications requises pour rÃ©aliser le rÃªve de votre vie? Une entreprise soucieuse des dÃ©tails et qui a fait de la satisfaction de sa clientÃ¨le sa prioritÃ© au fil des ans? Vous avez frappÃ© Ã  la bonne porte. <br/> <br/> SpÃ©cialisÃ© en construction rÃ©sidentielle en tous genres Ã  QuÃ©bec, le groupe ImmoFab saura concrÃ©tiser toutes vos idÃ©es de construction, des plus petites aux plus grandes. FondÃ© par Marcel Bouchard et Pierre GagnÃ©, deux entrepreneurs passionnÃ©s en construction totalisant plus d\'un demi-siÃ¨cle dâ€™expÃ©rience, lâ€™entreprise vous offrira un produit de la plus haute qualitÃ©, personnalisÃ© en fonction de vos besoins et de votre budget. <br/> <br/> Vous nâ€™avez pas de plan prÃ©cis en tÃªte, mais aimeriez profiter de lâ€™expertise et du savoir-faire unique dâ€™une compagnie qui ne cesse dâ€™innover dans le secteur de la construction rÃ©sidentielle Ã  QuÃ©bec?<br/> <br/>  Lâ€™entreprise possÃ¨de Ã©galement une vaste sÃ©lection de maisons Ã  vendre Ã  QuÃ©bec et Ã  Sillery, dÃ©jÃ  prÃªtes Ã  vous accueillir ou encore en chantier, sur le point de voir le jour. Se dÃ©clinant en une multitude de modÃ¨les des plus tendances, les maisons unifamiliales et les jumelÃ©s Ã  vendre Ã  QuÃ©bec valent Ã©galement la peine quâ€™on sâ€™y attarde.<br/> <br/> ImmoFab se dÃ©marque en outre par la qualitÃ© et le design de ses propriÃ©tÃ©s et par son service Ã  la clientÃ¨le irrÃ©prochable. En effet, sachant que la construction dâ€™une maison est souvent une des Ã©tapes les plus importantes dans la vie dâ€™une personne, lâ€™Ã©quipe dâ€™ImmoFab ne mÃ©nage aucun effort pour satisfaire les exigences de confort et de bien-Ãªtre de sa clientÃ¨le.<br/> <br/>En choisissant ImmoFab comme partenaire, les futurs propriÃ©taires bÃ©nÃ©ficieront dâ€™un service clÃ©s en main du dÃ©but Ã  la fin. En effet, ces derniers seront accompagnÃ©s Ã  toutes les Ã©tapes de la construction de leurs projets afin de sâ€™assurer que le produit fini reflÃ¨te leurs prÃ©fÃ©rences.<br/> <br/>Du choix du terrain Ã  la sÃ©lection des matÃ©riaux de construction, en passant par la finition et le terrassement, les aspirants propriÃ©taires seront encadrÃ©s par une Ã©quipe dâ€™experts, qui sont tous reconnus comme des chefs de file dans le domaine de la construction de maisons neuves Ã  QuÃ©bec.<br/> <br/>Chez ImmoFab, vous verrez quâ€™il nâ€™y a aucun compromis possible sur la qualitÃ© du choix de matÃ©riaux et des techniques de construction. Quâ€™il sâ€™agisse dâ€™une maison unifamiliale, dâ€™un jumelÃ© ou dâ€™un projet de condo de petite ou de grande envergure Ã  QuÃ©bec, vous pouvez entiÃ¨rement vous en remettre aux mains des experts dâ€™ImmoFab pour prendre en charge et rÃ©aliser tous vos projets de construction rÃ©sidentielle. Les professionnels de la compagnie font de la satisfaction de leurs clients leur prioritÃ© et ils se donnent Ã  110% pour leur offrir le meilleur rapport qualitÃ©-prix du marchÃ©, et ce, jour aprÃ¨s jour. Contactez-nous dÃ¨s maintenant pour en savoir plus sur nos maisons neuves Ã  vendre Ã  Sillery et QuÃ©bec ou pour prendre rendez-vous avec lâ€™un de nos experts dÃ¨s maintenant. Notre expertise fera toute la diffÃ©rence.', 'Projet de maisons unifamiliales, jumelÃ©s, maisons de ville et condos dans toute la grande rÃ©gion de QuÃ©bec.;Nous sommes les spÃ©cialistes de l\'intÃ©gration de bÃ¢timent neuf dans le bÃ¢tie urbain, et ce sur votre terrain, clÃ©s en main, ou sur l\'un de notre vaste choix de terrains disponibles dans Ste-Foy et Sillery, ainsi qu\'Ã  Ste-Brigitte-de-Laval.;Nous faisons Ã©galement de la construction commerciale.;', 'Projet de maisons unifamiliales, jumelÃ©s, maisons de ville et condos dans toute la grande rÃ©gion de QuÃ©bec.;Nous sommes les spÃ©cialistes de l\'intÃ©gration de bÃ¢timent neuf dans le bÃ¢tie urbain, et ce sur votre terrain, clÃ©s en main, ou sur l\'un de notre vaste choix de terrains disponibles dans Ste-Foy et Sillery, ainsi qu\'Ã  Ste-Brigitte-de-Laval.;Nous faisons Ã©galement de la construction commerciale.;', '418-576-1038', 'photo-immo-fab-construction1.jpg;\r\nphoto-immo-fab-construction2.jpg;\r\nphoto-immo-fab-construction3.jpg;', 'Commercant', 'immofab-construction', '4', 'Certificat cadeau de 250$ chez l\'un de nos fournisseurs partenaires*', 'La moitiÃ© des frais de notaire serons payÃ©s par Immofab* <br /> *&Agrave; l\'achat d\'une maison avec Immofab', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(26, 1, 12, 'Immofab Construction', 'immofab-logo.png', 'Qu&eacute;bec', 'info@immofab.ca', 'www.immofab.ca', 'Immofab Construction Ã  QuÃ©bec Vous avez un projet de maison, de jumelÃ© ou de condo bien prÃ©cis en tÃªte et cherchez un entrepreneur en construction expÃ©rimentÃ© qui possÃ¨de toutes les qualifications requises pour rÃ©aliser le rÃªve de votre vie? Une entreprise soucieuse des dÃ©tails et qui a fait de la satisfaction de sa clientÃ¨le sa prioritÃ© au fil des ans? Vous avez frappÃ© Ã  la bonne porte. <br/> <br/> SpÃ©cialisÃ© en construction rÃ©sidentielle en tous genres Ã  QuÃ©bec, le groupe ImmoFab saura concrÃ©tiser toutes vos idÃ©es de construction, des plus petites aux plus grandes. FondÃ© par Marcel Bouchard et Pierre GagnÃ©, deux entrepreneurs passionnÃ©s en construction totalisant plus d\'un demi-siÃ¨cle dâ€™expÃ©rience, lâ€™entreprise vous offrira un produit de la plus haute qualitÃ©, personnalisÃ© en fonction de vos besoins et de votre budget. <br/> <br/> Vous nâ€™avez pas de plan prÃ©cis en tÃªte, mais aimeriez profiter de lâ€™expertise et du savoir-faire unique dâ€™une compagnie qui ne cesse dâ€™innover dans le secteur de la construction rÃ©sidentielle Ã  QuÃ©bec?<br/> <br/>  Lâ€™entreprise possÃ¨de Ã©galement une vaste sÃ©lection de maisons Ã  vendre Ã  QuÃ©bec et Ã  Sillery, dÃ©jÃ  prÃªtes Ã  vous accueillir ou encore en chantier, sur le point de voir le jour. Se dÃ©clinant en une multitude de modÃ¨les des plus tendances, les maisons unifamiliales et les jumelÃ©s Ã  vendre Ã  QuÃ©bec valent Ã©galement la peine quâ€™on sâ€™y attarde.<br/> <br/> ImmoFab se dÃ©marque en outre par la qualitÃ© et le design de ses propriÃ©tÃ©s et par son service Ã  la clientÃ¨le irrÃ©prochable. En effet, sachant que la construction dâ€™une maison est souvent une des Ã©tapes les plus importantes dans la vie dâ€™une personne, lâ€™Ã©quipe dâ€™ImmoFab ne mÃ©nage aucun effort pour satisfaire les exigences de confort et de bien-Ãªtre de sa clientÃ¨le.<br/> <br/>En choisissant ImmoFab comme partenaire, les futurs propriÃ©taires bÃ©nÃ©ficieront dâ€™un service clÃ©s en main du dÃ©but Ã  la fin. En effet, ces derniers seront accompagnÃ©s Ã  toutes les Ã©tapes de la construction de leurs projets afin de sâ€™assurer que le produit fini reflÃ¨te leurs prÃ©fÃ©rences.<br/> <br/>Du choix du terrain Ã  la sÃ©lection des matÃ©riaux de construction, en passant par la finition et le terrassement, les aspirants propriÃ©taires seront encadrÃ©s par une Ã©quipe dâ€™experts, qui sont tous reconnus comme des chefs de file dans le domaine de la construction de maisons neuves Ã  QuÃ©bec.<br/> <br/>Chez ImmoFab, vous verrez quâ€™il nâ€™y a aucun compromis possible sur la qualitÃ© du choix de matÃ©riaux et des techniques de construction. Quâ€™il sâ€™agisse dâ€™une maison unifamiliale, dâ€™un jumelÃ© ou dâ€™un projet de condo de petite ou de grande envergure Ã  QuÃ©bec, vous pouvez entiÃ¨rement vous en remettre aux mains des experts dâ€™ImmoFab pour prendre en charge et rÃ©aliser tous vos projets de construction rÃ©sidentielle. Les professionnels de la compagnie font de la satisfaction de leurs clients leur prioritÃ© et ils se donnent Ã  110% pour leur offrir le meilleur rapport qualitÃ©-prix du marchÃ©, et ce, jour aprÃ¨s jour. Contactez-nous dÃ¨s maintenant pour en savoir plus sur nos maisons neuves Ã  vendre Ã  Sillery et QuÃ©bec ou pour prendre rendez-vous avec lâ€™un de nos experts dÃ¨s maintenant. Notre expertise fera toute la diffÃ©rence.', 'Immofab Construction Ã  QuÃ©bec Vous avez un projet de maison, de jumelÃ© ou de condo bien prÃ©cis en tÃªte et cherchez un entrepreneur en construction expÃ©rimentÃ© qui possÃ¨de toutes les qualifications requises pour rÃ©aliser le rÃªve de votre vie? Une entreprise soucieuse des dÃ©tails et qui a fait de la satisfaction de sa clientÃ¨le sa prioritÃ© au fil des ans? Vous avez frappÃ© Ã  la bonne porte. <br/> <br/> SpÃ©cialisÃ© en construction rÃ©sidentielle en tous genres Ã  QuÃ©bec, le groupe ImmoFab saura concrÃ©tiser toutes vos idÃ©es de construction, des plus petites aux plus grandes. FondÃ© par Marcel Bouchard et Pierre GagnÃ©, deux entrepreneurs passionnÃ©s en construction totalisant plus d\'un demi-siÃ¨cle dâ€™expÃ©rience, lâ€™entreprise vous offrira un produit de la plus haute qualitÃ©, personnalisÃ© en fonction de vos besoins et de votre budget. <br/> <br/> Vous nâ€™avez pas de plan prÃ©cis en tÃªte, mais aimeriez profiter de lâ€™expertise et du savoir-faire unique dâ€™une compagnie qui ne cesse dâ€™innover dans le secteur de la construction rÃ©sidentielle Ã  QuÃ©bec?<br/> <br/>  Lâ€™entreprise possÃ¨de Ã©galement une vaste sÃ©lection de maisons Ã  vendre Ã  QuÃ©bec et Ã  Sillery, dÃ©jÃ  prÃªtes Ã  vous accueillir ou encore en chantier, sur le point de voir le jour. Se dÃ©clinant en une multitude de modÃ¨les des plus tendances, les maisons unifamiliales et les jumelÃ©s Ã  vendre Ã  QuÃ©bec valent Ã©galement la peine quâ€™on sâ€™y attarde.<br/> <br/> ImmoFab se dÃ©marque en outre par la qualitÃ© et le design de ses propriÃ©tÃ©s et par son service Ã  la clientÃ¨le irrÃ©prochable. En effet, sachant que la construction dâ€™une maison est souvent une des Ã©tapes les plus importantes dans la vie dâ€™une personne, lâ€™Ã©quipe dâ€™ImmoFab ne mÃ©nage aucun effort pour satisfaire les exigences de confort et de bien-Ãªtre de sa clientÃ¨le.<br/> <br/>En choisissant ImmoFab comme partenaire, les futurs propriÃ©taires bÃ©nÃ©ficieront dâ€™un service clÃ©s en main du dÃ©but Ã  la fin. En effet, ces derniers seront accompagnÃ©s Ã  toutes les Ã©tapes de la construction de leurs projets afin de sâ€™assurer que le produit fini reflÃ¨te leurs prÃ©fÃ©rences.<br/> <br/>Du choix du terrain Ã  la sÃ©lection des matÃ©riaux de construction, en passant par la finition et le terrassement, les aspirants propriÃ©taires seront encadrÃ©s par une Ã©quipe dâ€™experts, qui sont tous reconnus comme des chefs de file dans le domaine de la construction de maisons neuves Ã  QuÃ©bec.<br/> <br/>Chez ImmoFab, vous verrez quâ€™il nâ€™y a aucun compromis possible sur la qualitÃ© du choix de matÃ©riaux et des techniques de construction. Quâ€™il sâ€™agisse dâ€™une maison unifamiliale, dâ€™un jumelÃ© ou dâ€™un projet de condo de petite ou de grande envergure Ã  QuÃ©bec, vous pouvez entiÃ¨rement vous en remettre aux mains des experts dâ€™ImmoFab pour prendre en charge et rÃ©aliser tous vos projets de construction rÃ©sidentielle. Les professionnels de la compagnie font de la satisfaction de leurs clients leur prioritÃ© et ils se donnent Ã  110% pour leur offrir le meilleur rapport qualitÃ©-prix du marchÃ©, et ce, jour aprÃ¨s jour. Contactez-nous dÃ¨s maintenant pour en savoir plus sur nos maisons neuves Ã  vendre Ã  Sillery et QuÃ©bec ou pour prendre rendez-vous avec lâ€™un de nos experts dÃ¨s maintenant. Notre expertise fera toute la diffÃ©rence.', 'Projet de maisons unifamiliales, jumelÃ©s, maisons de ville et condos dans toute la grande rÃ©gion de QuÃ©bec.;Nous sommes les spÃ©cialistes de l\'intÃ©gration de bÃ¢timent neuf dans le bÃ¢tie urbain, et ce sur votre terrain, clÃ©s en main, ou sur l\'un de notre vaste choix de terrains disponibles dans Ste-Foy et Sillery, ainsi qu\'Ã  Ste-Brigitte-de-Laval.;Nous faisons Ã©galement de la construction commerciale.;', 'Projet de maisons unifamiliales, jumelÃ©s, maisons de ville et condos dans toute la grande rÃ©gion de QuÃ©bec.;Nous sommes les spÃ©cialistes de l\'intÃ©gration de bÃ¢timent neuf dans le bÃ¢tie urbain, et ce sur votre terrain, clÃ©s en main, ou sur l\'un de notre vaste choix de terrains disponibles dans Ste-Foy et Sillery, ainsi qu\'Ã  Ste-Brigitte-de-Laval.;Nous faisons Ã©galement de la construction commerciale.;', '418-576-1038', 'photo-immo-fab-projet1.jpg;\r\nphoto-immo-fab-projet2.jpg;\r\nphoto-immo-fab-projet3.jpg;', 'Commercant', 'immofab', '4', 'Certificat cadeau de 250$ chez l\'un de nos fournisseurs partenaires*', 'La moitiÃ© des frais de notaire serons payÃ©s par Immofab* <br /> *&Agrave; l\'achat d\'une maison avec Immofab', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00');
INSERT INTO `t_commercants` (`id`, `CityID`, `CategoryID`, `Name`, `Logo`, `CityName`, `Mail`, `SiteWeb`, `TexteFR`, `TexteEN`, `ServiceFR`, `ServiceEN`, `Phone`, `Realisations`, `RedirectTo`, `UrlName`, `Span`, `PromoVisitor`, `PromoMember`, `CertifiedLogo`, `updated_at`, `created_at`) VALUES
(26, 2, 12, 'Immofab Construction', 'immofab-logo.png', 'Qu&eacute;bec', 'info@immofab.ca', 'www.immofab.ca', 'Immofab Construction Ã  QuÃ©bec Vous avez un projet de maison, de jumelÃ© ou de condo bien prÃ©cis en tÃªte et cherchez un entrepreneur en construction expÃ©rimentÃ© qui possÃ¨de toutes les qualifications requises pour rÃ©aliser le rÃªve de votre vie? Une entreprise soucieuse des dÃ©tails et qui a fait de la satisfaction de sa clientÃ¨le sa prioritÃ© au fil des ans? Vous avez frappÃ© Ã  la bonne porte. <br/> <br/> SpÃ©cialisÃ© en construction rÃ©sidentielle en tous genres Ã  QuÃ©bec, le groupe ImmoFab saura concrÃ©tiser toutes vos idÃ©es de construction, des plus petites aux plus grandes. FondÃ© par Marcel Bouchard et Pierre GagnÃ©, deux entrepreneurs passionnÃ©s en construction totalisant plus d\'un demi-siÃ¨cle dâ€™expÃ©rience, lâ€™entreprise vous offrira un produit de la plus haute qualitÃ©, personnalisÃ© en fonction de vos besoins et de votre budget. <br/> <br/> Vous nâ€™avez pas de plan prÃ©cis en tÃªte, mais aimeriez profiter de lâ€™expertise et du savoir-faire unique dâ€™une compagnie qui ne cesse dâ€™innover dans le secteur de la construction rÃ©sidentielle Ã  QuÃ©bec?<br/> <br/>  Lâ€™entreprise possÃ¨de Ã©galement une vaste sÃ©lection de maisons Ã  vendre Ã  QuÃ©bec et Ã  Sillery, dÃ©jÃ  prÃªtes Ã  vous accueillir ou encore en chantier, sur le point de voir le jour. Se dÃ©clinant en une multitude de modÃ¨les des plus tendances, les maisons unifamiliales et les jumelÃ©s Ã  vendre Ã  QuÃ©bec valent Ã©galement la peine quâ€™on sâ€™y attarde.<br/> <br/> ImmoFab se dÃ©marque en outre par la qualitÃ© et le design de ses propriÃ©tÃ©s et par son service Ã  la clientÃ¨le irrÃ©prochable. En effet, sachant que la construction dâ€™une maison est souvent une des Ã©tapes les plus importantes dans la vie dâ€™une personne, lâ€™Ã©quipe dâ€™ImmoFab ne mÃ©nage aucun effort pour satisfaire les exigences de confort et de bien-Ãªtre de sa clientÃ¨le.<br/> <br/>En choisissant ImmoFab comme partenaire, les futurs propriÃ©taires bÃ©nÃ©ficieront dâ€™un service clÃ©s en main du dÃ©but Ã  la fin. En effet, ces derniers seront accompagnÃ©s Ã  toutes les Ã©tapes de la construction de leurs projets afin de sâ€™assurer que le produit fini reflÃ¨te leurs prÃ©fÃ©rences.<br/> <br/>Du choix du terrain Ã  la sÃ©lection des matÃ©riaux de construction, en passant par la finition et le terrassement, les aspirants propriÃ©taires seront encadrÃ©s par une Ã©quipe dâ€™experts, qui sont tous reconnus comme des chefs de file dans le domaine de la construction de maisons neuves Ã  QuÃ©bec.<br/> <br/>Chez ImmoFab, vous verrez quâ€™il nâ€™y a aucun compromis possible sur la qualitÃ© du choix de matÃ©riaux et des techniques de construction. Quâ€™il sâ€™agisse dâ€™une maison unifamiliale, dâ€™un jumelÃ© ou dâ€™un projet de condo de petite ou de grande envergure Ã  QuÃ©bec, vous pouvez entiÃ¨rement vous en remettre aux mains des experts dâ€™ImmoFab pour prendre en charge et rÃ©aliser tous vos projets de construction rÃ©sidentielle. Les professionnels de la compagnie font de la satisfaction de leurs clients leur prioritÃ© et ils se donnent Ã  110% pour leur offrir le meilleur rapport qualitÃ©-prix du marchÃ©, et ce, jour aprÃ¨s jour. Contactez-nous dÃ¨s maintenant pour en savoir plus sur nos maisons neuves Ã  vendre Ã  Sillery et QuÃ©bec ou pour prendre rendez-vous avec lâ€™un de nos experts dÃ¨s maintenant. Notre expertise fera toute la diffÃ©rence.', 'Immofab Construction Ã  QuÃ©bec Vous avez un projet de maison, de jumelÃ© ou de condo bien prÃ©cis en tÃªte et cherchez un entrepreneur en construction expÃ©rimentÃ© qui possÃ¨de toutes les qualifications requises pour rÃ©aliser le rÃªve de votre vie? Une entreprise soucieuse des dÃ©tails et qui a fait de la satisfaction de sa clientÃ¨le sa prioritÃ© au fil des ans? Vous avez frappÃ© Ã  la bonne porte. <br/> <br/> SpÃ©cialisÃ© en construction rÃ©sidentielle en tous genres Ã  QuÃ©bec, le groupe ImmoFab saura concrÃ©tiser toutes vos idÃ©es de construction, des plus petites aux plus grandes. FondÃ© par Marcel Bouchard et Pierre GagnÃ©, deux entrepreneurs passionnÃ©s en construction totalisant plus d\'un demi-siÃ¨cle dâ€™expÃ©rience, lâ€™entreprise vous offrira un produit de la plus haute qualitÃ©, personnalisÃ© en fonction de vos besoins et de votre budget. <br/> <br/> Vous nâ€™avez pas de plan prÃ©cis en tÃªte, mais aimeriez profiter de lâ€™expertise et du savoir-faire unique dâ€™une compagnie qui ne cesse dâ€™innover dans le secteur de la construction rÃ©sidentielle Ã  QuÃ©bec?<br/> <br/>  Lâ€™entreprise possÃ¨de Ã©galement une vaste sÃ©lection de maisons Ã  vendre Ã  QuÃ©bec et Ã  Sillery, dÃ©jÃ  prÃªtes Ã  vous accueillir ou encore en chantier, sur le point de voir le jour. Se dÃ©clinant en une multitude de modÃ¨les des plus tendances, les maisons unifamiliales et les jumelÃ©s Ã  vendre Ã  QuÃ©bec valent Ã©galement la peine quâ€™on sâ€™y attarde.<br/> <br/> ImmoFab se dÃ©marque en outre par la qualitÃ© et le design de ses propriÃ©tÃ©s et par son service Ã  la clientÃ¨le irrÃ©prochable. En effet, sachant que la construction dâ€™une maison est souvent une des Ã©tapes les plus importantes dans la vie dâ€™une personne, lâ€™Ã©quipe dâ€™ImmoFab ne mÃ©nage aucun effort pour satisfaire les exigences de confort et de bien-Ãªtre de sa clientÃ¨le.<br/> <br/>En choisissant ImmoFab comme partenaire, les futurs propriÃ©taires bÃ©nÃ©ficieront dâ€™un service clÃ©s en main du dÃ©but Ã  la fin. En effet, ces derniers seront accompagnÃ©s Ã  toutes les Ã©tapes de la construction de leurs projets afin de sâ€™assurer que le produit fini reflÃ¨te leurs prÃ©fÃ©rences.<br/> <br/>Du choix du terrain Ã  la sÃ©lection des matÃ©riaux de construction, en passant par la finition et le terrassement, les aspirants propriÃ©taires seront encadrÃ©s par une Ã©quipe dâ€™experts, qui sont tous reconnus comme des chefs de file dans le domaine de la construction de maisons neuves Ã  QuÃ©bec.<br/> <br/>Chez ImmoFab, vous verrez quâ€™il nâ€™y a aucun compromis possible sur la qualitÃ© du choix de matÃ©riaux et des techniques de construction. Quâ€™il sâ€™agisse dâ€™une maison unifamiliale, dâ€™un jumelÃ© ou dâ€™un projet de condo de petite ou de grande envergure Ã  QuÃ©bec, vous pouvez entiÃ¨rement vous en remettre aux mains des experts dâ€™ImmoFab pour prendre en charge et rÃ©aliser tous vos projets de construction rÃ©sidentielle. Les professionnels de la compagnie font de la satisfaction de leurs clients leur prioritÃ© et ils se donnent Ã  110% pour leur offrir le meilleur rapport qualitÃ©-prix du marchÃ©, et ce, jour aprÃ¨s jour. Contactez-nous dÃ¨s maintenant pour en savoir plus sur nos maisons neuves Ã  vendre Ã  Sillery et QuÃ©bec ou pour prendre rendez-vous avec lâ€™un de nos experts dÃ¨s maintenant. Notre expertise fera toute la diffÃ©rence.', 'Projet de maisons unifamiliales, jumelÃ©s, maisons de ville et condos dans toute la grande rÃ©gion de QuÃ©bec.;Nous sommes les spÃ©cialistes de l\'intÃ©gration de bÃ¢timent neuf dans le bÃ¢tie urbain, et ce sur votre terrain, clÃ©s en main, ou sur l\'un de notre vaste choix de terrains disponibles dans Ste-Foy et Sillery, ainsi qu\'Ã  Ste-Brigitte-de-Laval.;Nous faisons Ã©galement de la construction commerciale.;', 'Projet de maisons unifamiliales, jumelÃ©s, maisons de ville et condos dans toute la grande rÃ©gion de QuÃ©bec.;Nous sommes les spÃ©cialistes de l\'intÃ©gration de bÃ¢timent neuf dans le bÃ¢tie urbain, et ce sur votre terrain, clÃ©s en main, ou sur l\'un de notre vaste choix de terrains disponibles dans Ste-Foy et Sillery, ainsi qu\'Ã  Ste-Brigitte-de-Laval.;Nous faisons Ã©galement de la construction commerciale.;', '418-576-1038', 'photo-immo-fab-projet1.jpg;\r\nphoto-immo-fab-projet2.jpg;\r\nphoto-immo-fab-projet3.jpg;', 'Commercant', 'immofab', '4', 'Certificat cadeau de 250$ chez l\'un de nos fournisseurs partenaires*', 'La moitiÃ© des frais de notaire serons payÃ©s par Immofab* <br /> *&Agrave; l\'achat d\'une maison avec Immofab', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(27, 1, 13, 'DÃ©mÃ©nagement La Capitale', 'demlacapitale-logo.png', 'Qu&eacute;bec', 'infoquebec@demenagementlacapitale.com', 'www.demenagementlacapitale.com', 'DÃ©mÃ©nagement La Capitale se spÃ©cialise dans tous types de relocalisations, rÃ©sidentiel, commercial, outre-mer, local et longue-distance, nous saurons nous adapter selon vos besoins.  Depuis plus de 20 ans dans le domaine, nous saurons vous convaincre de nous choisir afin de devenir votre dÃ©mÃ©nageur officiel.  Un conseiller se dÃ©placera  sans frais, afin de vous faire une soumission complÃ¨te  et dÃ©taillÃ©e, cela  vous permettra  de budgÃ©ter votre dÃ©mÃ©nagement.   Parce quâ€™une relocalisation rÃ©ussie Câ€™EST CAPITALE!!', 'DÃ©mÃ©nagement La Capitale se spÃ©cialise dans tous types de relocalisations, rÃ©sidentiel, commercial, outre-mer, local et longue-distance, nous saurons nous adapter selon vos besoins.  Depuis plus de 20 ans dans le domaine, nous saurons vous convaincre de nous choisir afin de devenir votre dÃ©mÃ©nageur officiel.  Un conseiller se dÃ©placera  sans frais, afin de vous faire une soumission complÃ¨te  et dÃ©taillÃ©e, cela  vous permettra  de budgÃ©ter votre dÃ©mÃ©nagement.   Parce quâ€™une relocalisation rÃ©ussie Câ€™EST CAPITALE!!', 'DÃ©mÃ©nagement rÃ©sidentiel, commercial (relocalisation dâ€™entreprise), local ou longue distance; dÃ©mÃ©nagement outre-mer; Service dâ€™emballage et entreposage; Transport et manutention;', 'DÃ©mÃ©nagement rÃ©sidentiel, commercial (relocalisation dâ€™entreprise), local ou longue distance; dÃ©mÃ©nagement outre-mer; Service dâ€™emballage et entreposage; Transport et manutention;', '418-948-8898', 'photo-demlacaptial-1.jpg;\r\nphoto-demlacaptial-2.jpg;\r\nphoto-demlacaptial-3.jpg;', 'Commercant', 'demlacapitale', '12', '2% + 10 boÃ®tes 2 pieds + 5 boÃ®tes 4 pieds ', '3% + 1er mois entreposage gratuit + forfait complet de matÃ©riel dâ€™emballage (forfait Immo-Clic.ca) ', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(27, 2, 13, 'DÃ©mÃ©nagement La Capitale', 'demlacapitale-logo.png', 'Qu&eacute;bec', 'infoquebec@demenagementlacapitale.com', 'www.demenagementlacapitale.com', 'DÃ©mÃ©nagement La Capitale se spÃ©cialise dans tous types de relocalisations, rÃ©sidentiel, commercial, outre-mer, local et longue-distance, nous saurons nous adapter selon vos besoins.  Depuis plus de 20 ans dans le domaine, nous saurons vous convaincre de nous choisir afin de devenir votre dÃ©mÃ©nageur officiel.  Un conseiller se dÃ©placera  sans frais, afin de vous faire une soumission complÃ¨te  et dÃ©taillÃ©e, cela  vous permettra  de budgÃ©ter votre dÃ©mÃ©nagement.   Parce quâ€™une relocalisation rÃ©ussie Câ€™EST CAPITALE!!', 'DÃ©mÃ©nagement La Capitale se spÃ©cialise dans tous types de relocalisations, rÃ©sidentiel, commercial, outre-mer, local et longue-distance, nous saurons nous adapter selon vos besoins.  Depuis plus de 20 ans dans le domaine, nous saurons vous convaincre de nous choisir afin de devenir votre dÃ©mÃ©nageur officiel.  Un conseiller se dÃ©placera  sans frais, afin de vous faire une soumission complÃ¨te  et dÃ©taillÃ©e, cela  vous permettra  de budgÃ©ter votre dÃ©mÃ©nagement.   Parce quâ€™une relocalisation rÃ©ussie Câ€™EST CAPITALE!!', 'DÃ©mÃ©nagement rÃ©sidentiel, commercial (relocalisation dâ€™entreprise), local ou longue distance; dÃ©mÃ©nagement outre-mer; Service dâ€™emballage et entreposage; Transport et manutention;', 'DÃ©mÃ©nagement rÃ©sidentiel, commercial (relocalisation dâ€™entreprise), local ou longue distance; dÃ©mÃ©nagement outre-mer; Service dâ€™emballage et entreposage; Transport et manutention;', '418-948-8898', 'photo-demlacaptial-1.jpg;\r\nphoto-demlacaptial-2.jpg;\r\nphoto-demlacaptial-3.jpg;', 'Commercant', 'demlacapitale', '12', '2% + 10 boÃ®tes 2 pieds + 5 boÃ®tes 4 pieds ', '3% + 1er mois entreposage gratuit + forfait complet de matÃ©riel dâ€™emballage (forfait Immo-Clic.ca) ', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(28, 1, 7, 'FDF CONTRUCTION ET RÃ‰NOVATION', 'fdf-construction-et-renovation-logo.png', 'Qu&eacute;bec', 'DOMINIC@FLEURY.CA', 'www.fdfconstruction.com', 'Entrepreneur en construction et rÃ©novation  Gagnant du prix RelÃ¨ve 2011 de QualitÃ© Habitation. Que se soit commerciale ou rÃ©sidentielle, vous ne pourrez quâ€™apprÃ©cier travailler avec lâ€™Ã©quipe de FDF Construction et son patron Dominic.', 'Entrepreneur en construction et rÃ©novation  Gagnant du prix RelÃ¨ve 2011 de QualitÃ© Habitation. Que se soit commerciale ou rÃ©sidentielle, vous ne pourrez quâ€™apprÃ©cier travailler avec lâ€™Ã©quipe de FDF Construction et son patron Dominic.', 'Construction rÃ©sidentielle et commerciale;RÃ©novation de tous genres et agrandissement;', 'Construction rÃ©sidentielle et commerciale;RÃ©novation de tous genres et agrandissement;', '418-520-4449', 'fdf-photo1.jpg;\r\nfdf-photo2.jpg;\r\nfdf-photo3.jpg;', 'Commercant', 'fdf-construction-et-renovation', '4', '5% sur la main-dâ€™Å“uvre', '10% sur la main-dâ€™Å“uvre', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(28, 2, 7, 'FDF CONTRUCTION ET RÃ‰NOVATION', 'fdf-construction-et-renovation-logo.png', 'Qu&eacute;bec', 'DOMINIC@FLEURY.CA', 'www.fdfconstruction.com', 'Entrepreneur en construction et rÃ©novation  Gagnant du prix RelÃ¨ve 2011 de QualitÃ© Habitation. Que se soit commerciale ou rÃ©sidentielle, vous ne pourrez quâ€™apprÃ©cier travailler avec lâ€™Ã©quipe de FDF Construction et son patron Dominic.', 'Entrepreneur en construction et rÃ©novation  Gagnant du prix RelÃ¨ve 2011 de QualitÃ© Habitation. Que se soit commerciale ou rÃ©sidentielle, vous ne pourrez quâ€™apprÃ©cier travailler avec lâ€™Ã©quipe de FDF Construction et son patron Dominic.', 'Construction rÃ©sidentielle et commerciale;RÃ©novation de tous genres et agrandissement;', 'Construction rÃ©sidentielle et commerciale;RÃ©novation de tous genres et agrandissement;', '418-520-4449', 'fdf-photo1.jpg;\r\nfdf-photo2.jpg;\r\nfdf-photo3.jpg;', 'Commercant', 'fdf-construction-et-renovation', '4', '5% sur la main-dâ€™Å“uvre', '10% sur la main-dâ€™Å“uvre', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(29, 1, 14, 'STORE Ã‰VOLUTION', 'store-evolution-logo.png', 'Qu&eacute;bec', 'info@store-evolution.com', 'www.store-evolution.com', 'Lâ€™expÃ©rience Store Ã‰volution câ€™est un service de professionnels qui vous conseillerons le produit appropriÃ© Ã  vos besoins, et vous informerons des nouveaux produits disponibles dans le marchÃ©, en tenant compte de votre budget. Câ€™est aussi des installateurs chevronnÃ©s pour la prise de mesures et lâ€™installation de vos stores, vous offrant ainsi un service clÃ© en main. Un service aprÃ¨s vente hors pair sâ€™assurant de votre satisfaction. Que ce soit pour un simple store ou pour un projet plus complexe tel que de la motorisation, laissez nos experts vous conseiller le produit qui sera satisfaire les plus hautes exigences. Notre grand volume dâ€™achat au niveau commercial et institutionnel nous permet de vous offrir des prix trÃ¨s compÃ©titifs.', 'Lâ€™expÃ©rience Store Ã‰volution câ€™est un service de professionnels qui vous conseillerons le produit appropriÃ© Ã  vos besoins, et vous informerons des nouveaux produits disponibles dans le marchÃ©, en tenant compte de votre budget. Câ€™est aussi des installateurs chevronnÃ©s pour la prise de mesures et lâ€™installation de vos stores, vous offrant ainsi un service clÃ© en main. Un service aprÃ¨s vente hors pair sâ€™assurant de votre satisfaction. Que ce soit pour un simple store ou pour un projet plus complexe tel que de la motorisation, laissez nos experts vous conseiller le produit qui sera satisfaire les plus hautes exigences. Notre grand volume dâ€™achat au niveau commercial et institutionnel nous permet de vous offrir des prix trÃ¨s compÃ©titifs.', 'Grande variÃ©tÃ© de stores et toiles Ã  rouleaux;Motorisation;Stores pour verriÃ¨res et puits de lumiÃ¨re;Service dâ€™experts et travail garanti;', 'Grande variÃ©tÃ© de stores et toiles Ã  rouleaux;Motorisation;Stores pour verriÃ¨res et puits de lumiÃ¨re;Service dâ€™experts et travail garanti;', '(418) 653-9324', 'store-evolution-photo1.jpg;\r\nstore-evolution-photo2.jpg;\r\nstore-evolution-photo3.jpg;', 'Commercant', 'store-evolution', '12', '5%', '10%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(29, 2, 14, 'STORE Ã‰VOLUTION', 'store-evolution-logo.png', 'Qu&eacute;bec', 'info@store-evolution.com', 'www.store-evolution.com', 'Lâ€™expÃ©rience Store Ã‰volution câ€™est un service de professionnels qui vous conseillerons le produit appropriÃ© Ã  vos besoins, et vous informerons des nouveaux produits disponibles dans le marchÃ©, en tenant compte de votre budget. Câ€™est aussi des installateurs chevronnÃ©s pour la prise de mesures et lâ€™installation de vos stores, vous offrant ainsi un service clÃ© en main. Un service aprÃ¨s vente hors pair sâ€™assurant de votre satisfaction. Que ce soit pour un simple store ou pour un projet plus complexe tel que de la motorisation, laissez nos experts vous conseiller le produit qui sera satisfaire les plus hautes exigences. Notre grand volume dâ€™achat au niveau commercial et institutionnel nous permet de vous offrir des prix trÃ¨s compÃ©titifs.', 'Lâ€™expÃ©rience Store Ã‰volution câ€™est un service de professionnels qui vous conseillerons le produit appropriÃ© Ã  vos besoins, et vous informerons des nouveaux produits disponibles dans le marchÃ©, en tenant compte de votre budget. Câ€™est aussi des installateurs chevronnÃ©s pour la prise de mesures et lâ€™installation de vos stores, vous offrant ainsi un service clÃ© en main. Un service aprÃ¨s vente hors pair sâ€™assurant de votre satisfaction. Que ce soit pour un simple store ou pour un projet plus complexe tel que de la motorisation, laissez nos experts vous conseiller le produit qui sera satisfaire les plus hautes exigences. Notre grand volume dâ€™achat au niveau commercial et institutionnel nous permet de vous offrir des prix trÃ¨s compÃ©titifs.', 'Grande variÃ©tÃ© de stores et toiles Ã  rouleaux;Motorisation;Stores pour verriÃ¨res et puits de lumiÃ¨re;Service dâ€™experts et travail garanti;', 'Grande variÃ©tÃ© de stores et toiles Ã  rouleaux;Motorisation;Stores pour verriÃ¨res et puits de lumiÃ¨re;Service dâ€™experts et travail garanti;', '(418) 653-9324', 'store-evolution-photo1.jpg;\r\nstore-evolution-photo2.jpg;\r\nstore-evolution-photo3.jpg;', 'Commercant', 'store-evolution', '12', '5%', '10%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(30, 1, 15, 'Paysagiste Jamo Inc.', 'paysagiste-jamo-inc-logo.png', 'Qu&eacute;bec', 'Jamopaysage1@videotron.ca', 'www.paysagistejamo.ca', 'Entreprise Jamo est maÃ®tre d\'Å“uvre dans le domaine de l\'amÃ©nagement paysager depuis maintenant 3 gÃ©nÃ©rations.  Avec elle, une Ã©quipe de trente employÃ©s et une flotte de 60 unitÃ©s de camions et Ã©quipements.  Nous sommes forts d\'une organisation bien structurÃ©e et de notre sens du style trÃ¨s artistique. Nous demeurons Ã  l\'affÃ»t des derniÃ¨res technologies dans le domaine afin de rÃ©pondre aux besoins et exigences de chaque client. Ayez l\'assurance d\'un service professionnel et d\'un prix compÃ©titif. Soyez parmi nos milliers de clients satisfaits et n\'oubliez pas que tout bon projet commence par un plan. Laissez-nous le soin de vous aidez Ã  planifiez votre projet.', 'Entreprise Jamo est maÃ®tre d\'Å“uvre dans le domaine de l\'amÃ©nagement paysager depuis maintenant 3 gÃ©nÃ©rations.  Avec elle, une Ã©quipe de trente employÃ©s et une flotte de 60 unitÃ©s de camions et Ã©quipements.  Nous sommes forts d\'une organisation bien structurÃ©e et de notre sens du style trÃ¨s artistique. Nous demeurons Ã  l\'affÃ»t des derniÃ¨res technologies dans le domaine afin de rÃ©pondre aux besoins et exigences de chaque client. Ayez l\'assurance d\'un service professionnel et d\'un prix compÃ©titif. Soyez parmi nos milliers de clients satisfaits et n\'oubliez pas que tout bon projet commence par un plan. Laissez-nous le soin de vous aidez Ã  planifiez votre projet.', 'Distributeur Pierres et PavÃ©s Rinox (http://www.rinox.ca/fr);Traitement de Pelouse Vert WOW;Plan et design;Marches;PavÃ© et dalle;Pierres naturelles;Terrasse et trottoir;Contour de piscine;Stationnement;Muret;Enrochement;Murs de soutÃ¨nement;Jardin d\'eau;Spa;Bordure;Gazon et plantation;Patio, pergola et menuiserie;Ensemencement hydraulique;Asphalte;Ã‰clairage;Irrigation et drainage;', 'Distributeur Pierres et PavÃ©s Rinox (http://www.rinox.ca/fr);Traitement de Pelouse Vert WOW;Plan et design;Marches;PavÃ© et dalle;Pierres naturelles;Terrasse et trottoir;Contour de piscine;Stationnement;Muret;Enrochement;Murs de soutÃ¨nement;Jardin d\'eau;Spa;Bordure;Gazon et plantation;Patio, pergola et menuiserie;Ensemencement hydraulique;Asphalte;Ã‰clairage;Irrigation et drainage;', '418-872-9663', 'paysagiste-jamo-photo1.jpg;\r\npaysagiste-jamo-photo2.jpg;\r\npaysagiste-jamo-photo3.jpg;', 'Commercant', 'paysagiste-jamo-inc', '4', '5%', '10%', 'appq-logo.png', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(30, 2, 15, 'Paysagiste Jamo Inc.', 'paysagiste-jamo-inc-logo.png', 'Qu&eacute;bec', 'Jamopaysage1@videotron.ca', 'www.paysagistejamo.ca', 'Entreprise Jamo est maÃ®tre d\'Å“uvre dans le domaine de l\'amÃ©nagement paysager depuis maintenant 3 gÃ©nÃ©rations.  Avec elle, une Ã©quipe de trente employÃ©s et une flotte de 60 unitÃ©s de camions et Ã©quipements.  Nous sommes forts d\'une organisation bien structurÃ©e et de notre sens du style trÃ¨s artistique. Nous demeurons Ã  l\'affÃ»t des derniÃ¨res technologies dans le domaine afin de rÃ©pondre aux besoins et exigences de chaque client. Ayez l\'assurance d\'un service professionnel et d\'un prix compÃ©titif. Soyez parmi nos milliers de clients satisfaits et n\'oubliez pas que tout bon projet commence par un plan. Laissez-nous le soin de vous aidez Ã  planifiez votre projet.', 'Entreprise Jamo est maÃ®tre d\'Å“uvre dans le domaine de l\'amÃ©nagement paysager depuis maintenant 3 gÃ©nÃ©rations.  Avec elle, une Ã©quipe de trente employÃ©s et une flotte de 60 unitÃ©s de camions et Ã©quipements.  Nous sommes forts d\'une organisation bien structurÃ©e et de notre sens du style trÃ¨s artistique. Nous demeurons Ã  l\'affÃ»t des derniÃ¨res technologies dans le domaine afin de rÃ©pondre aux besoins et exigences de chaque client. Ayez l\'assurance d\'un service professionnel et d\'un prix compÃ©titif. Soyez parmi nos milliers de clients satisfaits et n\'oubliez pas que tout bon projet commence par un plan. Laissez-nous le soin de vous aidez Ã  planifiez votre projet.', 'Distributeur Pierres et PavÃ©s Rinox (http://www.rinox.ca/fr);Traitement de Pelouse Vert WOW;Plan et design;Marches;PavÃ© et dalle;Pierres naturelles;Terrasse et trottoir;Contour de piscine;Stationnement;Muret;Enrochement;Murs de soutÃ¨nement;Jardin d\'eau;Spa;Bordure;Gazon et plantation;Patio, pergola et menuiserie;Ensemencement hydraulique;Asphalte;Ã‰clairage;Irrigation et drainage;', 'Distributeur Pierres et PavÃ©s Rinox (http://www.rinox.ca/fr);Traitement de Pelouse Vert WOW;Plan et design;Marches;PavÃ© et dalle;Pierres naturelles;Terrasse et trottoir;Contour de piscine;Stationnement;Muret;Enrochement;Murs de soutÃ¨nement;Jardin d\'eau;Spa;Bordure;Gazon et plantation;Patio, pergola et menuiserie;Ensemencement hydraulique;Asphalte;Ã‰clairage;Irrigation et drainage;', '418-872-9663', 'paysagiste-jamo-photo1.jpg;\r\npaysagiste-jamo-photo2.jpg;\r\npaysagiste-jamo-photo3.jpg;', 'Commercant', 'paysagiste-jamo-inc', '4', '5%', '10%', 'appq-logo.png', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(31, 1, 16, 'Cabanon Innova', 'cabanon-innova-logo.png', 'Qu&eacute;bec', 'info@cabanoninnova.com', 'www.cabanoninnova.com', 'Fort de ces attributs et ayant flairÃ© les nouvelles tendances, Cabanon Innova propose des options audacieuses dâ€™amÃ©nagement intÃ©rieur afin de faciliter la gestion du rangement et dâ€™optimiser votre espace de vie sur votre terrain extÃ©rieur. Toutes les options sont envisageables pour vous soutenir dans la recherche de conceptions novatrices et adaptÃ©es Ã  vos besoins. Avec Cabanon Innova, la migration de vos espaces de vie de lâ€™intÃ©rieur vers lâ€™extÃ©rieur nâ€™aura jamais Ã©tÃ© si facile.   Du traditionnel au sur-mesure, Cabanon Innova conÃ§oit, fabrique et distribue des remises, gazebos, garages et clÃ´tures qui se distinguent tant par leur qualitÃ© de fabrication supÃ©rieure, leurs technologies de conception novatrices, que par leur soliditÃ© combinÃ©e Ã  leur style exclusif.', 'Fort de ces attributs et ayant flairÃ© les nouvelles tendances, Cabanon Innova propose des options audacieuses dâ€™amÃ©nagement intÃ©rieur afin de faciliter la gestion du rangement et dâ€™optimiser votre espace de vie sur votre terrain extÃ©rieur. Toutes les options sont envisageables pour vous soutenir dans la recherche de conceptions novatrices et adaptÃ©es Ã  vos besoins. Avec Cabanon Innova, la migration de vos espaces de vie de lâ€™intÃ©rieur vers lâ€™extÃ©rieur nâ€™aura jamais Ã©tÃ© si facile.   Du traditionnel au sur-mesure, Cabanon Innova conÃ§oit, fabrique et distribue des remises, gazebos, garages et clÃ´tures qui se distinguent tant par leur qualitÃ© de fabrication supÃ©rieure, leurs technologies de conception novatrices, que par leur soliditÃ© combinÃ©e Ã  leur style exclusif.', 'Cabanon Innova mise sur une trÃ¨s large gamme de produits.;Quâ€™il sâ€™agisse dâ€™une remise, dâ€™un garage, dâ€™un gazebo ou encore dâ€™une clÃ´ture, peu importe le produit que vous choisirez, vous pourrez compter sur notre expertise pour optimiser votre nouvelle acquisition.;Pour ce faire, nos conseillers sauront vous guider et vous proposer des structures dâ€™amÃ©nagement intÃ©rieur qui nâ€™ont aucune commune mesure avec ce quâ€™offre la concurrence.;Opter pour Cabanon Innova, câ€™est vous assurer une construction adaptÃ©e Ã  vos besoins.;', 'Cabanon Innova mise sur une trÃ¨s large gamme de produits.;Quâ€™il sâ€™agisse dâ€™une remise, dâ€™un garage, dâ€™un gazebo ou encore dâ€™une clÃ´ture, peu importe le produit que vous choisirez, vous pourrez compter sur notre expertise pour optimiser votre nouvelle acquisition.;Pour ce faire, nos conseillers sauront vous guider et vous proposer des structures dâ€™amÃ©nagement intÃ©rieur qui nâ€™ont aucune commune mesure avec ce quâ€™offre la concurrence.;Opter pour Cabanon Innova, câ€™est vous assurer une construction adaptÃ©e Ã  vos besoins.;', '1 844 573 6473', 'cabanon-innova-photo1.jpg;\r\ncabanon-innova-photo2.jpg;\r\ncabanon-innova-photo3.jpg;', 'Commercant', 'cabanon-innova', '4', '2%', '3%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(31, 2, 16, 'Cabanon Innova', 'cabanon-innova-logo.png', 'Qu&eacute;bec', 'info@cabanoninnova.com', 'www.cabanoninnova.com', 'Fort de ces attributs et ayant flairÃ© les nouvelles tendances, Cabanon Innova propose des options audacieuses dâ€™amÃ©nagement intÃ©rieur afin de faciliter la gestion du rangement et dâ€™optimiser votre espace de vie sur votre terrain extÃ©rieur. Toutes les options sont envisageables pour vous soutenir dans la recherche de conceptions novatrices et adaptÃ©es Ã  vos besoins. Avec Cabanon Innova, la migration de vos espaces de vie de lâ€™intÃ©rieur vers lâ€™extÃ©rieur nâ€™aura jamais Ã©tÃ© si facile.   Du traditionnel au sur-mesure, Cabanon Innova conÃ§oit, fabrique et distribue des remises, gazebos, garages et clÃ´tures qui se distinguent tant par leur qualitÃ© de fabrication supÃ©rieure, leurs technologies de conception novatrices, que par leur soliditÃ© combinÃ©e Ã  leur style exclusif.', 'Fort de ces attributs et ayant flairÃ© les nouvelles tendances, Cabanon Innova propose des options audacieuses dâ€™amÃ©nagement intÃ©rieur afin de faciliter la gestion du rangement et dâ€™optimiser votre espace de vie sur votre terrain extÃ©rieur. Toutes les options sont envisageables pour vous soutenir dans la recherche de conceptions novatrices et adaptÃ©es Ã  vos besoins. Avec Cabanon Innova, la migration de vos espaces de vie de lâ€™intÃ©rieur vers lâ€™extÃ©rieur nâ€™aura jamais Ã©tÃ© si facile.   Du traditionnel au sur-mesure, Cabanon Innova conÃ§oit, fabrique et distribue des remises, gazebos, garages et clÃ´tures qui se distinguent tant par leur qualitÃ© de fabrication supÃ©rieure, leurs technologies de conception novatrices, que par leur soliditÃ© combinÃ©e Ã  leur style exclusif.', 'Cabanon Innova mise sur une trÃ¨s large gamme de produits.;Quâ€™il sâ€™agisse dâ€™une remise, dâ€™un garage, dâ€™un gazebo ou encore dâ€™une clÃ´ture, peu importe le produit que vous choisirez, vous pourrez compter sur notre expertise pour optimiser votre nouvelle acquisition.;Pour ce faire, nos conseillers sauront vous guider et vous proposer des structures dâ€™amÃ©nagement intÃ©rieur qui nâ€™ont aucune commune mesure avec ce quâ€™offre la concurrence.;Opter pour Cabanon Innova, câ€™est vous assurer une construction adaptÃ©e Ã  vos besoins.;', 'Cabanon Innova mise sur une trÃ¨s large gamme de produits.;Quâ€™il sâ€™agisse dâ€™une remise, dâ€™un garage, dâ€™un gazebo ou encore dâ€™une clÃ´ture, peu importe le produit que vous choisirez, vous pourrez compter sur notre expertise pour optimiser votre nouvelle acquisition.;Pour ce faire, nos conseillers sauront vous guider et vous proposer des structures dâ€™amÃ©nagement intÃ©rieur qui nâ€™ont aucune commune mesure avec ce quâ€™offre la concurrence.;Opter pour Cabanon Innova, câ€™est vous assurer une construction adaptÃ©e Ã  vos besoins.;', '1 844 573 6473', 'cabanon-innova-photo1.jpg;\r\ncabanon-innova-photo2.jpg;\r\ncabanon-innova-photo3.jpg;', 'Commercant', 'cabanon-innova', '12', '2%', '3%', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(32, 2, 7, 'Allard Construction', 'allard-construction-logo.png', 'Lévis', 'info@allardconstruction.ca', 'www.allardconstruction.ca', 'Construction Allard est une entreprise dynamique qui se dÃ©marque tant par la qualitÃ© de ses constructions que de par son service Ã  la clientÃ¨le personnalisÃ© et attentionnÃ©.  Sâ€™Ã©tant forgÃ© une solide rÃ©putation dans la construction et la rÃ©novation haut de gamme, la minutie de notre Ã©quipe saura mener votre projet Ã  terme, et en fera une rÃ©ussite.\r\n\r\nOsez lâ€™expÃ©rience Allard!\r\n', 'Construction Allard est une entreprise dynamique qui se dÃ©marque tant par la qualitÃ© de ses constructions que de par son service Ã  la clientÃ¨le personnalisÃ© et attentionnÃ©.  Sâ€™Ã©tant forgÃ© une solide rÃ©putation dans la construction et la rÃ©novation haut de gamme, la minutie de notre Ã©quipe saura mener votre projet Ã  terme, et en fera une rÃ©ussite.\r\n\r\nOsez lâ€™expÃ©rience Allard!\r\n', 'Construction et rÃ©novation;RÃ©sidentielle, commercial et institutionnelle;Gestion de projet;Projet clÃ©e en main;Projet Ã  cost plus;Estimation gratuite', 'Construction et rÃ©novation;RÃ©sidentielle, commercial et institutionnelle;Gestion de projet;Projet clÃ©e en main;Projet Ã  cost plus;Estimation gratuite', '418 988-9995', 'photo-allard-construction1.jpg;photo-allard-construction2.jpg;photo-allard-construction3.jpg;', 'Commercant', 'allard-construction', '4', '250$ en certificat cadeau chez un de nos fournisseurs participants*', '500$ en certificat cadeau chez un de nos fournisseurs participants* <br><br> *Ã€ la signature dâ€™un contrat minimal de 20 000$', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00'),
(32, 1, 7, 'Allard Construction', 'allard-construction-logo.png', 'Lévis', 'info@allardconstruction.ca', 'www.allardconstruction.ca', 'Construction Allard est une entreprise dynamique qui se dÃ©marque tant par la qualitÃ© de ses constructions que de par son service Ã  la clientÃ¨le personnalisÃ© et attentionnÃ©.  Sâ€™Ã©tant forgÃ© une solide rÃ©putation dans la construction et la rÃ©novation haut de gamme, la minutie de notre Ã©quipe saura mener votre projet Ã  terme, et en fera une rÃ©ussite.\r\n\r\nOsez lâ€™expÃ©rience Allard!\r\n', 'Construction Allard est une entreprise dynamique qui se dÃ©marque tant par la qualitÃ© de ses constructions que de par son service Ã  la clientÃ¨le personnalisÃ© et attentionnÃ©.  Sâ€™Ã©tant forgÃ© une solide rÃ©putation dans la construction et la rÃ©novation haut de gamme, la minutie de notre Ã©quipe saura mener votre projet Ã  terme, et en fera une rÃ©ussite.\r\n\r\nOsez lâ€™expÃ©rience Allard!\r\n', 'Construction et rÃ©novation;RÃ©sidentielle, commercial et institutionnelle;Gestion de projet;Projet clÃ©e en main;Projet Ã  cost plus;Estimation gratuite', 'Construction et rÃ©novation;RÃ©sidentielle, commercial et institutionnelle;Gestion de projet;Projet clÃ©e en main;Projet Ã  cost plus;Estimation gratuite', '418 988-9995', 'photo-allard-construction1.jpg;photo-allard-construction2.jpg;photo-allard-construction3.jpg;', 'Commercant', 'allard-construction', '4', '250$ en certificat cadeau chez un de nos fournisseurs participants*', '500$ en certificat cadeau chez un de nos fournisseurs participants* <br><br> *Ã€ la signature dâ€™un contrat minimal de 20 000$', '', '2015-11-27 14:19:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_commercants_category`
--

CREATE TABLE `t_commercants_category` (
  `id` int(10) NOT NULL,
  `NameFR` varchar(50) NOT NULL,
  `NameEN` varchar(50) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `img` varchar(150) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_commercants_category`
--

INSERT INTO `t_commercants_category` (`id`, `NameFR`, `NameEN`, `Class`, `img`, `updated_at`, `created_at`) VALUES
(1, 'Hypoth&egrave;que', 'Mortgage', 'financement', 'financement-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(2, 'Assurance habitation', 'Home Insurance', 'assurance-habitation', 'assurances-habitation-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(3, 'Arpenteur-G&eacute;om&egrave;tre', 'Land surveyor', 'arpentage', 'arpentage-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(5, 'Inspecteur en b&acirc;timent', 'Building inspector', 'inspecteur', 'inspecteur-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(6, 'Notaires', 'Notary', 'notaire', 'notaire-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(7, 'Construction', 'Construction', 'construction', 'construction-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(8, 'Assurance hypoth&eacute;caire', 'Mortgage insurance', 'assurances-hypo', 'assurances-hypothecaire-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(9, 'R&eacute;novation', 'Renovation', 'renovation', 'renovation-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(4, 'DÃ©coration', 'Designer', 'home-staging', 'house-staging-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(10, 'Fissures', 'Foundation repair', 'fissures', 'fissures-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(11, 'Drains et Excavation', 'Drains and Excavation', 'drains-excavation', 'drains-excavation-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(12, 'Projet domiciliaire', 'Housing project', 'projet-domiciliaire', 'projet-domiciliaire-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(13, 'D&eacute;m&eacute;nagement', 'Mover', 'demenagement', 'demenagement-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(14, 'Stores', 'Windows blinds', 'stores', 'stores-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(15, 'PAYSAGISTE', 'LANDSCAPING', 'paysagiste', 'paysagiste-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00'),
(16, 'CABANON', 'SHED', 'cabanon', 'cabanon-icon.png', '2015-11-27 14:19:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_commercants_contacts`
--

CREATE TABLE `t_commercants_contacts` (
  `CommercantID` int(10) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `CityName` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_commercants_contacts`
--

INSERT INTO `t_commercants_contacts` (`CommercantID`, `Phone`, `CityName`, `updated_at`, `created_at`) VALUES
(2, '418-557-3903', 'Jonquiere', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(2, '418-213-1241', 'Chicoutimi', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(3, '1-855-431-7869', 'sans frais', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(4, '418 872-4620', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(5, '418 254-8924', 'Sans frais', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(6, '418 651-5435', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(7, '(418) 658-0778', 'Saint-Augustin-de-Desmaures', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(8, '(418) 658-0778', 'Saint-Augustin-de-Desmaures', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(9, '418-831-4060', 'Saint-Nicolas', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(11, '418-832-9090', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(19, '418-660-1060', 'T&eacute;l&eacute;phone', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(19, '418-683-5311', 'T&eacute;l&eacute;copieur', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(18, '418-614-3346', 'T&eacute;l&eacute;phone', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(18, '581-741-1600', 'T&eacute;l&eacute;copieur', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(13, '418-628-5544', 'T&eacute;l&eacute;phone', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(13, '418-628-6279', 'T&eacute;l&eacute;copieur', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(14, '418-527-0005', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(15, '418-561-3008', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(16, '418-561-3008', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(12, '418-628-1877', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(17, '418-686-8000', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(10, '418-554-6060', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(20, '418 843-0727', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(20, '1 844 247-0727', 'sans frais', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(22, '418-682-3255', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(23, '418-682-3255', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(24, '418-684-0005', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(25, '418-576-1038', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(26, '418-576-1038', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(27, '418-948-8898', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(27, '418-835-9066', 'L&eacute;vis', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(28, '418-520-4449', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(29, '(418) 653-9324', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(30, '418-872-9663', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(31, '1 844 573 6473', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00'),
(32, '418-988-9995', 'Qu&eacute;bec', '2015-11-27 14:20:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_company`
--

CREATE TABLE `t_company` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Mail` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_company`
--

INSERT INTO `t_company` (`ID`, `Name`, `Address`, `Phone`, `Mail`) VALUES
(1, 'agence captiv', '1279', '4185571223', 'daas12@hotmail.com'),
(2, 'agence captiv', '1279', '4185571223', 'daas12@hotmail.com'),
(3, 'test', '0', '4185527121', 'szd112@hotmail.com'),
(4, 'test123', '3902 rue d\'orlÃ©ans', '4185573902', 'ftgirard@hotmail.com'),
(5, 'Francis Tremblay-Girard', '3902 rue d\'orlÃ©ans', '4185573902', 'ftgirard@hotmail.com'),
(6, 'test 456', '3902 rue d\'orlÃ©ans', '4185573902', 'ftgirard@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `t_concours`
--

CREATE TABLE `t_concours` (
  `UserID` int(10) NOT NULL,
  `Transaction_ID` int(10) NOT NULL,
  `Created_Date` datetime NOT NULL,
  `FirstName` varchar(250) NOT NULL,
  `LastName` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Phone` varchar(250) NOT NULL,
  `Other` varchar(250) NOT NULL,
  `TargetAddress` varchar(250) NOT NULL,
  `FirstName2` varchar(250) NOT NULL,
  `LastName2` varchar(250) NOT NULL,
  `Address2` varchar(250) NOT NULL,
  `Phone2` varchar(250) NOT NULL,
  `Other2` varchar(250) NOT NULL,
  `TargetAddress2` varchar(250) NOT NULL,
  `Mail2` varchar(250) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_coutier_property`
--

CREATE TABLE `t_coutier_property` (
  `PropertyID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_coutier_property`
--

INSERT INTO `t_coutier_property` (`PropertyID`, `Name`, `updated_at`, `created_at`) VALUES
(1, 'RÃƒÂ©sidentiel', '2015-11-27 14:21:18', '0000-00-00 00:00:00'),
(2, 'Multi-Logements', '2015-11-27 14:21:18', '0000-00-00 00:00:00'),
(3, 'Commercial', '2015-11-27 14:21:18', '0000-00-00 00:00:00'),
(4, 'Militairy', '2015-11-27 14:21:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_coutier_property_user`
--

CREATE TABLE `t_coutier_property_user` (
  `CourtierID` int(10) NOT NULL,
  `PropertyID` int(10) NOT NULL,
  `CityID` int(10) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_coutier_property_user`
--

INSERT INTO `t_coutier_property_user` (`CourtierID`, `PropertyID`, `CityID`, `updated_at`, `created_at`) VALUES
(335, 4, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(339, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(342, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(346, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(346, 2, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(352, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(355, 4, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(356, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(357, 1, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(357, 2, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(358, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(359, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(362, 1, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(362, 2, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(376, 2, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(377, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(381, 1, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(423, 0, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(430, 0, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(478, 2, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(479, 0, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(481, 0, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(483, 0, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(501, 0, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(502, 0, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(508, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(532, 0, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(362, 3, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(548, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(590, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(357, 2, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(357, 3, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(430, 0, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(423, 0, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(532, 0, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(483, 0, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(481, 0, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(335, 1, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(614, 1, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(614, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(615, 2, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(630, 2, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(630, 2, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(655, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(781, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(356, 4, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(376, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(357, 1, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(358, 1, 1, '2016-02-03 18:20:00', '0000-00-00 00:00:00'),
(508, 4, 2, '2016-02-03 18:20:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_error_log`
--

CREATE TABLE `t_error_log` (
  `ErrorID` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `IP` varchar(50) NOT NULL,
  `URL` varchar(100) NOT NULL,
  `PageName` varchar(500) NOT NULL,
  `FunctionName` varchar(50) NOT NULL,
  `Line` varchar(10) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ErrorMessage` varchar(500) NOT NULL,
  `Params` varchar(500) NOT NULL,
  `SectorID` varchar(10) NOT NULL,
  `StackTraces` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_error_log`
--

INSERT INTO `t_error_log` (`ErrorID`, `UserID`, `IP`, `URL`, `PageName`, `FunctionName`, `Line`, `Date`, `ErrorMessage`, `Params`, `SectorID`, `StackTraces`, `updated_at`, `created_at`) VALUES
(1, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/admin/index.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/admin/index.php', '', '65', '2016-02-17 18:34:12', 'include(Resources/Resen.php): failed to open stream: No such file or directory', '', '2', '#0 /var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/admin/index.php(65): error_handler(2, \'include(Resourc...\', \'/var/www/vhosts...\', 65, Array)\n#1 /var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/admin/index.php(65): include()\n#2 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-17 18:47:31', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455734852.58797597885131', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-17 18:47:32', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 376, '::1', 'http://localhost:60951/index.php?Page=Transaction', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicActionCourtier.php', '', '44', '2016-02-17 19:39:07', 'Undefined index: txtLastName', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicActionCourtier.php(44): error_handler(8, \'Undefined index...\', \'C:UsersMarjor...\', 44, Array)\n#1 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicActionCourtier.php(12): PageAction->OnInit(Object(User))\n#2 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(80): PageAction->__construct(Object(User))\n#3 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 376, '::1', 'http://localhost:60951/index.php?Page=Transaction', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicActionCourtier.php', '', '44', '2016-02-17 19:39:10', 'Undefined index: txtLastName', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicActionCourtier.php(44): error_handler(8, \'Undefined index...\', \'C:UsersMarjor...\', 44, Array)\n#1 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicActionCourtier.php(12): PageAction->OnInit(Object(User))\n#2 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(80): PageAction->__construct(Object(User))\n#3 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 376, '::1', 'http://localhost:60951/index.php?Page=TransactionDetails', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicCourtierTransactionDetails.php', '', '25', '2016-02-17 19:52:28', 'Undefined property: TransactionDetails::$StreetName', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicCourtierTransactionDetails.php(25): error_handler(8, \'Undefined prope...\', \'C:UsersMarjor...\', 25, Array)\n#1 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(174): include(\'C:UsersMarjor...\')\n#2 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 376, '::1', 'http://localhost:60951/index.php?Page=TransactionDetails', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicCourtierTransactionDetails.php', '', '25', '2016-02-17 19:53:40', 'Undefined property: TransactionDetails::$StreetName', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicCourtierTransactionDetails.php(25): error_handler(8, \'Undefined prope...\', \'C:UsersMarjor...\', 25, Array)\n#1 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(174): include(\'C:UsersMarjor...\')\n#2 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 376, '::1', 'http://localhost:60951/index.php?Page=TransactionDetails', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicCourtierTransactionDetails.php', '', '25', '2016-02-17 19:53:50', 'Undefined property: Transactions::$App', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicCourtierTransactionDetails.php(25): error_handler(8, \'Undefined prope...\', \'C:UsersMarjor...\', 25, Array)\n#1 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(174): include(\'C:UsersMarjor...\')\n#2 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 376, '::1', 'http://localhost:60951/index.php?Page=TransactionDetails', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicCourtierTransactionDetails.php', '', '25', '2016-02-17 19:55:04', 'Undefined property: Transactions::$App', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicCourtierTransactionDetails.php(25): error_handler(8, \'Undefined prope...\', \'C:UsersMarjor...\', 25, Array)\n#1 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(174): include(\'C:UsersMarjor...\')\n#2 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 376, '::1', 'http://localhost:60951/index.php?Page=Transaction', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php', '', '46', '2016-02-17 19:59:04', 'Undefined variable: zWJX', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(46): error_handler(8, \'Undefined varia...\', \'C:UsersMarjor...\', 46, Array)\n#1 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 376, '::1', 'http://localhost:60951/index.php', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php', '', '46', '2016-02-17 19:59:09', 'Undefined variable: zWJX', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(46): error_handler(8, \'Undefined varia...\', \'C:UsersMarjor...\', 46, Array)\n#1 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 376, '::1', 'http://localhost:60951/index.php', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php', '', '46', '2016-02-17 19:59:57', 'Undefined variable: zWJX', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(46): error_handler(8, \'Undefined varia...\', \'C:UsersMarjor...\', 46, Array)\n#1 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 376, '::1', 'http://localhost:60951/index.php', 'C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php', '', '46', '2016-02-17 20:00:53', 'Undefined variable: zWJX', '', '2', '#0 C:UsersMarjorieDocumentsVisual Studio 2010SvntrunkImmoclicAdminImmoClicindex.php(46): error_handler(8, \'Undefined varia...\', \'C:UsersMarjor...\', 46, Array)\n#1 {main}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455744206.24061989784240', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-17 21:23:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455750338.51765799522399', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-17 23:05:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455752099.93403911590576', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-17 23:34:59', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455755344.69864892959594', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 00:29:04', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:04:41', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455811481.06852197647094', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:04:41', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:30:37', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455813037.35536408424377', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:30:37', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:30:39', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:30:39', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/wp-admin', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:30:57', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:30:59', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-login.php?redirect_to=http%3A%2F%2Fphase2.immo-c', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 16:31:00', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455816076.09010696411132', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 17:21:16', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:31:07', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455823867.53600192070007', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:31:07', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:31:10', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:51:51', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-login.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:53:21', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:53:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php?action=dashboard-widgets&wi', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:53:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&ip-geo-block-', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:53:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&id=10&ip-geo-', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:53:52', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&id=1&ip-geo-b', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:53:58', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php?id=1', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:54:15', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:54:30', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:55:00', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&id=1&ip-geo-b', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:55:06', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:55:09', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&id=1&ip-geo-b', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:55:29', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:55:32', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/financement-hypothecaire/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:56:09', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:56:36', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&id=1&ip-geo-b', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:56:54', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:57:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:58:05', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:58:11', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:58:28', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:58:36', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:58:43', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:58:54', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 19:59:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:00:20', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:00:36', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:00:39', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&ip-geo-block-', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:00:53', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&id=5&ip-geo-b', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:09', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php?id=5', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:17', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin.php?page=gf_edit_forms&id=5&ip-geo-b', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/financement-hypothecaire/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:29', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 0, '24.37.2.162', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:33', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:41', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 0, '24.37.2.162', 'http://phase2.immo-clic.ca/immobilier/blogue/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:50', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/upload.php?ip-geo-block-auth-nonce=ec73482', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:58', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:01:59', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:00', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:02', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:04', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/async-upload.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:06', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:06', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/upload.php?ip-geo-block-auth-nonce=ec73482', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:24', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:25', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:29', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:32', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:02:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/en/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:03:15', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:03:24', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:05:24', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:07:24', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/en/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:01', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:05', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/async-upload.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:17', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/upload.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:23', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:25', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:29', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:30', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:09:59', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/en/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:10:01', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:10:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:12:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/en/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:14:24', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:14:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:16:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:18:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:19:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:20:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `t_error_log` (`ErrorID`, `UserID`, `IP`, `URL`, `PageName`, `FunctionName`, `Line`, `Date`, `ErrorMessage`, `Params`, `SectorID`, `StackTraces`, `updated_at`, `created_at`) VALUES
(104, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:22:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:24:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:26:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:28:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455827318.83391499519348', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:28:39', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 0, '24.37.2.162', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:39:19', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 0, '24.37.2.162', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:40:09', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:43:07', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:43:23', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 0, '24.37.2.162', 'http://phase2.immo-clic.ca/immobilier/financement-hypothecaire/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:43:52', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:44:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:46:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455828369.05938100814819', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:46:09', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:48:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:50:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:52:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:53:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:55:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:57:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 20:59:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:01:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:19:53', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455830393.87345695495605', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:19:53', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 0, '107.178.204.225', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:19:56', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement-hypothecaire/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:20:10', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:20:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:22:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:23:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:25:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:27:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455830875.47780108451843', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:27:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:29:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:30:40', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:30:43', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:30:45', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:30:45', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:31:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:46:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/edit.php?post_type=page&ip-geo-block-auth-', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:46:23', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:46:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:46:41', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:46:56', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:47:11', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:47:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:13', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/post.php?post=3401&action=edit&lang=fr&ip-', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:25', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:36', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/post.php?ip-geo-block-auth-nonce=ec73482d2', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/post.php?post=3401&action=edit&lang=fr&mes', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:39', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php?action=oembed-cache&post=34', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:41', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:41', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/edit.php?post_type=page&ip-geo-block-auth-', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:45', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:46', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:47', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:50', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:48:53', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:49:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:49:34', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:51:02', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:53:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:55:02', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455832503.29630589485168', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:55:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:57:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 21:59:02', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:01:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:03:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:05:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:07:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:09:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:11:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:13:02', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:15:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:17:03', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:17:43', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:19:44', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:21:43', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:23:44', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-admin/admin-ajax.php', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 22:25:44', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 23:11:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455837082.64319896697998', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 23:11:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-18 23:11:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:03:43', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455890623.65856099128723', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:03:44', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:03:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:04:50', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/confirmation-courtiers/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:04:51', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:08:24', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:15:16', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:15:36', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:18:26', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:19:01', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/confirmation-courtiers/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:19:02', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:34:34', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455892474.48904395103454', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:34:34', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:39:57', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/confirmation-taux-hypothecaire/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:39:58', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:46:53', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:46:54', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:49:24', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:51:08', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:51:44', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:51:46', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:51:47', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:54:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/en/financing/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:54:37', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `t_error_log` (`ErrorID`, `UserID`, `IP`, `URL`, `PageName`, `FunctionName`, `Line`, `Date`, `ErrorMessage`, `Params`, `SectorID`, `StackTraces`, `updated_at`, `created_at`) VALUES
(210, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/en/financing/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:54:41', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/en/broker/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:54:45', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/en/financing/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:54:47', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/en/broker/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:54:49', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:54:55', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/en/broker/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:55:09', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/en/financing/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:55:11', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 0, '24.37.2.162', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:55:14', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/fr/financing/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:55:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/en/financing/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:55:23', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/fr/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:55:35', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:55:36', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:57:47', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:57:56', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:58:02', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/en/broker/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:58:06', 'The called constructor method for WP_Widget is <strong>deprecated</strong> since version 4.3.0! Use <pre>__construct()</pre> instead.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 14:58:10', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-sud', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:00:40', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:00:44', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 0, '24.37.2.162', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:02:34', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 0, '24.37.2.162', 'http://phase2.immo-clic.ca/immobilier/partenaires/?secteur=quebec-rive-sud', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:03:38', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:03:45', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:04:14', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:05:06', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:23:44', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:24:43', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:25:07', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:25:33', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:25:58', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/?secteur=quebec-rive-nord', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:26:34', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:28:19', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455895699.91179394721984', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:28:20', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:36:10', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/blogue/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:36:18', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/un-courtier-immobilier-en-2015/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:36:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/un-courtier-immobilier-en-2015/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:36:53', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:37:20', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:37:20', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:37:28', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:37:32', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/blogue/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:37:34', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/video-du-lancement-officiel-dimmo-clic-ca/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:37:39', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:37:56', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 15:37:56', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/blogue/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 16:01:24', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/quel-sont-les-couts-a-prevoir-lors-de-lachat-dune-propriete/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 16:01:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/linspection-preachat-un-bon-investissement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 16:10:27', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/partenaires/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 16:26:52', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455899212.61001610755920', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 16:26:52', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 16:50:12', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 16, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/courtier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 16:50:13', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 0, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 17:08:56', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455901736.37272691726684', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 17:08:56', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 0, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/financement/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 17:10:21', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 783, '24.203.248.199', 'http://phase2.immo-clic.ca/immobilier/confirmation-taux-hypothecaire/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 17:10:22', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 0, '142.167.222.57', 'http://phase2.immo-clic.ca/immobilier/', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 17:33:05', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 0, '104.156.70.39', 'http://phase2.immo-clic.ca/immobilier/plateforme/wp-cron.php?doing_wp_cron=1455903185.19721388816833', '/var/www/vhosts/immo-clic.ca/phase2.immo-clic.ca/public/immobilier/plateforme/wp-includes/functions.php', '', '3624', '2016-02-19 17:33:05', 'La mÃ©thode constructor appelÃ©e pour WP_Widget est <strong>obsolÃ¨te</strong> depuis la version 4.3.0&nbsp;! Veuillez utiliser <pre>__construct()</pre> Ã  la place.', '', '2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_group`
--

CREATE TABLE `t_group` (
  `GroupID` int(10) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Repository` varchar(20) NOT NULL,
  `DefaultPage` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_group`
--

INSERT INTO `t_group` (`GroupID`, `Title`, `Repository`, `DefaultPage`, `created_at`, `updated_at`) VALUES
(6, 'my group', '', '', '2016-04-07 05:24:52', '2016-04-07 05:24:52'),
(7, 'Admin', '', '', '2016-04-07 05:26:45', '2016-04-07 05:26:45'),
(8, 'test', '', '', '2016-04-07 06:19:47', '2016-04-07 06:19:47'),
(9, 'XYZ', '', '', '2016-04-07 07:08:44', '2016-04-07 07:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `t_home_type`
--

CREATE TABLE `t_home_type` (
  `ID` int(10) NOT NULL,
  `FRName` varchar(50) NOT NULL,
  `ENName` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_job_info`
--

CREATE TABLE `t_job_info` (
  `Job_Name` varchar(50) NOT NULL,
  `Execute_Date` datetime NOT NULL,
  `Actions` varchar(2000) NOT NULL,
  `successful` int(1) NOT NULL,
  `Exception` varchar(2000) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_job_info`
--

INSERT INTO `t_job_info` (`Job_Name`, `Execute_Date`, `Actions`, `successful`, `Exception`, `updated_at`, `created_at`) VALUES
('GenerateReports', '2016-02-17 00:00:00', '1 reports', 1, '', '2016-02-17 17:51:22', '0000-00-00 00:00:00'),
('GenerateReports', '2016-02-18 00:00:00', '1 reports', 1, '', '2016-02-18 16:04:40', '0000-00-00 00:00:00'),
('GenerateReports', '2016-02-19 00:00:00', '1 reports', 1, '', '2016-02-19 14:03:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_login_attempts`
--

CREATE TABLE `t_login_attempts` (
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_login_attempts`
--

INSERT INTO `t_login_attempts` (`IP`, `Attempts`, `LastLogin`, `updated_at`, `created_at`) VALUES
('127.0.0.1', 1, '2016-02-09 23:24:18', '2016-02-10 04:24:18', '0000-00-00 00:00:00'),
('::1', 1, '2016-02-17 13:59:35', '2016-02-17 18:59:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_mailto`
--

CREATE TABLE `t_mailto` (
  `UserMail` varchar(250) NOT NULL,
  `MailList` varchar(1500) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_package_gallery`
--

CREATE TABLE `t_package_gallery` (
  `id` int(11) NOT NULL,
  `PackageID` int(11) NOT NULL COMMENT 'foreign key',
  `PictureName` varchar(255) NOT NULL,
  `PictureURL` text NOT NULL,
  `Language` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_package_gallery`
--

INSERT INTO `t_package_gallery` (`id`, `PackageID`, `PictureName`, `PictureURL`, `Language`, `created_at`, `updated_at`) VALUES
(1, 2, '1448626500.png', 'http://beta.cisin.com/uploads/packageGallery/1448626500.png', 'EN', '2015-11-27 06:45:00', '2015-11-27 06:45:00'),
(2, 2, '1448626708.png', 'http://beta.cisin.com/uploads/packageGallery/1448626708.png', 'FR', '2015-11-27 06:48:28', '2015-11-27 06:48:28'),
(3, 4, '1451300436.jpeg', 'http://beta.cisin.com:8080/uploads/packageGallery/1451300436.jpeg', 'EN', '2015-12-28 05:30:36', '2015-12-28 05:30:36'),
(4, 1, '1451300453.jpeg', 'http://beta.cisin.com:8080/uploads/packageGallery/1451300453.jpeg', 'FR', '2015-12-28 05:30:53', '2015-12-28 05:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `t_payments`
--

CREATE TABLE `t_payments` (
  `id` int(10) NOT NULL,
  `Txn_id` varchar(150) NOT NULL,
  `BuildingID` int(10) NOT NULL,
  `Paypal_id` varchar(150) NOT NULL,
  `Price` double(10,2) NOT NULL,
  `Paid` int(11) NOT NULL COMMENT '0 = not paid, 1 = paid',
  `Create_at` datetime NOT NULL,
  `Expire_at` datetime NOT NULL,
  `Forfait_id` int(10) NOT NULL,
  `Txn_type` varchar(150) NOT NULL,
  `UserID` int(10) NOT NULL,
  `Token` varchar(150) NOT NULL,
  `AuthID` varchar(150) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `option1` int(1) DEFAULT NULL,
  `option2` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_payments`
--

INSERT INTO `t_payments` (`id`, `Txn_id`, `BuildingID`, `Paypal_id`, `Price`, `Paid`, `Create_at`, `Expire_at`, `Forfait_id`, `Txn_type`, `UserID`, `Token`, `AuthID`, `updated_at`, `created_at`, `option1`, `option2`) VALUES
(45, '0', 0, '0', 294.95, 0, '2016-02-22 00:00:00', '2016-06-22 00:00:00', 1, '0', 2, '0', '0', '2016-02-22 09:39:38', '2016-02-22 09:39:38', NULL, NULL),
(46, '0', 0, '0', 294.95, 0, '2016-02-22 00:00:00', '2016-06-22 00:00:00', 1, '0', 2, '0', '0', '2016-02-22 09:42:08', '2016-02-22 09:42:08', NULL, NULL),
(47, '0', 0, '0', 194.95, 0, '2016-02-22 00:00:00', '2016-06-22 00:00:00', 1, '0', 2, '0', '0', '2016-02-22 10:12:13', '2016-02-22 10:12:13', NULL, NULL),
(48, '0', 0, '0', 194.95, 0, '2016-02-22 00:00:00', '2016-06-22 00:00:00', 1, '0', 2, '0', '0', '2016-02-22 10:12:33', '2016-02-22 10:12:33', NULL, NULL),
(49, '0', 0, '0', 294.95, 0, '2016-02-22 00:00:00', '2016-06-22 00:00:00', 1, '0', 2, '0', '0', '2016-02-22 10:15:06', '2016-02-22 10:15:06', NULL, NULL),
(50, '0', 0, '0', 294.95, 0, '2016-02-22 00:00:00', '2016-06-22 00:00:00', 1, '0', 2, '0', '0', '2016-02-22 10:19:09', '2016-02-22 10:19:09', NULL, NULL),
(51, '0', 0, '0', 294.95, 0, '2016-02-22 00:00:00', '2016-06-22 00:00:00', 1, '0', 2, '0', '0', '2016-02-22 10:21:14', '2016-02-22 10:21:14', NULL, NULL),
(52, '9V233625U9126443X', 0, 'Building', 194.95, 2, '2016-02-22 00:00:00', '2016-06-22 00:00:00', 1, 'Credit Card', 2, '0', '0', '2016-02-22 10:27:25', '2016-02-22 10:27:25', NULL, NULL),
(53, '0', 0, '0', 449.95, 0, '2016-02-22 00:00:00', '0000-00-00 00:00:00', 3, '0', 2, '0', '0', '2016-02-22 10:39:22', '2016-02-22 10:39:22', NULL, NULL),
(54, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:37:06', '2016-02-23 02:37:06', NULL, NULL),
(55, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:37:26', '2016-02-23 02:37:26', NULL, NULL),
(56, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:39:47', '2016-02-23 02:39:47', NULL, NULL),
(57, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:41:05', '2016-02-23 02:41:05', NULL, NULL),
(58, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:47:04', '2016-02-23 02:47:04', NULL, NULL),
(59, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:47:20', '2016-02-23 02:47:20', NULL, NULL),
(60, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:52:53', '2016-02-23 02:52:53', NULL, NULL),
(61, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:53:00', '2016-02-23 02:53:00', NULL, NULL),
(62, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:55:23', '2016-02-23 02:55:23', NULL, NULL),
(63, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:58:22', '2016-02-23 02:58:22', NULL, NULL),
(64, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 02:58:42', '2016-02-23 02:58:42', NULL, NULL),
(65, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:00:33', '2016-02-23 03:00:33', NULL, NULL),
(66, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:09:11', '2016-02-23 03:09:11', NULL, NULL),
(67, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:11:59', '2016-02-23 03:11:59', NULL, NULL),
(68, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:14:48', '2016-02-23 03:14:48', NULL, NULL),
(69, '0', 0, '0', 224.15, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:15:28', '2016-02-23 03:15:28', NULL, NULL),
(70, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:26:47', '2016-02-23 03:26:47', NULL, NULL),
(71, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:28:11', '2016-02-23 03:28:11', NULL, NULL),
(72, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:30:31', '2016-02-23 03:30:31', NULL, NULL),
(73, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 03:33:01', '2016-02-23 03:33:01', NULL, NULL),
(74, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 04:47:36', '2016-02-23 04:47:36', NULL, NULL),
(75, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 04:49:58', '2016-02-23 04:49:58', NULL, NULL),
(76, '45J88023HW222292C', 17, '0', 517.33, 2, '2016-02-23 00:00:00', '0000-00-00 00:00:00', 3, 'expresscheckout', 2, 'EC-12Y497203J1495816', '0', '2016-02-23 06:54:21', '2016-02-23 06:52:57', 0, NULL),
(77, '0', 0, '0', 339.13, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'none', 2, '0', '0', '2016-02-23 07:13:21', '2016-02-23 07:11:09', 1, NULL),
(78, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 07:13:42', '2016-02-23 07:13:42', 1, NULL),
(79, '0', 0, '0', 339.13, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 07:14:26', '2016-02-23 07:14:26', 1, NULL),
(80, '98S91292YE999124X', 18, '0', 339.13, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'expresscheckout', 2, 'EC-29E66614486605020', '0', '2016-02-23 07:27:51', '2016-02-23 07:26:01', 1, NULL),
(81, '4XY17621XP3315104', 19, '0', 339.13, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'expresscheckout', 2, 'EC-9LX20211Y9016020F', '0', '2016-02-23 07:30:05', '2016-02-23 07:28:52', 1, NULL),
(82, '0', 0, '0', 194.95, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 07:57:23', '2016-02-23 07:57:23', 0, NULL),
(83, '0', 0, '0', 294.95, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 07:57:36', '2016-02-23 07:57:36', 1, NULL),
(84, '43E30793AE0668934', 0, '0', 294.95, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'expresscheckout', 2, 'EC-2XH423860J1976317', '0', '2016-02-23 08:03:20', '2016-02-23 08:01:51', 1, NULL),
(85, '0', 0, '0', 294.95, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'none', 2, '0', '0', '2016-02-23 08:16:51', '2016-02-23 08:16:16', 1, NULL),
(86, '9KY41331HM558383N', 41, '0', 194.95, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'expresscheckout', 2, 'EC-3U812261UC738853X', '0', '2016-02-23 11:00:27', '2016-02-23 08:17:08', 0, NULL),
(87, '3EU54558SG389643E', 28, '0', 294.95, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'expresscheckout', 1, 'EC-57608640E97365821', '0', '2016-02-23 08:44:16', '2016-02-23 08:43:04', 1, NULL),
(88, '3AB51644KE377933S', 35, '0', 194.95, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'expresscheckout', 2, 'EC-72T089421M126863W', '0', '2016-02-23 10:10:23', '2016-02-23 08:47:41', 0, NULL),
(89, '5LK344531R8320438', 30, '0', 194.95, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'expresscheckout', 2, 'EC-86763818ED235651S', '0', '2016-02-23 08:52:19', '2016-02-23 08:51:27', 0, NULL),
(90, '0', 0, '0', 194.95, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 09:49:38', '2016-02-23 09:49:38', 0, NULL),
(91, '02L63850UL0638444', 36, '0', 194.95, 2, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, 'expresscheckout', 2, 'EC-47484015PC7932904', '0', '2016-02-23 10:14:24', '2016-02-23 09:51:09', 0, NULL),
(92, '0', 0, '0', 194.95, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 09:57:11', '2016-02-23 09:57:11', 0, NULL),
(93, '0', 0, '0', 194.95, 0, '2016-02-23 00:00:00', '2016-06-23 00:00:00', 1, '0', 2, '0', '0', '2016-02-23 09:58:56', '2016-02-23 09:58:56', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_recovery_password`
--

CREATE TABLE `t_recovery_password` (
  `Mail` varchar(250) NOT NULL,
  `Secret` varchar(50) NOT NULL,
  `Requested_Date` datetime NOT NULL,
  `IP` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_recovery_password`
--

INSERT INTO `t_recovery_password` (`Mail`, `Secret`, `Requested_Date`, `IP`, `updated_at`, `created_at`) VALUES
('lynda.devarennes@rbc.com', '7qtdhsxbz8rm23upnj6yw5v94lceafkg', '2015-01-08 08:26:54', '142.245.59.15', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('d.couture@nouvelledemeure.com', 'ldyb3twgsqpvujz9e6kh4cf52a7rn8mx', '2015-01-27 12:52:17', '206.162.175.122', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('d.couture@nouvelledemeure.com', 'gtl2vamzsh7wu9dy4ncj63pb8qk5fexr', '2015-01-27 12:53:20', '206.162.175.122', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('dbureau@nouvelledemeure.com', 'lrqp3zw7cf645xha9kesd8nut2yjbmvg', '2015-02-25 14:32:30', '24.48.1.31', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('dbureau@nouvelledemeure.com', 'm8can96e5pgwhjfvqlu42rx7tdksz3by', '2015-02-25 14:34:44', '24.48.1.31', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('markdore@expertcourtier.com', 'zcwphglbv3xaujqfs4ry2ken896dm57t', '2015-03-14 13:20:55', '74.56.187.215', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('markdore@expertcourtier.com', 'gx7fnrp6yj5h43wm9lbk2aectquvzs8d', '2015-03-14 14:45:02', '74.56.187.215', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('davidmontgrain@icloud.com', '36jbg54y8khr7s9dwv2czfupantqmlex', '2015-03-20 15:13:28', '24.114.100.124', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('faollen@gmail.com', 'tvrbexzy5kl89hsndca2fp6gu74q3mjw', '2015-03-23 11:40:32', '142.213.188.6', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('Empirerlt@yahoo.ca', '62kguzyqwd39jxsncaeplrb7tmvf8h45', '2015-04-12 22:13:19', '50.101.215.188', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('patrice.francoeur@rbc.com', 'uchpsv2763yekj9nz5rdmg4xtlqfa8wb', '2015-04-26 08:45:38', '207.253.174.84', '2015-11-27 14:22:46', '0000-00-00 00:00:00'),
('jpdeschenes@nouvelledemeure.com', 'scp4fm67b3dxjyrvkeh2gz895awlnqtu', '2015-06-17 00:02:40', '70.50.164.21', '2015-11-27 14:22:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_region`
--

CREATE TABLE `t_region` (
  `id` int(10) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Longitude` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `URL` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_region`
--

INSERT INTO `t_region` (`id`, `Name`, `Longitude`, `Latitude`, `URL`, `updated_at`, `created_at`) VALUES
(1, 'Québec Rive-Sud', NULL, NULL, 'quebec-rive-sud', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(2, 'Québec Rive-Nord', NULL, NULL, 'quebec-rive-nord', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(3, 'Centre-du-Québec', NULL, NULL, 'Centre-du-Quebec', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(4, 'Capitale-Nationale', NULL, NULL, 'Capitale-Nationale', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(5, 'Chaudière-Appalaches', NULL, NULL, 'Chaudiere-Appalaches', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(6, 'Côte-Nord', NULL, NULL, 'Cete-Nord', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(7, 'Estrie', NULL, NULL, 'Estrie', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(8, 'Gaspésie-Îles-de-la-Madeleine', NULL, NULL, 'Gaspesie-Iles-de-la-Madeleine', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(9, 'Lanaudière', NULL, NULL, 'Lanaudiere', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(10, 'Laurentides', NULL, NULL, 'Laurentides', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(11, 'Laval', NULL, NULL, 'Laval', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(12, 'Mauricie', NULL, NULL, 'Mauricie', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(13, 'Montréal / l\'Île', NULL, NULL, 'Montreal-Ile', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(14, 'Montérégie (Rive-Sud Montréal)', NULL, NULL, 'Monteregie-Rive-Sud', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(15, 'Montérégie Ouest', NULL, NULL, 'Monteregie-Ouest', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(16, 'Nord-du-Québec', NULL, NULL, 'Nord-du-Quebec', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(17, 'Outaouais', NULL, NULL, 'Outaouais', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(18, 'Portneuf', NULL, NULL, 'Portneuf', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(19, 'Bas-Saint-Laurent', NULL, NULL, 'Bas-Saint-Laurent', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(20, 'Abitibi-Témiscamingue', NULL, NULL, 'Abitibi-Temiscamingue', '2015-11-27 14:23:19', '0000-00-00 00:00:00'),
(21, 'Saguenay-Lac-Saint-Jean', NULL, NULL, 'Saguenay-Lac-Saint-Jean', '2015-11-27 14:23:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_review`
--

CREATE TABLE `t_review` (
  `id` int(10) NOT NULL COMMENT 'Review ID',
  `UserID` int(10) NOT NULL COMMENT 'UserID from t_user',
  `Date` datetime NOT NULL COMMENT 'Review date',
  `Rate` int(1) NOT NULL COMMENT 'rate 1 to 5 star',
  `Text` varchar(2000) NOT NULL,
  `saving` int(10) NOT NULL COMMENT 'how much the client save',
  `Approved` int(1) NOT NULL DEFAULT '0' COMMENT '0 = not approved yet, 1 = approved and 3 = not approved',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_review`
--

INSERT INTO `t_review` (`id`, `UserID`, `Date`, `Rate`, `Text`, `saving`, `Approved`, `updated_at`, `created_at`) VALUES
(1, 2, '2015-12-07 00:00:00', 5, 'This is a testimonial window. Feedback of user can be displayed here.', 1, 1, '2016-01-28 17:17:36', '2015-12-30 18:30:00'),
(2, 18, '2016-01-28 10:35:46', 4, 'Très bon service super site web', 5354, 1, '2016-01-28 21:21:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_screen`
--

CREATE TABLE `t_screen` (
  `ScreenID` int(10) NOT NULL,
  `FR_Name` varchar(255) NOT NULL,
  `EN_Name` varchar(255) NOT NULL,
  `FileName` varchar(255) NOT NULL,
  `GroupID` int(1) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Show` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_screen`
--

INSERT INTO `t_screen` (`ScreenID`, `FR_Name`, `EN_Name`, `FileName`, `GroupID`, `Name`, `Show`) VALUES
(1, 'Profil', 'Profil', 'Profil.php', 1, 'Profil', 1),
(2, 'G&eacute;rer Les Membres', 'Manage Members', 'ManageMembers.php', 1, 'ManageMembers', 1),
(3, 'Transactions Immo-Clic', 'Immo-Clic Transactions', 'Transaction.php', 1, 'Transaction', 1),
(4, 'Profile Membre', 'Profil Member', 'ProfilMember.php', 1, 'ProfilMember', 0),
(5, 'D&eacute;tail de la transaction', 'Transaction details', 'TransactionDetails.php', 1, 'TransactionDetails', 0),
(6, 'Visiteur Inscrit', 'Visiteur Inscrit', 'VisiteurInscrit.php', 2, 'VisiteurInscrit', 1),
(7, 'Profil', 'Profil', 'MembresInfo.php', 3, 'MembresInfo', 1),
(8, 'Choisir un courtier', 'Select a broker', 'SelectBroker.php', 3, 'SelectBroker', 0),
(11, 'D&eacute;tail de la transaction', 'Transaction details', 'TransactionDetails.php', 3, 'TransactionDetails', 0),
(12, 'Ajout Coutiers', 'Add Brokers', 'AddBrokers.php', 4, 'AddBrokers', 1),
(13, 'G&eacute;rer Commercants', 'Add Merchants', 'AddMerchants.php', 4, 'AddMerchants', 1),
(14, 'Recherche clients', 'Search clients', 'FindMembers.php', 5, 'FindMembers', 1),
(17, 'G&eacute;rer Membres', 'Manage Members', 'ManageMembers.php', 4, 'ManageMembers', 1),
(18, 'G&eacute;rer Courtiers', 'Manage Brokers', 'ManageBrokers.php', 4, 'ManageBrokers', 1),
(19, 'Profil Membre', 'Profil Member', 'ProfilMember.php', 4, 'ProfilMember', 0),
(20, 'D&eacute;tail de la transaction', 'Transaction details', 'TransactionDetails.php', 4, 'TransactionDetails', 0),
(21, 'Profil Courtier', 'Profil Broker', 'ProfilBroker.php', 4, 'ProfilBroker', 0),
(22, 'Transactions', 'Transactions', 'ManageTransactions.php', 4, 'ManageTransactions', 1),
(23, 'Compagnie', 'Company', 'Company.php', 4, 'Company', 1),
(24, 'Profile Compagnie', 'Profil Company', 'ProfilCompany.php', 4, 'ProfilCompany', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_system_alert_building`
--

CREATE TABLE `t_system_alert_building` (
  `ID` int(10) NOT NULL COMMENT 'alert ID',
  `BuildingID` int(10) NOT NULL COMMENT 'Building ID',
  `Email` varchar(500) NOT NULL COMMENT 'Email to send notify',
  `Code` varchar(20) NOT NULL COMMENT 'Must generate a random and unique code for each alert in case the user want to disable it. If we use the ID someone can disable all our alert.',
  `Disabled` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_system_alert_search`
--

CREATE TABLE `t_system_alert_search` (
  `id` int(10) NOT NULL COMMENT 'Alert ID',
  `Code` varchar(20) NOT NULL COMMENT 'Must generate a random and unique code for each alert in case the user want to disable it. If we use the ID someone can disable all our alert.',
  `Email` varchar(500) NOT NULL COMMENT 'Email to send alert',
  `Disabled` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Min_price` int(10) NOT NULL,
  `Max_price` int(10) NOT NULL,
  `Min_rooms_number` int(10) NOT NULL COMMENT 'in case not specify insert 0',
  `Min_bathroom_number` int(11) NOT NULL COMMENT 'in case not specify insert 0',
  `Brand_new` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Free_tour` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Living_area_size` int(10) DEFAULT NULL,
  `Property_size` int(10) DEFAULT NULL,
  `Garage` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `Pool` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `No_neighbors_behind` int(1) NOT NULL COMMENT '0 = no, 1 = yes',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_system_alert_search`
--

INSERT INTO `t_system_alert_search` (`id`, `Code`, `Email`, `Disabled`, `Min_price`, `Max_price`, `Min_rooms_number`, `Min_bathroom_number`, `Brand_new`, `Free_tour`, `Living_area_size`, `Property_size`, `Garage`, `Pool`, `No_neighbors_behind`, `updated_at`, `created_at`) VALUES
(1, '7761670', 'a@a.com', 1, 100, 1000, 3, 1, 0, 1, 30, 500, 0, 1, 0, '2015-12-28 05:13:52', '2015-12-09 01:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `t_system_alert_search_category`
--

CREATE TABLE `t_system_alert_search_category` (
  `ID` int(10) NOT NULL,
  `AlertID` int(10) NOT NULL,
  `CategoryID` int(10) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_system_alert_search_category`
--

INSERT INTO `t_system_alert_search_category` (`ID`, `AlertID`, `CategoryID`, `updated_at`, `created_at`) VALUES
(1, 1, 1, '2015-12-09 13:11:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_system_alert_search_city`
--

CREATE TABLE `t_system_alert_search_city` (
  `ID` int(10) NOT NULL,
  `AlertID` int(10) NOT NULL COMMENT 'Id from table t_system_alert_search',
  `CityID` int(10) NOT NULL COMMENT 'id from table t_building_city',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_system_alert_search_city`
--

INSERT INTO `t_system_alert_search_city` (`ID`, `AlertID`, `CityID`, `updated_at`, `created_at`) VALUES
(1, 1, 1, '2015-12-09 12:52:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_system_alert_search_type`
--

CREATE TABLE `t_system_alert_search_type` (
  `id` int(10) NOT NULL,
  `AlertID` int(10) NOT NULL,
  `TypeID` int(10) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_system_alert_search_type`
--

INSERT INTO `t_system_alert_search_type` (`id`, `AlertID`, `TypeID`, `updated_at`, `created_at`) VALUES
(1, 1, 1, '2015-12-09 12:23:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaction`
--

CREATE TABLE `t_transaction` (
  `ID` int(10) NOT NULL,
  `Transaction_Type` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `Transaction_Date` datetime DEFAULT NULL,
  `BuyOrSold` int(10) NOT NULL,
  `CourtierID` int(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `AddressNumber` varchar(50) DEFAULT NULL,
  `Appartement` varchar(50) DEFAULT NULL,
  `visitor` int(1) NOT NULL DEFAULT '0',
  `Status` int(10) NOT NULL DEFAULT '0',
  `TypeOfProperty` int(1) DEFAULT NULL,
  `End_Date` varchar(20) DEFAULT NULL,
  `SectorID` int(10) NOT NULL,
  `StreetType` int(10) NOT NULL,
  `StreetName` varchar(50) NOT NULL,
  `CityName` varchar(50) NOT NULL,
  `PostalCode` varchar(10) NOT NULL,
  `SectorResearched` varchar(250) DEFAULT NULL,
  `AddedByBroker` int(1) DEFAULT '0',
  `PropertyID` varchar(10) DEFAULT NULL,
  `PAFinale` int(1) DEFAULT '0',
  `LastReminder` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_transaction`
--

INSERT INTO `t_transaction` (`ID`, `Transaction_Type`, `UserID`, `Transaction_Date`, `BuyOrSold`, `CourtierID`, `Address`, `AddressNumber`, `Appartement`, `visitor`, `Status`, `TypeOfProperty`, `End_Date`, `SectorID`, `StreetType`, `StreetName`, `CityName`, `PostalCode`, `SectorResearched`, `AddedByBroker`, `PropertyID`, `PAFinale`, `LastReminder`, `updated_at`, `created_at`) VALUES
(256, 1, 2, '2014-12-01 13:07:51', 1, 337, NULL, '15', '0', 0, 3, 1, '2014-12-01 13:10:34', 2, 1, 'Lessard', '', '', NULL, 1, NULL, 0, NULL, '2015-12-10 12:40:13', '0000-00-00 00:00:00'),
(257, 1, 463, '2014-12-01 16:13:15', 1, 335, NULL, '1792', '', 0, 1, 1, NULL, 2, 6, 'de la passe', 'Quebec', 'G3G 2Y', '', 0, NULL, 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(258, 1, 467, '2014-12-02 10:27:15', 0, NULL, NULL, '21010', '', 0, 3, 1, NULL, 2, 2, 'henri-bourassa', 'quebec', 'g2n1p9', '', 0, NULL, 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(261, 2, 471, '2014-12-02 17:56:45', 0, NULL, NULL, '8045', '201', 0, 0, 0, NULL, 1, 1, 'Latreille', 'quebec', 'g2k1r7', '', 0, NULL, 0, '2015-09-18 07:58:24', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(265, 1, 480, '2014-12-05 15:30:30', 1, 355, NULL, '217', '', 0, 1, 1, NULL, 2, 1, 'des inuits', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(267, 1, 487, '2014-12-06 10:13:15', 0, NULL, NULL, '5', '', 0, 0, 1, NULL, 2, 1, 'Albert trudel', 'Loretteville', 'G2a2r8', '', 0, '1', 0, '2015-09-18 07:58:25', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(268, 1, 489, '2014-12-06 12:20:44', 0, 357, NULL, 'tripl', '', 0, 1, 2, NULL, 2, 1, 'st-louis', 'Ste-foy', 'g5l1y7', '', 0, '2', 0, '2014-12-18 10:18:42', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(269, 1, 490, '2014-12-08 07:34:03', 1, 358, NULL, '1862', '', 0, 1, 1, NULL, 2, 3, 'Lortie', 'Quebec', 'G1E3X3', '', 0, '1', 1, '2014-12-18 10:18:42', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(270, 1, 492, '2014-12-08 10:29:07', 0, NULL, NULL, '3088', '', 0, 0, 1, NULL, 1, 2, 'Talbot', 'Stoneham', 'G3C1L1', '', 0, '1', 0, '2015-09-18 07:58:25', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(271, 1, 493, '2014-12-08 10:47:19', 1, 339, NULL, '1495', '', 0, 3, 1, '2015-02-08 08:28:23', 2, 4, 'st-antoine', 'st-ferreol-les-neiges', 'G0L2L0', '', 0, '1', 0, '2014-12-25 10:52:26', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(272, 1, 494, '2014-12-08 11:16:58', 0, NULL, NULL, '2985 ', '5', 0, 0, 1, NULL, 2, 1, 'Laroche', 'QuÃ©bec', 'G1x1k1', '', 0, '1', 0, '2015-09-18 07:58:26', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(273, 1, 495, '2014-12-08 11:21:33', 0, NULL, NULL, '0', '', 0, 0, 1, NULL, 2, 1, 'Godin', 'Quebec', 'G1C0C6', '', 0, '1', 0, '2015-09-18 07:58:26', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(275, 1, 497, '2014-12-08 12:40:24', 1, 346, NULL, '1242', 'MLS 23181534', 0, 1, 2, NULL, 2, 1, 'Germaine Lecours', '', '', NULL, 1, '2', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(276, 1, 498, '2014-12-08 12:50:05', 1, 346, NULL, '322 11 rue ', '', 0, 1, 2, NULL, 2, 1, 'rue', '', '', NULL, 1, '2', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(278, 1, 504, '2014-12-09 06:53:38', 1, NULL, NULL, '1009', '', 0, 0, 1, NULL, 2, 1, 'Juneau', '', '', NULL, 1, '1', 0, '2015-09-18 07:58:26', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(279, 1, 505, '2014-12-09 10:37:35', 0, NULL, NULL, '5382', '', 0, 0, 1, NULL, 1, 1, 'clark', 'Montreal', 'h2t2v2', '', 0, '1', 0, '2015-09-18 07:58:27', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(280, 1, 507, '2014-12-10 08:39:51', 0, NULL, NULL, 'condo', '', 0, 0, 1, NULL, 2, 2, 'RenÃ©-LÃ©vesque', 'QuÃ©bec', 'G1T1P9', '', 0, '1', 0, '2015-09-19 08:19:02', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(281, 1, 509, '2014-12-10 12:37:21', 0, NULL, NULL, '316', '', 0, 0, 1, NULL, 2, 3, 'Ã©vangeline', 'sept-iles', 'g4r2n3', '', 0, '1', 0, '2015-09-18 07:58:27', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(284, 1, 513, '2014-12-12 10:57:16', 1, NULL, NULL, '285', '', 0, 0, 2, NULL, 1, 1, 'MGR Lagueux', 'Pintendre', 'G6C1J4', 'LÃ©vis', 0, '2', 0, '2015-09-19 13:24:56', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(285, 1, 516, '2014-12-14 16:10:45', 1, NULL, NULL, '6712', '3A', 0, 0, 1, NULL, 2, 2, 'sainte-anne', 'L\'ange Gardien', 'G0A2K0', '', 0, '1', 0, '2015-09-17 19:53:19', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(288, 1, 519, '2014-12-15 14:50:01', 0, 342, NULL, '1340', '11', 0, 2, 1, '2015-03-10 13:04:56', 2, 1, 'de la Colline', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(289, 1, 520, '2014-12-15 17:16:48', 1, NULL, NULL, '277', '3', 0, 0, 1, NULL, 2, 1, 'rue st-luc', '', '', NULL, 1, '1', 0, '2015-09-15 13:05:55', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(292, 1, 524, '2014-12-16 11:21:04', 1, NULL, NULL, '1000', '', 0, 0, 1, NULL, 2, 1, 'test', 'QuÃ©bec', 'G1K7P4', '', 0, '1', 0, '2015-09-16 14:26:34', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(297, 1, 529, '2014-12-20 12:13:11', 1, 360, NULL, '115 Armand', '', 0, 1, 1, NULL, 2, 1, 'Louis XIV', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(298, 1, 530, '2014-12-21 17:09:17', 0, 357, NULL, '835', '', 0, 2, 1, '2015-03-28 13:58:51', 2, 3, '2Ã¨me', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(299, 1, 535, '2014-12-30 21:00:52', 0, 346, NULL, '108', '5', 0, 3, 2, '2015-05-27 10:51:36', 2, 6, 'DES MAS', 'BOISCHATEL', 'G0A1H0', '', 0, '2', 0, '2015-01-06 22:04:12', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(300, 1, 542, '2015-01-12 14:21:00', 1, 350, NULL, '3567', '', 0, 2, 1, '2015-06-15 13:01:37', 2, 6, 'Saint-Louis', 'QuÃ©bec', 'G1W1S8', '', 0, '1', 1, '2015-01-12 14:54:11', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(301, 1, 543, '2015-01-13 08:04:29', 1, NULL, NULL, '418-929-9000', '', 0, 0, 2, NULL, 1, 1, '1451 l\'Etna', '', '', NULL, 1, '2', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(302, 1, 544, '2015-01-13 08:12:35', 1, NULL, NULL, '418-8728284', '', 0, 0, 1, NULL, 1, 1, 'Lemaire', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(303, 1, 545, '2015-01-15 15:21:58', 1, NULL, NULL, '38', '', 0, 0, 1, NULL, 2, 1, 'des Plateaux', 'St-Gabriel de Valcartier', 'G0A4S0', '', 0, '1', 0, '2015-09-18 14:03:38', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(304, 1, 546, '2015-01-15 23:12:07', 0, NULL, NULL, '879', '5', 0, 0, 1, NULL, 2, 1, 'de Beloeil', 'QuÃ©bec', 'G1V1L8', '', 0, '1', 0, '2015-09-19 11:24:03', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(305, 1, 547, '2015-01-17 12:04:19', 1, 364, NULL, '1327 ', '', 0, 2, 1, '2015-06-08 19:07:12', 2, 1, 'des insignes', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(306, 1, 549, '2015-01-18 19:27:08', 0, NULL, NULL, '800', '', 0, 0, 1, NULL, 2, 1, 'Noisetiers', 'QuÃ©bec', 'G3G1T1', '', 0, '1', 0, '2015-09-22 06:15:14', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(307, 1, 550, '2015-01-18 20:27:44', 0, 508, NULL, '1490', 'a', 0, 1, 1, NULL, 2, 1, 'St-Jacques', 'L\'Ancienne-Lorette', 'G2E 2X', '', 0, '1', 0, '2015-01-25 20:41:53', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(308, 2, 552, '2015-01-18 21:02:23', 0, NULL, NULL, '782', '', 0, 0, 0, NULL, 2, 1, 'Gingras', 'Quebec', 'G1X3T6', '', 0, '0', 0, '2015-09-21 15:59:07', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(309, 1, 553, '2015-01-18 21:03:02', 0, NULL, NULL, '589', '', 0, 0, 1, NULL, 1, 5, '138', 'St augustin', 'G3a1w7', '', 0, '1', 0, '2015-09-21 17:01:00', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(310, 1, 552, '2015-01-18 21:06:19', 1, NULL, NULL, '782', '', 0, 0, 1, NULL, 2, 1, 'Gingras', 'QuÃ©bec', 'G1X3T5', 'QuÃ©bec', 0, '1', 0, '2015-09-21 15:59:07', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(311, 1, 555, '2015-01-19 01:22:58', 1, NULL, NULL, '1434', '', 0, 0, 1, NULL, 2, 1, 'de l alouette', 'quebec', 'g3k1g5', '', 0, '1', 0, '2015-09-22 08:17:45', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(312, 1, 556, '2015-01-19 20:37:53', 1, NULL, NULL, '918 ', '', 0, 0, 1, NULL, 2, 1, 'de L\'Etna', 'QuÃ©bec', 'G3K0L6', '', 0, '1', 0, '2015-09-16 09:22:57', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(313, 1, 558, '2015-01-20 07:09:06', 0, NULL, NULL, '9485', '', 0, 0, 2, NULL, 1, 0, 'Jean-talon', 'QuÃ©bec ', 'G1G4L1', '', 0, '2', 0, '2015-09-16 01:13:20', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(314, 1, 560, '2015-01-20 07:12:42', 1, NULL, NULL, '34', '', 0, 0, 1, NULL, 2, 1, 'Champs-Elysees', 'Quebec', 'G2G1K6', '', 0, '1', 0, '2015-09-17 01:33:15', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(315, 1, 561, '2015-01-20 08:04:11', 0, NULL, NULL, '5', '110', 0, 0, 1, NULL, 2, 1, 'de l\'ancien-chantier', 'quÃ©bec', 'g1k 6t', '', 0, '1', 0, '2015-09-16 09:22:58', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(317, 1, 563, '2015-01-20 16:01:07', 0, NULL, NULL, 'bi ge', '', 0, 0, 3, NULL, 2, 6, 'boul ste anne', 'beaupre', 'g0a1e0', '', 0, '3', 0, '2015-09-17 04:35:56', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(318, 1, 564, '2015-01-20 21:26:51', 0, NULL, NULL, '0', '', 0, 0, 1, NULL, 2, 1, '0', 'loretteville', 'g3e2k3', '', 0, '1', 0, '2015-09-18 14:03:39', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(319, 2, 565, '2015-01-21 06:35:07', 0, NULL, NULL, '1', '2', 0, 0, 0, NULL, 2, 1, 'quoi', 'courcelette ', 'g0a1r2', '', 0, '0', 0, '2015-09-17 05:38:17', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(320, 1, 566, '2015-01-21 07:59:58', 0, NULL, NULL, '1074', '', 0, 0, 4, NULL, 2, 1, 'Jean-Lelarge', 'Quebec', 'G1V3H1', '', 0, '1', 0, '2015-09-17 02:33:15', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(321, 1, 567, '2015-01-21 08:06:38', 1, NULL, NULL, '1969', '', 0, 0, 1, NULL, 2, 1, 'Des Yatagans', 'L\'Ancienne-Lorette', 'G2E6L2', '', 0, '1', 0, '2015-09-17 13:47:18', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(322, 1, 570, '2015-01-21 10:15:42', 1, NULL, NULL, '11166', '', 0, 0, 1, NULL, 2, 2, 'L\'OrmiÃ¨re', 'QuÃ©bec', 'G2B4v3', '', 0, '1', 0, '2015-09-17 03:33:16', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(323, 1, 572, '2015-01-21 11:53:18', 1, NULL, NULL, '2071', '', 0, 0, 1, NULL, 1, 3, '23', 'Saint-Augustin-de-Desmaures', 'G3A 1W', '', 0, '1', 0, '2015-09-17 15:51:52', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(324, 1, 573, '2015-01-21 12:11:30', 0, NULL, NULL, 'condo', '-', 0, 0, 1, NULL, 2, 0, 'D\'Assise', 'QuÃ©bec', 'G1L3V1', '', 0, '1', 0, '2015-09-17 06:38:18', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(327, 1, 577, '2015-01-21 16:53:30', 1, 350, NULL, '174', '', 0, 1, 1, NULL, 2, 6, 'Du bout de l\'ile', 'Ste-PÃ©tronille', 'G0A4C0', '', 0, '1', 0, '2015-02-06 20:14:39', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(328, 1, 578, '2015-01-21 21:23:09', 0, NULL, NULL, '180', '', 0, 0, 1, NULL, 2, 1, 'Des Bouleaux', 'Neuville', 'G0A2R0', '', 0, '1', 0, '2015-09-19 05:16:37', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(329, 1, 581, '2015-01-22 20:26:58', 0, NULL, NULL, '7462', '', 0, 0, 2, NULL, 1, 1, 'de la sarcelle', 'Charny', 'g6x 3r', '', 0, '2', 0, '2015-09-18 16:05:56', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(330, 1, 582, '2015-01-22 22:48:52', 1, NULL, NULL, '1922', '', 0, 0, 1, NULL, 1, 6, 'du Fleuve', 'Saint-Romuald', 'G6W1Z5', '', 0, '1', 0, '2015-09-19 03:14:01', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(331, 1, 584, '2015-01-23 07:13:21', 0, NULL, NULL, '389', '', 0, 0, 1, NULL, 1, 1, 'Principale', 'VallÃ©e-Jonction', 'G0S3J0', '', 0, '1', 0, '2015-09-19 23:34:00', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(332, 1, 586, '2015-01-23 16:29:08', 0, 383, NULL, '4137', '09', 0, 1, 1, NULL, 2, 1, 'Martinets', 'Charlesbourg', 'g1g1r1', '', 0, '1', 0, '2015-01-23 17:27:11', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(333, 1, 587, '2015-01-23 18:52:01', 0, NULL, NULL, '1386', '', 0, 0, 1, NULL, 2, 1, 'cornouillers', 'val-belaire', 'g3k2h7', '', 0, '1', 0, '2015-09-19 14:25:47', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(334, 1, 591, '2015-01-25 11:30:21', 0, 357, NULL, '125', '123', 0, 1, 2, NULL, 2, 1, 'charest', 'quebec', 'G1Y2M4', '', 0, '2', 0, '2015-08-31 04:37:40', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(335, 1, 593, '2015-01-25 15:25:19', 0, NULL, NULL, '497', '', 0, 0, 1, NULL, 2, 1, 'Avila', 'Neuville', 'G0A2R0', '', 0, '1', 0, '2015-09-22 06:15:15', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(336, 1, 594, '2015-01-25 15:59:53', 1, NULL, NULL, 'rÃ©sid', '', 0, 0, 1, NULL, 1, 5, 'Henderson', 'St-Malachie', 'G0R3N0', '', 0, '1', 0, '2015-09-17 14:48:19', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(337, 1, 595, '2015-01-25 17:52:55', 0, 336, NULL, '888', '4', 0, 1, 1, NULL, 1, 1, 'Notre-Dame Nord', 'Sainte-Marie', 'G6E2K9', '', 0, '1', 0, '2015-02-02 21:02:37', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(338, 2, 597, '2015-01-26 14:02:01', 1, NULL, NULL, '12212', '', 0, 0, 0, NULL, 2, 1, 'monseigneur cooke', 'QuÃ©bec', 'g2a3a9', '', 0, '0', 0, '2015-09-22 08:17:45', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(339, 1, 598, '2015-01-26 14:28:03', 0, NULL, NULL, '6742', '', 0, 0, 3, NULL, 2, 1, 'JuranÃ§on', 'Qu.Ã©bec', 'G3E1Y5', '', 0, '3', 0, '2015-09-17 04:35:57', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(340, 2, 599, '2015-01-26 21:54:48', 0, NULL, NULL, '515 ', '3', 0, 0, 0, NULL, 2, 1, 'Monseigneur-Cazeau', 'QuÃ©bec', 'G1K5M9', '', 0, '0', 0, '2015-09-16 02:16:11', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(341, 1, 602, '2015-01-27 12:44:05', 1, 351, NULL, '274', '', 0, 1, 1, NULL, 2, 1, 'jardin des cascades', 'QuÃ©bec', 'G1E6J5', '', 0, '1', 0, '2015-02-04 15:44:29', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(343, 1, 604, '2015-01-27 13:35:19', 1, NULL, NULL, '2771', '', 0, 0, 1, NULL, 2, 1, 'port-louis', 'quebec', 'gim3z2', '', 0, '1', 0, '2015-09-17 04:35:58', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(345, 2, 607, '2015-01-28 00:51:33', 0, 479, NULL, '6681', '', 0, 1, 0, NULL, 2, 3, 'Royale', 'L\'Ange-Gardien', 'G0A2K0', '', 0, '0', 0, '2015-02-04 09:37:34', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(346, 1, 608, '2015-01-28 15:12:43', 0, NULL, NULL, '1000', '', 0, 0, 2, NULL, 2, 3, '1ere', 'QuÃ©bec', 'G1L3C4', '', 0, '2', 0, '2015-09-17 10:42:56', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(347, 1, 609, '2015-01-28 21:19:58', 0, NULL, NULL, '550', '220', 0, 0, 1, NULL, 2, 1, 'Grande-AllÃ©e Est', 'QuÃ©bec', 'G1R2J9', '', 0, '1', 0, '2015-09-18 01:58:20', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(349, 2, 611, '2015-01-29 11:30:48', 0, 423, NULL, '1112', '', 0, 2, 0, '2015-06-30 14:29:57', 2, 1, 'Hubert', 'Longueuil', 'J4K2J5', '', 0, '0', 0, '2015-01-29 11:31:46', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(350, 1, 612, '2015-01-29 14:41:54', 1, 349, NULL, '1550', '', 0, 1, 1, NULL, 1, 1, 'des caps', 'Saint-Romuald LÃ©vis', 'G6W3S6', '', 0, '1', 1, '2015-02-06 09:11:01', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(351, 2, 613, '2015-01-29 15:06:26', 0, 483, NULL, '1391', '2', 0, 2, 0, '2015-06-18 13:05:43', 2, 1, 'd\'europe', 'val-belair', 'g7k-1r', '', 0, '0', 0, '2015-02-12 16:16:01', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(352, 1, 616, '2015-01-30 16:33:42', 1, NULL, NULL, '5728 Av. Royale', '', 0, 0, 1, NULL, 2, 1, 'chemin Royale', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(353, 1, 617, '2015-01-30 22:44:37', 0, 383, NULL, '409', '2', 0, 1, 1, NULL, 2, 1, 'Haut-boc', 'Quebec city', 'G1R1Z8', '', 0, '1', 0, '2015-03-11 10:56:09', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(354, 2, 618, '2015-02-01 10:28:03', 0, NULL, NULL, '2390', '12', 0, 0, 0, NULL, 2, 1, 'Trudeau', 'QuÃ©bec', 'G1P 3J', '', 0, '0', 0, '2015-09-22 01:09:06', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(355, 2, 619, '2015-02-01 13:29:21', 1, 430, NULL, '1443', '', 0, 1, 0, NULL, 2, 1, 'Milton', 'QuÃ©bec', 'G2G1X1', '', 0, '0', 0, '2015-05-10 21:59:23', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(357, 1, 622, '2015-02-02 11:58:23', 0, NULL, NULL, '1510', '', 0, 0, 1, NULL, 2, 3, 'maire beaulieu', 'quebec', 'G1S4R3', '', 0, '1', 0, '2015-09-16 05:16:34', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(358, 1, 623, '2015-02-02 12:12:20', 0, 357, NULL, '31', '', 0, 1, 2, NULL, 1, 1, 'bourgogne', 'levis', 'g6j1c6', '', 0, '2', 0, '2015-02-02 12:13:13', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(359, 2, 624, '2015-02-02 17:14:22', 0, NULL, NULL, '2355', '10', 0, 0, 0, NULL, 2, 1, 'Trudeau', 'Quebec ', 'G1P3J9', '', 0, '0', 0, '2015-09-16 02:16:12', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(361, 1, 629, '2015-02-04 12:49:51', 0, NULL, NULL, 'Unifa', '', 0, 0, 2, NULL, 2, 2, 'Auclair', 'QuÃ©bec', 'G2g1l9', '', 0, '2', 0, '2015-09-17 08:38:19', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(362, 2, 631, '2015-02-05 17:33:26', 1, 483, NULL, 'maiso', '', 0, 3, 0, '2015-04-27 15:12:02', 1, 1, 'oslo', 'saint-nicolas', 'g7aor3', '', 0, '0', 0, '2015-02-05 17:46:38', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(363, 1, 632, '2015-02-05 18:26:17', 0, NULL, NULL, 'OUI', 'appa', 0, 0, 2, NULL, 2, 1, 'oui', 'quebec', 'G1P3K8', '', 0, '2', 0, '2015-09-18 17:06:43', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(364, 1, 633, '2015-02-05 20:18:49', 0, NULL, NULL, '11657', '304', 0, 0, 1, NULL, 2, 2, 'De la Colline', 'QuÃ©bec ', 'G2A2E1', '', 0, '1', 0, '2015-09-19 09:19:03', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(365, 1, 636, '2015-02-07 09:34:19', 0, NULL, NULL, '500', '', 0, 0, 1, NULL, 2, 1, 'Bouvier', 'QuÃ©bec', 'G1c4p1', '', 0, '1', 0, '2015-09-20 01:36:00', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(366, 1, 637, '2015-02-07 11:48:22', 0, NULL, NULL, '136', '', 0, 0, 1, NULL, 2, 1, 'Brodier', 'QuÃ©bec', 'G1C 7J', '', 0, '1', 0, '2015-09-21 06:52:40', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(368, 1, 639, '2015-02-08 13:10:53', 0, NULL, NULL, '19', '', 0, 0, 1, NULL, 1, 1, 'St-narcisse', 'Levis', 'G6V3A2', '', 0, '1', 0, '2015-09-21 14:57:42', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(369, 1, 640, '2015-02-09 21:30:38', 1, NULL, NULL, '1075 ', '117', 0, 0, 1, NULL, 2, 1, 'Du massif ', 'Quebec ', 'G2K2K9', '', 0, '1', 0, '2015-09-17 12:47:13', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(370, 2, 649, '2015-02-10 19:10:36', 1, NULL, NULL, '304', '', 0, 0, 0, NULL, 2, 3, 'Demers', 'St-Raymond', 'g3l3r4', '', 0, '0', 0, '2015-09-16 13:26:34', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(371, 1, 650, '2015-02-11 13:02:56', 0, NULL, NULL, '3061', '215', 0, 0, 1, NULL, 2, 1, 'des chÃ¢telets', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(373, 1, 652, '2015-02-12 15:36:22', 1, 375, NULL, '155', '1', 0, 2, 2, '2015-04-14 16:04:29', 1, 2, 'Benoit Xv ', '', '', NULL, 1, '2', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(374, 1, 653, '2015-02-15 20:31:32', 0, 355, NULL, '1391', '2', 0, 2, 1, '2015-06-23 16:52:12', 2, 1, 'd\'Europe', '', '', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(375, 1, 654, '2015-02-16 14:26:37', 0, 362, NULL, ' 581-997-7995', '', 0, 1, 1, NULL, 1, 1, 'Vire-Crepre', 'st-nicolas', 'g7a 1j5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(376, 1, 656, '2015-02-18 11:39:24', 0, NULL, NULL, '06', '09', 0, 0, 1, NULL, 2, 1, 'francheville', 'quebec', 'G1e5z7', '', 0, '1', 0, '2015-09-18 13:03:27', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(377, 1, 657, '2015-02-18 13:25:37', 1, 355, NULL, '261', '', 0, 2, 1, '2015-06-23 16:54:18', 2, 1, '81 iÃ¨me Est', 'Charlesbourg', 'G1G2Y3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(378, 1, 658, '2015-02-18 16:30:54', 1, 655, NULL, '4188', '', 0, 1, 1, NULL, 2, 1, 'des FougÃ¨re', 'Levis', 'G6V7M5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(382, 1, 659, '2015-02-19 18:08:28', 0, NULL, NULL, '630 ', '302', 0, 0, 1, NULL, 2, 1, 'Francis-Byrne', 'QuÃ©bec', 'G1H 7N4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(383, 2, 660, '2015-02-20 11:13:22', 0, NULL, NULL, '24', '', 0, 0, 1, NULL, 1, 1, 'pinbina', 'levis', 'g6z7h8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(384, 1, 661, '2015-02-24 15:45:32', 0, NULL, NULL, '3440', '4', 0, 0, 1, NULL, 2, 1, 'CarrÃ©e de Tilly', 'Quebec', 'g1w 2l7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(385, 1, 662, '2015-02-24 15:49:34', 1, 655, NULL, '3440', '4', 0, 1, 1, NULL, 2, 1, 'CarrÃ©e de Tilly', 'Quebec', 'g1w 2l7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(386, 1, 664, '2015-02-25 20:36:27', 1, 357, NULL, '1101', '', 0, 2, 1, '2015-06-15 10:45:40', 1, 1, 'PhÃ©nix', 'LÃ©vis', 'G6Z 3P3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(387, 1, 665, '2015-02-25 20:38:23', 0, NULL, NULL, '67', '', 0, 0, 1, NULL, 2, 1, 'Dunham', 'QuÃ©bec', 'G2N 1L4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(388, 1, 666, '2015-02-25 20:41:12', 0, NULL, NULL, '612', '', 0, 0, 1, NULL, 1, 1, 'Sous-Bois', 'LÃ©vis', 'G7A 1B9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(389, 1, 667, '2015-02-25 20:51:42', 1, NULL, NULL, '9082', '', 0, 0, 1, NULL, 2, 1, 'Morelia', 'QuÃ©bec', 'G2B 0E8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(390, 1, 668, '2015-02-25 20:52:42', 1, 357, NULL, '9082', '', 0, 2, 1, '2015-06-15 11:30:39', 2, 1, 'Morelia', 'QuÃ©bec', 'G2B 0E8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(391, 1, 669, '2015-02-25 21:01:27', 1, NULL, NULL, '880', '405', 0, 0, 1, NULL, 2, 1, 'Diamants', 'QuÃ©bec', 'G2L 2T7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(392, 1, 670, '2015-02-26 10:23:10', 1, 590, NULL, '2', '552', 0, 1, 1, NULL, 2, 2, 'belanger', 'beaupre', 'g0a1e0', '', 0, '1', 1, '2015-02-26 13:20:14', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(393, 2, 671, '2015-02-28 15:51:47', 0, NULL, NULL, '1020', '', 0, 0, 0, NULL, 2, 1, 'Du castor', 'Val-belair', 'G3k 1e', '', 0, '0', 0, '2015-09-21 02:49:27', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(394, 1, 672, '2015-03-03 10:23:23', 1, NULL, NULL, '270', '', 0, 0, 1, NULL, 2, 4, '4e ', 'St-Augustin-de-Desmaures', 'G3A1W8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(395, 1, 673, '2015-03-03 10:51:54', 0, 383, NULL, '853', '', 0, 3, 1, '2015-03-11 17:40:27', 2, 3, 'des Bruants', 'quÃ©bec', 'G1E1J3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(396, 2, 674, '2015-03-05 18:38:58', 1, NULL, NULL, '4072', '', 0, 0, 0, NULL, 2, 1, 'Blain', 'QuÃ©bec', 'G2B5H3', '', 0, '0', 0, '2015-09-19 06:17:35', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(397, 1, 675, '2015-03-05 19:06:07', 0, NULL, NULL, '527', '', 0, 0, 1, NULL, 1, 1, 'Boilard', 'Saint-Bernard de Beauce', 'G0S2G0', '', 0, '1', 0, '2015-09-19 23:34:00', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(398, 1, 650, '2015-03-06 10:21:21', 0, NULL, NULL, '3061', '215', 0, 0, 1, NULL, 2, 1, 'des chÃ¢telets', 'Ste-Foy', 'G1V 3Y6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(399, 1, 677, '2015-03-06 16:20:00', 0, 355, NULL, '9661', '6', 0, 2, 1, '2015-03-26 19:46:39', 2, 1, 'Jean-Milot', 'Lasalle', 'H8R1Y1', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(400, 1, 679, '2015-03-09 11:10:11', 0, 355, NULL, '39', '', 0, 1, 1, NULL, 2, 1, 'Du Garbin', 'Sainte-Catherine-de-la-Jacques-Cartier', 'G3N3C2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(401, 1, 680, '2015-03-09 20:25:12', 0, 342, NULL, '3061', '215', 0, 2, 1, '2015-06-29 10:31:33', 2, 1, 'des ChÃ¢telets', 'Ste-Foy', 'G1V 3Y6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(402, 1, 682, '2015-03-10 17:40:21', 1, 351, NULL, '1410', '', 0, 1, 1, NULL, 2, 1, 'des Insignes', 'Val-BÃ©lair', 'G3J 0J8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(403, 1, 684, '2015-03-11 12:51:27', 0, 351, NULL, '4303', '', 0, 2, 1, '2015-03-11 13:35:59', 2, 1, 'Saint-FÃ©lix', 'QuÃ©bec', 'G1Y 1X6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(404, 1, 684, '2015-03-11 13:38:27', 1, NULL, NULL, '4303', '', 0, 0, 1, NULL, 2, 1, 'Saint-FÃ©lix', 'QuÃ©bec', 'G1Y 1X6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(405, 1, 462, '2015-03-12 10:55:39', 1, 364, NULL, '317', '', 0, 2, 1, '2015-06-08 19:06:46', 2, 1, 'la FertÃ©', 'Beauport', 'G1C 5B2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(406, 1, 462, '2015-03-12 11:00:13', 0, 364, NULL, '25', '2541', 0, 2, 1, '2015-06-13 10:20:24', 2, 1, 'des nations', 'Charlesbourg', 'G1C 5B2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(409, 1, 686, '2015-03-13 10:23:54', 0, NULL, NULL, '2989', '8', 0, 0, 1, NULL, 2, 1, 'laroche ', 'QUÃ‰BEC ', 'G1X 1K1', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(410, 1, 687, '2015-03-14 13:05:28', 0, 478, NULL, '904', '', 0, 1, 2, NULL, 2, 1, 'Vauquelin', 'Neuville', 'G0A2R0', '', 0, '2', 0, '2015-03-29 09:09:20', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(411, 1, 688, '2015-03-16 11:00:47', 0, 354, NULL, '805', '7', 0, 2, 1, '2015-06-30 10:35:31', 2, 3, 'Av Murray', 'QuÃ©bec', 'G1S 3B2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(412, 1, 689, '2015-03-16 12:45:53', 0, NULL, NULL, 'Ã  Ã©tage', '', 0, 0, 1, NULL, 2, 4, '270, 4e Rang', 'St-Augustin-de-Desmaures', 'G3A1W8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(413, 1, 691, '2015-03-16 14:09:52', 1, NULL, NULL, '2405', '', 0, 0, 1, NULL, 2, 5, 'Fossambault', 'Ste-Catherine-de-la -Jacques-Cartier', 'G3N1R2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(414, 1, 692, '2015-03-17 14:58:53', 1, 355, NULL, '1044', '', 0, 1, 1, NULL, 2, 1, 'CalÃ©donie', 'QuÃ©bec', 'G3K 2J9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(415, 1, 693, '2015-03-17 19:34:24', 0, 357, NULL, '1234', '', 0, 1, 3, NULL, 2, 1, 'nullepart', 'quÃ©bec', 'g1a2ao', '', 0, '3', 0, '2015-03-17 19:38:29', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(416, 1, 694, '2015-03-19 14:57:20', 0, 357, NULL, '1471', '2', 0, 2, 1, '2015-06-15 10:47:54', 2, 1, 'emerson', 'QuÃ©bec', 'G3K 2E3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(417, 1, 667, '2015-03-23 16:39:47', 1, NULL, NULL, '9082', '', 0, 0, 1, NULL, 2, 1, 'Morelia', 'QuÃ©bec', 'G2B 0E8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(419, 1, 697, '2015-03-25 18:16:53', 1, 356, NULL, '209', '', 0, 1, 1, NULL, 2, 3, '2e  ', 'st Raymond ', 'G3L 2H6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(420, 2, 698, '2015-03-27 11:59:02', 0, 532, NULL, '1064', '2', 0, 1, 0, NULL, 2, 1, 'D\'espagne', 'QuÃ©bec', 'G3K1P8', '', 0, '0', 0, '2015-04-17 15:02:26', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(421, 1, 699, '2015-03-27 20:09:56', 1, 346, NULL, '31', '', 0, 1, 1, NULL, 2, 1, 'Boucher', 'QuÃ©bec', 'G2B 3C5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(422, 1, 668, '2015-03-28 14:04:53', 0, 357, NULL, '9082', '', 0, 1, 1, NULL, 2, 1, 'MorÃ©lia', 'QuÃ©bec', 'G2B 0E8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(423, 1, 667, '2015-03-28 14:05:50', 0, NULL, NULL, '9082', '', 0, 0, 1, NULL, 2, 1, 'MorÃ©lia', 'QuÃ©bec', 'G2B 0E8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(424, 1, 701, '2015-03-30 12:14:31', 0, 614, NULL, 'Maison', '', 0, 1, 1, NULL, 2, 1, 'DubÃ©', 'QuÃ©bec', 'G1M-3K4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(425, 1, 702, '2015-03-30 14:32:41', 0, NULL, NULL, '304', 'B', 0, 0, 1, NULL, 2, 1, 'Lavigueur', 'QuÃ©bec', 'G1R1B2', '', 0, '1', 0, '2015-09-22 08:17:46', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(426, 1, 703, '2015-03-30 15:35:58', 1, 363, NULL, '418-845-6102', '', 0, 2, 1, '2015-06-23 10:52:29', 2, 1, 'de JuranÃ§on', 'QuÃ©bec', 'G3E 1Y5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(427, 1, 704, '2015-03-30 15:50:18', 1, NULL, NULL, '418-208-4254', '', 0, 0, 1, NULL, 2, 1, 'des Prismes', 'QuÃ©bec', 'G3E 2E7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(428, 1, 705, '2015-03-30 15:58:25', 1, NULL, NULL, '13695', '', 0, 0, 1, NULL, 2, 1, 'Picasso', 'QuÃ©bec', 'G3E 0C5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(429, 1, 706, '2015-03-30 16:02:18', 1, 363, NULL, '6580', '', 0, 2, 1, '2015-05-20 11:17:53', 2, 1, 'du Dom-Perignon', 'QuÃ©bec', 'G3E 1T7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(430, 1, 708, '2015-03-31 12:13:57', 0, 363, NULL, '1469', '', 0, 3, 1, '2015-04-01 10:13:54', 2, 1, 'de St-Julien', 'QuÃ©bec', 'G3E 1W7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(431, 1, 709, '2015-03-31 12:16:10', 1, 363, NULL, '1469', '', 0, 2, 1, '2015-06-02 10:21:17', 2, 1, 'de St-Julien', 'QuÃ©bec', 'G3E 1W7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(432, 1, 708, '2015-04-01 11:21:36', 0, 363, NULL, '930', '', 0, 2, 1, '2015-05-21 14:53:10', 2, 1, 'Larche', 'QuÃ©bec', ':G2K1M2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(433, 1, 706, '2015-04-01 11:46:07', 0, 363, NULL, '13695', '', 0, 2, 1, '2015-04-29 10:16:07', 2, 1, 'Picasso', 'QuÃ©bec', 'G3E0C5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(434, 1, 710, '2015-04-01 12:02:57', 1, 363, NULL, '6773', '', 0, 1, 1, NULL, 2, 1, ' de VÃ©nus', 'QuÃ©bec', 'G3E 2K4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(435, 1, 711, '2015-04-01 12:12:44', 1, NULL, NULL, '2800', '', 0, 0, 1, NULL, 2, 1, 'de Braga', 'QuÃ©bec', 'G2C 0H5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(436, 1, 712, '2015-04-01 12:15:45', 1, 363, NULL, '6571-6575', '', 0, 1, 1, NULL, 2, 1, 'Des SphÃ¨res', 'QuÃ©bec', 'G3E 2E4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(437, 1, 713, '2015-04-01 12:18:29', 1, NULL, NULL, '14112', '', 0, 0, 1, NULL, 2, 1, 'Longchamps', 'QuÃ©bec', 'G3E 1P4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(438, 1, 714, '2015-04-01 12:55:21', 1, 363, NULL, '1582', '', 0, 1, 1, NULL, 2, 1, 'De l\'Ambre', 'QuÃ©bec', 'G3K 0M2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(439, 1, 715, '2015-04-01 14:45:36', 1, NULL, NULL, '1461', '', 0, 0, 2, NULL, 2, 3, 'Maufils', 'QuÃ©bec', 'G1J4H7', NULL, 1, '2', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(440, 1, 716, '2015-04-02 21:37:32', 0, NULL, NULL, '18', '', 0, 0, 2, NULL, 1, 1, 'Vieux-Fort', 'LÃ©vis', 'G6V2C1', '', 0, '2', 0, '2015-04-03 15:59:05', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(441, 1, 717, '2015-04-03 16:12:00', 1, NULL, NULL, '426 ', '', 0, 0, 1, NULL, 2, 1, 'Marika', 'QuÃ©bec', 'G3G1l6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(442, 1, 719, '2015-04-08 12:08:26', 1, NULL, NULL, '200', '', 0, 0, 1, NULL, 2, 5, '138', 'Cap-SantÃ©', 'G0A-1L0', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(443, 1, 720, '2015-04-12 20:43:28', 0, 355, NULL, '148', 'C', 0, 3, 1, '2015-06-23 16:57:23', 2, 1, 'Michel-Thibault', 'Saint-Augustin-de-Desmaures', 'G3A 2V6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(444, 1, 721, '2015-04-15 16:41:34', 1, 358, NULL, '4901 ', '1101', 0, 1, 1, NULL, 2, 1, 'lionel Groulx', 'st-Augustin De Desmaures', 'g3a0n2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(445, 2, 724, '2015-04-25 12:33:22', 0, NULL, NULL, '1110', '', 0, 0, 0, NULL, 2, 1, 'avenue De La Ronde', 'Quebec', 'G1J4B6', '', 0, '0', 0, '2015-09-17 21:54:37', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(446, 1, 725, '2015-04-28 15:34:19', 0, 355, NULL, '415', '', 0, 1, 1, NULL, 2, 1, 'Chef Max Gros-Louis', 'Wendake', 'G0A4V0', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(447, 1, 726, '2015-04-29 11:51:46', 1, 364, NULL, '101', '', 0, 2, 1, '2015-06-29 08:47:14', 2, 1, 'Donaldson', 'Shannon', 'G0A 4N0', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(448, 1, 712, '2015-04-30 10:20:37', 1, NULL, NULL, '6571-6575', '', 0, 0, 1, NULL, 2, 1, 'des SphÃ¨res', 'QuÃ©bec', 'G3E 2E4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(449, 1, 727, '2015-05-01 11:21:03', 0, NULL, NULL, '166', '1', 0, 0, 1, NULL, 2, 1, 'des Franciscains', 'QuÃ©bec', 'G1R 1J2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(450, 1, 728, '2015-05-01 11:22:45', 0, 340, NULL, '166', '1', 0, 1, 1, NULL, 2, 1, 'des Franciscains', 'QuÃ©bec', 'G1R 1J2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(452, 2, 657, '2015-05-02 12:13:26', 0, NULL, NULL, '261', '', 0, 0, 0, NULL, 2, 1, '81 rue est', 'QuÃ©bec', 'G1G-2Y', '', 0, '0', 0, '2015-09-21 18:02:42', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(454, 2, 725, '2015-05-11 12:05:19', 0, 430, NULL, '415', '', 0, 1, 0, NULL, 2, 1, 'Chef Max Gros-Louis', 'Wendake', 'G0A4V0', '', 0, '0', 0, '2015-07-27 19:37:06', '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(455, 1, 729, '2015-05-13 11:10:56', 1, NULL, NULL, '2088', '', 0, 0, 1, NULL, 2, 1, 'de l\'Alliance ', 'QuÃ©bec', 'G3E 2H9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(456, 1, 730, '2015-05-13 11:16:09', 1, NULL, NULL, '585', '', 0, 0, 1, NULL, 2, 1, 'De l\'Accalmie', 'QuÃ©bec', 'G3G 1V3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(457, 1, 731, '2015-05-13 11:51:58', 1, 363, NULL, '13822', '', 0, 1, 1, NULL, 2, 1, 'Picasso', 'QuÃ©bec', 'G3E 0C6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(458, 1, 732, '2015-05-13 11:57:39', 1, 363, NULL, '13050', '', 0, 1, 1, NULL, 2, 1, 'Capella', 'QuÃ©bec', 'G3E 0C4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(459, 1, 733, '2015-05-13 12:01:11', 1, 363, NULL, '6601', '', 0, 1, 1, NULL, 2, 1, 'de VÃ©nus', 'QuÃ©bec', 'G3E 2K4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(460, 1, 734, '2015-05-13 12:04:48', 1, 363, NULL, '6789', '', 0, 1, 1, NULL, 2, 1, 'de VÃ©nus', 'QuÃ©bec', 'G3E 2K4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(461, 1, 710, '2015-05-13 12:08:02', 1, NULL, NULL, '6773', '', 0, 0, 1, NULL, 2, 1, 'de VÃ©nus', 'QuÃ©bec', 'G3E 2K4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(462, 1, 657, '2015-05-15 18:34:02', 0, 355, NULL, '261', '', 0, 2, 1, '2015-06-23 16:56:40', 2, 1, '81e  rue Est', 'Charlesbourg', 'G1G2Y3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(463, 1, 664, '2015-05-20 14:12:27', 0, 357, NULL, '1101', '', 0, 2, 1, '2015-06-23 17:59:02', 2, 1, 'PhÃ©nix', 'LÃ©vis', 'G6Z 3P3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(464, 1, 724, '2015-05-26 20:25:00', 0, 355, NULL, '1110', '', 0, 1, 1, NULL, 2, 3, 'De La Ronde', 'Limoilou', 'G1J4B6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(465, 1, 735, '2015-05-27 10:39:15', 0, 346, NULL, '512', '3', 0, 1, 1, NULL, 2, 1, 'St Luc', 'QuÃ©bec', 'G1N 2V3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(466, 1, 736, '2015-05-27 11:09:02', 0, 346, NULL, '1334', '101', 0, 1, 1, NULL, 2, 2, 'Pie X1', 'QuÃ©bec', 'G3J OJ9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(467, 1, 737, '2015-05-28 15:06:23', 1, 375, NULL, '2991', '7', 0, 2, 1, '2015-07-08 14:31:46', 1, 1, 'De Dompierre', 'QuÃ©bec ', 'G1X1E2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(468, 1, 652, '2015-05-28 15:10:27', 0, NULL, NULL, '822', '', 0, 0, 1, NULL, 1, 1, 'De La SapiniÃ¨re-Dorion est ', 'QuÃ©bec ', 'G1J1A5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(469, 1, 669, '2015-05-28 15:35:34', 0, NULL, NULL, '190', '', 0, 0, 1, NULL, 1, 2, 'Jean-Talon Est ', 'QuÃ©bec ', 'G2L0A6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(470, 1, 669, '2015-05-28 15:37:58', 1, NULL, NULL, '880 ', '405', 0, 0, 1, NULL, 1, 2, 'Des Diamants', 'QuÃ©bec ', 'G2L2T7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(471, 1, 738, '2015-05-28 15:53:18', 0, NULL, NULL, '190', '', 0, 0, 1, NULL, 1, 2, 'Jean-Talon Est ', 'QuÃ©bec ', 'G2L0A6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(472, 1, 668, '2015-06-15 10:52:36', 1, 357, NULL, '9082', '', 0, 1, 1, NULL, 2, 1, 'Morelia', 'QuÃ©bec', 'G2B 0E8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(473, 1, 667, '2015-06-15 10:53:55', 1, NULL, NULL, '9082', '', 0, 0, 1, NULL, 2, 1, 'Morelia', 'QuÃ©bec', 'G2B0E8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(474, 1, 667, '2015-06-15 10:55:12', 0, NULL, NULL, '79 ', '', 0, 0, 1, NULL, 2, 1, 'Chavannes', 'QuÃ©bec', 'G1N2C9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(475, 1, 668, '2015-06-15 10:56:17', 0, 357, NULL, '79', '', 0, 2, 1, '2015-06-15 11:31:57', 2, 1, 'Chavannes', 'QuÃ©bec', 'G1N2C9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(476, 1, 739, '2015-06-15 11:01:04', 0, NULL, NULL, '191', '', 0, 0, 1, NULL, 2, 1, 'Elmina-Anger', 'QuÃ©bec', 'G2N 0G3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(477, 1, 740, '2015-06-15 11:06:16', 1, NULL, NULL, '1223', '', 0, 0, 1, NULL, 1, 1, 'Hirondelles', 'St-RÃ©dempteur', 'G6K1P5', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(478, 1, 741, '2015-06-15 13:06:09', 0, 350, NULL, '96', '', 0, 2, 1, '2015-06-20 13:46:54', 2, 1, 'Place Jonathan', 'Quebec', 'G1B 2H4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(479, 1, 743, '2015-06-18 10:38:21', 1, 363, NULL, '2096', '', 0, 1, 1, NULL, 2, 1, 'de l\'Alliance', 'QuÃ©bec', 'G3E 2H9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(480, 1, 744, '2015-06-18 10:45:25', 1, NULL, NULL, '1360', '', 0, 0, 1, NULL, 2, 1, 'de  la Marjolaine', 'QuÃ©bec', 'G3E 1E2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(481, 1, 731, '2015-06-18 10:49:10', 1, NULL, NULL, '13822', '', 0, 0, 1, NULL, 2, 1, 'Picasso', 'QuÃ©bec', 'G3E 0C6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(483, 1, 746, '2015-06-18 15:27:48', 1, 363, NULL, '6887', '', 0, 1, 1, NULL, 2, 1, 'VÃ©nus', 'QuÃ©bec', 'G3E 2K4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(485, 1, 748, '2015-06-23 16:40:43', 1, 355, NULL, '1115', '', 0, 1, 1, NULL, 2, 1, 'Edison', 'QuÃ©bec', 'G3K0J7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(487, 1, 750, '2015-06-25 10:50:26', 1, NULL, NULL, '1117', '', 0, 0, 1, NULL, 1, 1, 'De la voie', 'LÃ©vis', 'G6Z1K3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(488, 1, 751, '2015-06-25 10:52:47', 1, NULL, NULL, '1487', '', 0, 0, 1, NULL, 1, 1, 'Coleraine', 'QuÃ©bec', 'G3K2B3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(489, 1, 752, '2015-06-25 10:55:01', 1, NULL, NULL, '1487', '', 0, 0, 1, NULL, 1, 1, 'Coleraine', 'QuÃ©bec', 'G3K2B3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(490, 1, 753, '2015-06-25 10:59:49', 1, NULL, NULL, '1083', '', 0, 0, 1, NULL, 1, 1, 'TourbiÃ¨re', 'LÃ©vis', 'G6Z2Y3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(491, 1, 754, '2015-06-25 11:03:02', 1, NULL, NULL, '1083', '', 0, 0, 1, NULL, 1, 1, 'TourbiÃ¨re', 'LÃ©vis', 'G6Z2Y3', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(492, 1, 755, '2015-06-25 11:05:03', 0, NULL, NULL, '682', '', 0, 0, 1, NULL, 1, 1, 'Trudelle', 'LÃ©vis', 'G6W7K7', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(493, 1, 756, '2015-06-25 11:06:10', 0, NULL, NULL, '41-43', '', 0, 0, 1, NULL, 1, 1, 'Bourdon', 'QuÃ©bec', 'G1L2B1', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(494, 1, 757, '2015-06-25 11:08:14', 0, NULL, NULL, '2208A', '', 0, 0, 1, NULL, 1, 3, 'Lapierre', 'QuÃ©bec', 'G3E1L4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(495, 1, 758, '2015-06-25 11:09:34', 0, NULL, NULL, '1329', '', 0, 0, 1, NULL, 1, 1, 'Ã‰den', 'QuÃ©bec', 'G3K2B4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(496, 1, 759, '2015-06-25 11:11:45', 0, NULL, NULL, '1899', '3', 0, 0, 1, NULL, 1, 2, 'Guillaume-Couture', 'LÃ©vis', 'G6W0E9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(497, 1, 760, '2015-06-25 11:14:05', 1, NULL, NULL, '153', '', 0, 0, 1, NULL, 1, 5, 'Montcalm', 'Ste-Catherine-de-la-jacques-cartierr', 'G3N0S1', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(498, 1, 761, '2015-06-25 11:17:20', 0, NULL, NULL, '8019', '', 0, 0, 1, NULL, 1, 1, 'Des Santolines', 'QuÃ©bec', 'G1G0E4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(499, 1, 762, '2015-06-25 11:18:40', 0, NULL, NULL, '2915', '', 0, 0, 1, NULL, 1, 1, 'Rive-BoisÃ©e Nord', 'QuÃ©bec', 'G2C2A8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(500, 1, 763, '2015-06-25 11:59:28', 1, 363, NULL, '1829', '', 0, 1, 1, NULL, 2, 1, 'de l\'Acropole', 'QuÃ©bec', 'G3E 1Z8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(501, 1, 764, '2015-06-25 12:41:17', 0, NULL, NULL, '1725', '', 0, 0, 1, NULL, 1, 1, 'De l\'amiral', 'QuÃ©bec', 'G3K1H1', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(503, 1, 765, '2015-06-30 11:51:44', 1, 363, NULL, '1690', '', 0, 1, 1, NULL, 2, 1, 'De l\'Ambre', 'QuÃ©bec', 'G3K 0M2', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(504, 1, 766, '2015-06-30 12:02:58', 0, 363, NULL, '1311', '', 0, 1, 1, NULL, 2, 1, 'Emond', 'QuÃ©bec', 'G3K 1R4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(505, 1, 733, '2015-07-07 10:28:20', 0, 363, NULL, '6176', '', 0, 1, 1, NULL, 2, 1, ' de la Sarriette', 'QuÃ©bec', 'G3E 2K4', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(506, 1, 767, '2015-07-26 14:58:50', 0, 355, NULL, '52', '', 0, 1, 1, NULL, 2, 1, 'Gingras', 'Sainte-Catherine-de-la-jacques-Cartier', 'G3N0L9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(507, 1, 768, '2015-08-09 13:27:26', 1, 355, NULL, '4780', '', 0, 1, 1, NULL, 2, 2, 'Des Cimes', 'QuÃ©bec', 'G2A4B8', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(508, 1, 769, '2015-08-20 14:03:11', 0, 375, NULL, '33 ', '409', 0, 1, 1, NULL, 1, 1, 'St-louis ', 'QuÃ©bec ', 'G1R5X6', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(509, 1, 770, '2015-08-29 09:30:20', 1, NULL, NULL, '1041 ', '', 0, 0, 1, NULL, 2, 1, 'CalÃ©donie', 'QuÃ©bec', 'G3K2J9', NULL, 1, '1', 0, NULL, '2015-11-27 14:24:57', '0000-00-00 00:00:00'),
(519, 2, 16, '2016-02-19 09:39:57', 0, NULL, NULL, '123', '', 0, 0, 0, NULL, 2, 2, 'd\'orléans', 'Jonquière', 'G1K3T2', '', 0, '0', 0, NULL, '2016-02-19 14:39:57', '0000-00-00 00:00:00'),
(520, 2, 783, '2016-02-19 12:10:22', 0, NULL, NULL, '3902', '1', 0, 0, 0, NULL, 2, 1, 'd\'orléans', 'Jonquière', 'G7X 8R', '', 0, '0', 0, '2016-02-19 12:21:58', '2016-02-19 17:21:58', '0000-00-00 00:00:00'),
(521, 2, 16, '2016-02-19 12:27:35', 1, NULL, NULL, '12343', '121', 0, 0, 1, NULL, 2, 3, '3902 rue d\'orléans', 'Jonquière', 'g7x8r4', NULL, 1, '1', 0, NULL, '2016-02-19 17:27:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaction_banner_order`
--

CREATE TABLE `t_transaction_banner_order` (
  `id` int(11) NOT NULL,
  `BannerID` int(11) NOT NULL,
  `CityID` int(11) NOT NULL,
  `CourtierID` int(11) NOT NULL,
  `IndexNumber` int(100) NOT NULL,
  `Done` int(11) NOT NULL,
  `InsertDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TransacID` int(10) NOT NULL,
  `PropType` int(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_transaction_banner_order`
--

INSERT INTO `t_transaction_banner_order` (`id`, `BannerID`, `CityID`, `CourtierID`, `IndexNumber`, `Done`, `InsertDate`, `TransacID`, `PropType`, `updated_at`, `created_at`) VALUES
(612, 1, 2, 348, 0, 1, '2014-12-01 15:43:15', 257, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 1, 2, 351, 1, 1, '2014-12-08 07:04:03', 269, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 2, 2, 355, 0, 1, '2014-12-01 15:43:15', 257, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 2, 2, 364, 1, 1, '2014-12-01 16:31:53', 257, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 3, 2, 335, 0, 1, '2014-12-01 15:43:15', 257, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 3, 2, 337, 1, 1, '2015-01-21 07:29:59', 320, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 2, 2, 360, 0, 2, '2014-12-07 04:15:24', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 2, 2, 379, 1, 1, '2014-12-06 09:43:16', 267, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 2, 2, 437, 2, 1, '2014-12-07 04:15:24', 267, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 2, 2, 358, 3, 1, '2014-12-08 07:04:03', 269, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 2, 2, 364, 4, 1, '2014-12-08 10:17:19', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 2, 2, 363, 5, 1, '2014-12-08 10:46:58', 272, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 2, 2, 359, 6, 1, '2014-12-08 10:51:33', 273, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 2, 2, 356, 7, 1, '2014-12-08 11:00:09', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 2, 2, 354, 8, 1, '2014-12-08 11:04:33', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 2, 2, 377, 9, 1, '2014-12-08 11:12:16', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 3, 2, 339, 0, 1, '2014-12-08 07:04:03', 269, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 4, 2, 340, 1, 1, '2014-12-06 09:43:16', 267, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 3, 2, 378, 2, 1, '2014-12-02 10:30:47', 257, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 4, 2, 338, 3, 1, '2014-12-08 10:17:19', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 12, 1, 430, 0, 1, '2015-01-13 19:44:24', 261, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 13, 1, 423, 0, 1, '2015-01-13 19:40:37', 261, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 1, 2, 351, 0, 1, '2014-12-06 09:43:16', 267, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 1, 2, 346, 1, 1, '2014-12-06 11:50:45', 268, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 1, 2, 345, 2, 1, '2014-12-08 10:17:19', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 1, 2, 350, 3, 1, '2014-12-08 10:46:58', 272, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 1, 2, 342, 4, 1, '2014-12-08 10:51:33', 273, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 1, 2, 352, 5, 1, '2014-12-09 01:31:23', 269, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 1, 2, 383, 6, 1, '2014-12-09 04:37:54', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 2, 2, 357, 0, 1, '2015-01-13 19:53:58', 268, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 2, 2, 376, 1, 2, '2014-12-30 20:30:53', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 8, 1, 344, 0, 1, '2014-12-08 09:59:08', 270, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 8, 1, 343, 1, 1, '2014-12-09 10:07:35', 279, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 8, 1, 353, 2, 1, '2014-12-10 04:24:13', 279, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 8, 1, 349, 4, 1, '2015-01-18 20:33:02', 309, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 9, 1, 357, 1, 1, '2014-12-09 10:07:35', 279, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 9, 1, 366, 2, 1, '2015-01-18 20:33:03', 309, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 9, 1, 362, 3, 1, '2014-12-12 10:27:16', 284, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 9, 1, 381, 4, 1, '2015-01-20 13:06:33', 316, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 9, 1, 375, 5, 1, '2015-01-18 20:50:20', 309, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 10, 1, 336, 0, 1, '2014-12-08 09:59:08', 270, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 4, 2, 340, 0, 1, '2014-12-08 10:46:58', 272, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 3, 2, 339, 1, 1, '2014-12-08 10:51:33', 273, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 4, 2, 338, 2, 1, '2014-12-09 05:38:21', 272, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 5, 2, 430, 0, 1, '2015-01-18 20:32:23', 308, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 5, 2, 479, 1, 1, '2015-01-21 06:05:07', 319, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 5, 2, 501, 2, 1, '2015-01-21 07:40:21', 319, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 2, 2, 358, 0, 1, '2014-12-08 23:23:16', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 2, 2, 354, 1, 1, '2014-12-09 05:38:21', 272, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 2, 2, 377, 2, 1, '2014-12-10 08:09:51', 280, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 2, 2, 359, 3, 1, '2014-12-10 12:07:22', 281, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 2, 2, 356, 4, 1, '2014-12-14 15:40:46', 285, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 2, 2, 437, 5, 2, '2015-01-12 13:51:01', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 2, 2, 364, 6, 2, '2014-12-16 10:51:05', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 2, 2, 363, 7, 1, '2014-12-16 10:51:05', 292, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 2, 2, 360, 8, 1, '2015-01-12 13:51:01', 300, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 2, 2, 379, 9, 1, '2015-01-15 14:51:59', 303, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 3, 2, 339, 0, 1, '2014-12-09 04:37:55', 271, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 4, 2, 338, 1, 1, '2014-12-09 05:38:21', 272, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 4, 2, 340, 2, 1, '2014-12-10 08:09:51', 280, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 10, 1, 336, 0, 1, '2014-12-09 10:07:35', 279, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 1, 2, 346, 0, 1, '2014-12-10 12:07:22', 281, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 1, 2, 351, 1, 1, '2014-12-14 15:40:45', 285, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 1, 2, 350, 2, 1, '2015-01-12 13:51:00', 300, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 1, 2, 383, 3, 1, '2015-01-15 14:51:58', 303, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 1, 2, 342, 5, 1, '2015-01-15 22:42:07', 304, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 1, 2, 345, 6, 1, '2015-01-18 18:57:08', 306, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 1, 2, 508, 7, 1, '2015-01-18 19:57:44', 307, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 1, 2, 352, 8, 1, '2015-01-18 20:36:19', 310, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 4, 2, 338, 0, 1, '2014-12-10 12:07:22', 281, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 3, 2, 339, 1, 1, '2014-12-14 15:40:46', 285, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 4, 2, 340, 2, 1, '2015-01-15 14:52:00', 303, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 10, 1, 336, 0, 1, '2015-01-18 20:33:03', 309, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 8, 1, 344, 0, 1, '2014-12-12 10:27:16', 284, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 1, 2, 351, 0, 1, '2014-12-15 16:53:59', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 1, 2, 348, 1, 1, '2015-01-21 07:29:58', 320, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 4, 2, 340, 0, 1, '2014-12-16 10:51:05', 292, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 3, 2, 339, 1, 1, '2015-01-12 13:51:02', 300, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 4, 2, 338, 2, 1, '2014-12-16 16:21:51', 292, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 12, 1, 502, 0, 1, '2014-12-16 22:59:05', 295, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 12, 1, 430, 1, 1, '2015-01-13 19:44:24', 295, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 13, 1, 483, 0, 1, '2015-01-13 19:48:23', 295, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 13, 1, 532, 1, 0, '2015-01-13 19:46:16', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 13, 1, 423, 2, 0, '2015-01-13 19:40:37', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 13, 1, 481, 3, 0, '2015-01-13 19:51:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 1, 2, 346, 0, 1, '2014-12-30 20:30:52', 299, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 1, 2, 478, 1, 1, '2015-01-25 11:00:21', 334, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 2, 2, 376, 0, 2, '2014-12-30 20:30:53', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 2, 2, 357, 1, 1, '2015-01-13 19:53:58', 299, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 12, 1, 502, 0, 0, '2015-01-08 08:22:38', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 12, 1, 430, 1, 1, '2015-02-05 17:03:26', 362, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 4, 2, 340, 0, 2, '2015-01-15 15:35:27', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 4, 2, 338, 1, 1, '2015-01-15 15:35:27', 303, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 2, 2, 363, 0, 1, '2015-01-15 22:42:08', 304, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 2, 2, 377, 1, 1, '2015-01-18 18:57:09', 306, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 2, 2, 358, 2, 1, '2015-01-18 19:57:45', 307, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 2, 2, 379, 3, 1, '2015-01-18 20:36:20', 310, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 2, 2, 364, 4, 1, '2015-01-19 00:52:58', 311, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 2, 2, 357, 5, 1, '2015-01-19 20:07:54', 312, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 2, 2, 360, 6, 1, '2015-01-20 06:42:43', 314, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 2, 2, 354, 7, 1, '2015-01-20 07:34:12', 315, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 2, 2, 437, 8, 2, '2015-01-20 20:56:52', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 2, 2, 359, 9, 1, '2015-01-20 20:56:52', 318, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, 2, 2, 356, 10, 1, '2015-01-21 07:36:39', 321, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 4, 2, 340, 0, 1, '2015-01-15 22:42:08', 304, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 3, 2, 339, 1, 1, '2015-01-16 17:16:23', 304, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 4, 2, 338, 2, 1, '2015-01-18 18:57:10', 306, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 4, 2, 338, 0, 1, '2015-01-18 19:57:45', 307, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 3, 2, 339, 1, 1, '2015-01-18 20:36:20', 310, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 4, 2, 340, 2, 1, '2015-01-19 00:52:59', 311, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 6, 2, 532, 0, 1, '2015-01-18 20:32:24', 308, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 6, 2, 483, 1, 1, '2015-01-21 06:05:08', 319, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 6, 2, 423, 2, 1, '2015-01-26 13:32:01', 338, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 6, 2, 481, 3, 1, '2015-01-26 21:24:49', 340, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 1, 1, 349, 0, 1, '2015-01-18 20:33:02', 309, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 1, 1, 353, 1, 1, '2015-01-20 13:06:32', 316, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 2, 1, 366, 0, 1, '2015-01-18 20:33:03', 309, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 2, 1, 375, 1, 1, '2015-01-18 20:50:20', 309, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 2, 1, 381, 2, 1, '2015-01-20 13:06:33', 316, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 2, 1, 362, 3, 1, '2015-01-20 06:39:06', 313, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 2, 1, 357, 4, 1, '2015-01-21 11:23:19', 323, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 3, 1, 336, 0, 1, '2015-01-18 20:33:03', 309, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 1, 2, 508, 0, 1, '2015-01-19 00:52:58', 311, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 1, 2, 342, 1, 1, '2015-01-19 20:07:53', 312, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 1, 2, 383, 2, 1, '2015-01-20 06:42:42', 314, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 1, 2, 352, 3, 1, '2015-01-20 07:34:11', 315, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 1, 2, 346, 4, 1, '2015-01-20 20:56:51', 318, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 1, 2, 345, 5, 1, '2015-01-21 07:36:38', 321, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 1, 2, 351, 6, 1, '2015-01-21 09:45:42', 322, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 1, 2, 548, 7, 1, '2015-01-21 11:41:30', 324, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 1, 2, 350, 8, 1, '2015-01-21 16:23:30', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 4, 2, 340, 0, 1, '2015-01-19 20:07:55', 312, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 4, 2, 338, 1, 1, '2015-01-20 06:42:44', 314, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 3, 2, 339, 2, 1, '2015-01-20 07:34:13', 315, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 3, 1, 336, 0, 1, '2015-01-20 13:06:34', 316, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 4, 2, 340, 0, 2, '2015-01-20 15:01:15', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 3, 2, 339, 1, 1, '2015-01-20 15:01:15', 312, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 4, 2, 338, 2, 1, '2015-01-20 20:56:52', 318, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 4, 2, 340, 0, 1, '2015-01-21 01:02:33', 314, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 4, 2, 338, 1, 1, '2015-01-21 07:36:40', 321, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 3, 2, 339, 2, 1, '2015-01-21 09:45:43', 322, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 2, 2, 364, 0, 1, '2015-01-21 07:29:59', 320, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 2, 2, 355, 1, 0, '2015-02-03 13:47:02', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 2, 2, 359, 0, 1, '2015-01-21 09:45:43', 322, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 2, 2, 379, 1, 1, '2015-01-21 11:41:31', 324, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 2, 2, 437, 2, 2, '2015-01-21 11:54:36', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 2, 2, 363, 3, 1, '2015-01-21 16:23:31', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 2, 2, 360, 4, 1, '2015-01-21 17:17:10', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 2, 2, 364, 5, 1, '2015-01-21 20:53:11', 328, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 2, 2, 354, 6, 1, '2015-01-23 15:59:08', 332, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 2, 2, 358, 7, 1, '2015-01-23 18:22:02', 333, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 2, 2, 357, 8, 1, '2015-01-25 11:00:22', 334, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 2, 2, 377, 9, 1, '2015-01-25 14:55:20', 335, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 2, 2, 356, 10, 1, '2015-01-27 12:14:07', 341, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 1, 1, 349, 0, 1, '2015-01-21 11:23:18', 323, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 1, 1, 353, 1, 1, '2015-01-21 13:01:46', 323, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 3, 1, 336, 0, 1, '2015-01-21 11:23:20', 323, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 3, 2, 339, 0, 1, '2015-01-21 11:41:32', 324, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 4, 2, 340, 1, 1, '2015-01-21 15:07:35', 318, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 4, 2, 338, 2, 1, '2015-01-21 16:23:31', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 5, 2, 430, 0, 1, '2015-01-26 13:32:01', 338, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 5, 2, 501, 1, 1, '2015-01-26 21:24:48', 340, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 5, 2, 479, 2, 1, '2015-01-28 00:21:33', 345, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 4, 2, 338, 0, 2, '2015-01-21 16:26:57', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 4, 2, 340, 1, 1, '2015-01-21 16:26:57', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 4, 2, 338, 0, 1, '2015-01-21 18:07:44', 318, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 4, 2, 340, 1, 2, '2015-01-21 18:08:01', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 4, 2, 340, 0, 2, '2015-01-21 18:08:01', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 4, 2, 338, 1, 1, '2015-01-21 18:08:01', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 1, 2, 548, 0, 1, '2015-01-21 20:53:09', 328, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 1, 2, 383, 1, 1, '2015-01-23 15:59:08', 332, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 1, 2, 350, 2, 1, '2015-01-23 18:22:01', 333, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 1, 2, 346, 3, 1, '2015-01-25 14:55:19', 335, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 1, 2, 352, 4, 1, '2015-01-26 09:27:26', 335, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 1, 2, 351, 5, 1, '2015-01-27 12:14:05', 341, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 1, 2, 342, 6, 1, '2015-01-27 13:05:19', 343, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 1, 2, 345, 7, 1, '2015-01-27 17:33:38', 344, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 1, 2, 508, 8, 1, '2015-01-28 20:49:58', 347, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 3, 2, 339, 0, 1, '2015-01-21 20:53:11', 328, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 4, 2, 338, 1, 1, '2015-01-22 15:18:31', 328, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 4, 2, 340, 2, 1, '2015-01-22 06:13:30', 318, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 4, 2, 340, 0, 1, '2015-01-22 06:13:31', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 4, 2, 338, 1, 1, '2015-01-22 15:18:31', 328, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 3, 2, 339, 2, 1, '2015-01-22 18:23:34', 318, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 4, 2, 338, 0, 2, '2015-01-22 15:42:29', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 4, 2, 340, 1, 1, '2015-01-22 15:42:29', 328, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 4, 2, 338, 0, 1, '2015-01-22 18:23:35', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 4, 2, 340, 1, 1, '2015-01-22 18:25:19', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 3, 2, 339, 2, 1, '2015-01-23 04:33:32', 328, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 2, 1, 357, 0, 1, '2015-01-22 19:56:58', 329, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 2, 1, 362, 1, 1, '2015-01-22 22:18:53', 330, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 1, 1, 349, 0, 1, '2015-01-22 22:18:52', 330, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 1, 1, 353, 1, 1, '2015-01-23 06:43:21', 331, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 3, 1, 336, 0, 1, '2015-01-22 22:18:54', 330, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 4, 2, 338, 0, 1, '2015-01-23 06:37:14', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 4, 2, 340, 1, 1, '2015-01-23 15:59:09', 332, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 3, 2, 339, 2, 1, '2015-01-23 18:22:03', 333, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 2, 1, 357, 0, 1, '2015-01-23 06:43:22', 331, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 2, 1, 381, 1, 1, '2015-01-25 15:29:54', 336, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 2, 1, 362, 2, 1, '2015-01-25 17:22:56', 337, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 2, 1, 366, 3, 1, '2015-01-26 06:17:19', 337, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 2, 1, 375, 4, 1, '2015-01-26 10:29:14', 336, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 3, 1, 336, 0, 1, '2015-01-23 06:43:23', 331, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 3, 2, 339, 0, 1, '2015-01-23 18:39:49', 327, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 4, 2, 338, 1, 1, '2015-01-25 14:55:21', 335, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 4, 2, 340, 2, 1, '2015-01-25 14:56:40', 335, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 1, 1, 353, 0, 2, '2015-01-24 01:40:49', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 1, 1, 349, 1, 1, '2015-01-24 01:40:49', 331, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 1, 1, 353, 0, 1, '2015-01-25 15:29:53', 336, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 1, 1, 349, 1, 1, '2015-01-25 15:34:11', 336, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 3, 1, 336, 0, 1, '2015-01-25 15:29:54', 336, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 1, 1, 349, 0, 1, '2015-01-25 17:22:55', 337, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 1, 1, 353, 1, 1, '2015-01-29 14:11:54', 350, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 3, 1, 336, 0, 1, '2015-01-25 17:22:56', 337, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, 3, 2, 590, 0, 1, '2015-01-26 03:21:51', 335, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, 4, 2, 338, 1, 1, '2015-01-27 12:14:07', 341, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, 4, 2, 340, 2, 1, '2015-01-27 12:42:47', 341, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 3, 2, 339, 3, 1, '2015-01-27 13:05:20', 343, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, 2, 1, 357, 0, 1, '2015-01-26 18:35:52', 337, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 2, 1, 362, 1, 1, '2015-01-29 14:11:55', 350, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 2, 1, 375, 2, 1, '2015-02-08 12:40:54', 368, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 2, 1, 366, 3, 1, '2015-03-05 18:36:08', 397, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 2, 1, 381, 4, 2, '2015-04-15 16:49:47', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 3, 1, 336, 0, 2, '2015-01-28 12:03:24', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 2, 2, 377, 0, 1, '2015-01-27 13:05:20', 343, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 2, 2, 354, 1, 1, '2015-01-27 17:33:39', 344, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 2, 2, 379, 2, 1, '2015-01-28 07:07:53', 341, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, 2, 2, 359, 3, 1, '2015-01-28 20:49:58', 347, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, 2, 2, 360, 4, 1, '2015-01-30 22:14:38', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, 2, 2, 364, 5, 1, '2015-02-02 11:28:24', 357, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 2, 2, 356, 6, 1, '2015-02-05 19:48:50', 364, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(856, 2, 2, 363, 7, 1, '2015-02-07 09:04:20', 365, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 2, 2, 357, 8, 1, '2015-01-28 14:42:44', 346, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 2, 2, 358, 9, 1, '2015-02-07 09:10:16', 365, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 2, 2, 437, 10, 2, '2015-02-07 11:18:23', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 3, 2, 590, 0, 1, '2015-01-27 14:26:28', 343, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 3, 2, 339, 1, 1, '2015-01-27 17:33:39', 344, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 6, 2, 481, 0, 1, '2015-01-28 00:21:34', 345, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 6, 2, 423, 1, 1, '2015-01-29 11:00:49', 349, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, 6, 2, 483, 2, 1, '2015-01-29 14:36:27', 351, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, 6, 2, 532, 3, 1, '2015-02-01 09:58:04', 354, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 4, 2, 340, 0, 2, '2015-01-28 01:02:51', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, 4, 2, 338, 1, 1, '2015-01-28 01:02:51', 341, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, 3, 2, 339, 2, 1, '2015-01-28 03:05:16', 343, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, 3, 2, 590, 3, 1, '2015-01-28 07:44:58', 343, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, 3, 1, 336, 0, 2, '2015-01-28 12:03:24', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(871, 3, 1, 335, 1, 1, '2015-01-28 12:03:24', 336, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, 3, 2, 339, 0, 1, '2015-01-28 13:03:52', 341, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, 3, 2, 590, 1, 1, '2015-01-28 20:49:59', 347, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, 4, 2, 338, 2, 1, '2015-01-30 22:14:39', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, 4, 2, 340, 3, 1, '2015-01-31 17:04:57', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, 1, 2, 346, 0, 1, '2015-01-28 14:42:43', 346, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, 1, 2, 478, 1, 1, '2015-02-04 12:19:52', 361, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(878, 5, 2, 430, 0, 1, '2015-01-29 11:00:48', 349, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(879, 5, 2, 479, 1, 1, '2015-01-29 14:36:26', 351, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(880, 5, 2, 501, 2, 1, '2015-02-01 09:58:03', 354, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(881, 3, 1, 335, 0, 1, '2015-01-29 14:11:55', 350, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(882, 3, 1, 336, 1, 1, '2015-02-08 12:40:55', 368, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, 1, 1, 353, 0, 2, '2015-01-30 08:25:18', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, 1, 1, 349, 1, 1, '2015-01-30 08:25:18', 350, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(885, 1, 2, 383, 0, 1, '2015-01-30 22:14:37', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, 1, 2, 345, 1, 1, '2015-02-02 11:28:23', 357, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, 1, 2, 351, 2, 1, '2015-02-05 19:48:49', 364, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, 1, 2, 346, 3, 1, '2015-02-07 09:04:19', 365, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, 1, 2, 548, 4, 1, '2015-02-07 11:18:22', 366, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, 1, 2, 342, 5, 1, '2015-02-07 11:20:07', 366, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, 1, 2, 508, 6, 1, '2015-02-08 12:00:12', 367, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, 1, 2, 350, 7, 1, '2015-02-09 21:00:38', 369, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, 1, 2, 352, 8, 1, '2015-02-18 11:09:24', 376, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, 4, 2, 340, 0, 2, '2015-02-01 05:09:57', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(895, 3, 2, 590, 1, 1, '2015-02-01 05:09:57', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(896, 3, 2, 339, 2, 1, '2015-02-02 11:28:25', 357, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(897, 4, 2, 338, 3, 1, '2015-02-01 17:19:58', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(898, 8, 2, 614, 4, 1, '2015-02-02 18:30:01', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, 5, 2, 430, 0, 1, '2015-02-01 12:59:22', 355, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, 5, 2, 479, 1, 1, '2015-02-02 04:24:59', 354, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(901, 5, 2, 501, 2, 1, '2015-02-02 16:44:22', 359, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, 6, 2, 481, 0, 1, '2015-02-01 12:59:22', 355, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(903, 6, 2, 483, 1, 1, '2015-02-02 16:44:23', 359, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, 6, 2, 532, 2, 1, '2015-02-10 18:40:36', 370, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, 6, 2, 423, 3, 1, '2015-02-28 15:21:48', 393, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, 4, 2, 340, 0, 1, '2015-02-01 17:27:10', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, 4, 2, 338, 1, 1, '2015-02-02 06:27:49', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, 2, 1, 357, 0, 1, '2015-02-02 11:42:20', 358, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, 2, 1, 362, 1, 1, '2015-04-02 20:07:32', 440, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, 3, 2, 339, 0, 2, '2015-02-03 05:39:23', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, 3, 2, 590, 1, 1, '2015-02-03 05:39:23', 357, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, 4, 2, 338, 2, 1, '2015-02-03 06:43:02', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, 4, 2, 340, 3, 1, '2015-02-03 22:07:04', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, 8, 2, 614, 4, 1, '2015-02-04 06:49:27', 353, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(915, 2, 2, 376, 0, 1, '2015-02-04 12:19:53', 361, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, 2, 2, 376, 0, 1, '2015-02-05 17:56:18', 363, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, 8, 2, 615, 0, 1, '2015-02-04 12:19:53', 361, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, 5, 1, 430, 0, 0, '2015-02-05 17:03:26', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, 5, 1, 502, 1, 0, '2015-02-05 17:03:26', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(920, 6, 1, 483, 0, 1, '2015-02-05 17:03:27', 362, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(921, 6, 1, 423, 1, 0, '2015-02-05 17:03:27', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(922, 6, 1, 481, 2, 0, '2015-02-05 17:03:27', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, 6, 1, 532, 3, 0, '2015-02-05 17:03:27', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, 1, 2, 346, 0, 1, '2015-02-05 17:56:17', 363, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, 1, 2, 478, 1, 1, '2015-03-14 11:35:28', 410, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, 8, 2, 615, 0, 1, '2015-02-05 17:56:19', 363, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, 8, 2, 630, 1, 1, '2015-02-05 18:00:27', 363, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(928, 2, 2, 357, 0, 1, '2015-02-05 18:00:52', 363, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(929, 2, 2, 376, 1, 1, '2015-03-14 11:35:30', 410, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, 4, 2, 338, 0, 1, '2015-02-05 19:48:50', 364, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, 3, 2, 339, 1, 1, '2015-02-06 14:29:07', 364, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, 8, 2, 614, 2, 1, '2015-02-07 09:04:20', 365, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, 4, 2, 340, 3, 1, '2015-02-07 11:18:23', 366, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, 3, 2, 590, 4, 1, '2015-02-08 05:42:22', 366, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, 8, 2, 614, 0, 2, '2015-02-07 09:49:20', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, 2, 2, 356, 0, 1, '2015-02-07 11:18:23', 366, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, 2, 2, 354, 1, 1, '2015-02-08 05:42:21', 366, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(938, 2, 2, 364, 2, 1, '2015-02-09 21:00:39', 369, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(939, 2, 2, 359, 3, 1, '2015-02-18 11:09:25', 376, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(940, 2, 2, 379, 4, 1, '2015-02-26 09:53:12', 392, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, 2, 2, 360, 5, 1, '2015-03-30 13:02:42', 425, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, 2, 2, 363, 6, 0, '2015-06-25 11:07:14', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, 2, 2, 377, 7, 0, '2015-06-25 11:07:14', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, 2, 2, 358, 8, 0, '2015-02-07 11:18:23', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, 2, 2, 437, 9, 0, '2015-02-07 11:18:23', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, 3, 2, 590, 0, 1, '2015-02-09 21:00:40', 369, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, 4, 2, 338, 1, 1, '2015-02-10 15:56:19', 369, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, 8, 2, 614, 2, 1, '2015-02-11 04:02:16', 369, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, 3, 2, 339, 3, 1, '2015-02-11 16:22:17', 369, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, 4, 2, 340, 4, 1, '2015-02-10 15:57:10', 369, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, 1, 1, 349, 0, 1, '2015-02-08 12:40:54', 368, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(952, 1, 1, 353, 1, 1, '2015-03-05 18:36:07', 397, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(953, 5, 2, 430, 0, 1, '2015-02-10 18:40:36', 370, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, 5, 2, 479, 1, 1, '2015-02-28 15:21:47', 393, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(955, 5, 2, 501, 2, 1, '2015-03-05 18:08:58', 396, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, 4, 2, 340, 0, 1, '2015-02-18 11:09:25', 376, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, 4, 2, 338, 1, 1, '2015-02-19 05:40:28', 376, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, 8, 2, 614, 2, 1, '2015-02-19 17:49:01', 376, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, 3, 2, 590, 3, 1, '2015-02-26 09:53:12', 392, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, 3, 2, 339, 4, 1, '2015-03-30 13:02:42', 425, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, 1, 2, 350, 0, 1, '2015-02-26 09:53:11', 392, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962, 1, 2, 655, 1, 1, '2015-03-30 13:02:41', 425, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(963, 1, 2, 342, 2, 0, '2015-06-25 11:07:14', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, 1, 2, 508, 3, 0, '2015-05-10 10:34:51', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(965, 1, 2, 346, 4, 0, '2015-02-26 09:53:11', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, 1, 2, 351, 5, 0, '2015-02-26 09:53:11', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, 1, 2, 352, 6, 0, '2015-02-26 09:53:11', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, 1, 2, 548, 7, 0, '2015-02-26 09:53:11', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(970, 1, 2, 383, 9, 0, '2015-02-26 09:53:11', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(971, 6, 2, 423, 0, 1, '2015-03-05 18:08:59', 396, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(972, 6, 2, 532, 1, 1, '2015-03-27 10:29:03', 420, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(973, 6, 2, 483, 2, 1, '2015-04-25 11:03:23', 445, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(974, 6, 2, 481, 3, 1, '2015-04-26 05:58:35', 445, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(975, 3, 1, 336, 0, 1, '2015-03-05 18:36:08', 397, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(976, 3, 1, 335, 1, 1, '2015-03-06 12:52:44', 397, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(977, 8, 1, 614, 2, 1, '2015-03-07 00:54:57', 397, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(978, 5, 2, 479, 0, 1, '2015-03-06 12:52:43', 396, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(979, 5, 2, 501, 1, 1, '2015-03-27 10:29:02', 420, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(980, 5, 2, 430, 2, 1, '2015-04-25 11:03:22', 445, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(981, 3, 2, 339, 0, 0, '2015-06-25 11:07:14', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(982, 8, 2, 614, 1, 0, '2015-06-25 11:07:14', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(983, 3, 2, 590, 2, 0, '2015-03-12 09:47:39', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(984, 4, 2, 338, 3, 0, '2015-03-12 09:47:39', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(985, 4, 2, 340, 4, 0, '2015-03-12 09:47:39', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(986, 8, 2, 615, 0, 1, '2015-03-14 11:35:30', 410, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(987, 8, 2, 630, 1, 1, '2015-03-15 06:19:03', 410, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(988, 2, 2, 357, 0, 1, '2015-03-17 18:04:24', 415, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(989, 8, 1, 630, 0, 1, '2015-04-02 20:07:33', 440, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(990, 2, 1, 362, 0, 2, '2015-04-03 14:21:15', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(991, 2, 1, 357, 1, 1, '2015-04-03 14:21:15', 440, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(994, 2, 1, 375, 0, 0, '2015-04-16 07:04:30', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(995, 2, 1, 366, 1, 0, '2015-04-15 16:49:47', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(996, 2, 1, 381, 2, 0, '2015-04-15 16:49:47', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(997, 2, 1, 357, 3, 0, '2015-04-15 16:49:47', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(998, 2, 1, 362, 4, 0, '2015-04-15 16:49:47', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(999, 3, 1, 336, 0, 0, '2015-04-16 07:04:30', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000, 8, 1, 614, 1, 0, '2015-04-15 16:49:48', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1001, 3, 1, 335, 2, 0, '2015-04-16 07:04:30', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1007, 3, 1, 335, 1, 0, '2015-04-16 06:04:04', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1008, 5, 2, 430, 0, 2, '2015-04-26 05:58:33', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1009, 5, 2, 479, 1, 1, '2015-04-26 05:58:33', 445, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1010, 5, 2, 501, 2, 1, '2015-04-26 07:18:10', 445, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1011, 5, 2, 501, 0, 2, '2015-04-29 13:15:23', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1012, 5, 2, 430, 1, 1, '2015-04-30 07:38:59', 445, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1013, 5, 2, 479, 2, 1, '2015-05-02 10:43:26', 452, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1014, 6, 2, 532, 0, 1, '2015-05-02 10:43:27', 452, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1015, 6, 2, 423, 1, 1, '2015-05-11 10:35:20', 454, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1016, 6, 2, 483, 2, 2, '2016-02-19 14:39:57', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1017, 6, 2, 481, 3, 2, '2016-02-19 14:39:57', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1018, 5, 2, 501, 0, 1, '2015-05-03 05:35:43', 452, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1019, 5, 2, 430, 1, 1, '2015-05-03 17:50:09', 452, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1020, 5, 2, 479, 2, 1, '2015-05-04 05:58:38', 452, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1021, 5, 2, 430, 0, 1, '2015-05-11 10:35:19', 454, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1022, 5, 2, 501, 1, 1, '2016-02-19 14:39:57', 519, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1023, 5, 2, 479, 2, 1, '2016-02-19 17:10:22', 520, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1024, 6, 2, 532, 0, 1, '2016-02-19 14:39:57', 519, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1025, 6, 2, 423, 1, 2, '2016-02-19 17:10:22', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1026, 6, 2, 483, 2, 2, '2016-02-19 17:10:22', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1027, 6, 2, 481, 3, 2, '2016-02-19 17:10:22', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1028, 6, 2, 423, 0, 2, '2016-02-19 17:10:22', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1029, 6, 2, 532, 1, 1, '2016-02-19 17:10:22', 520, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1030, 6, 2, 481, 2, 0, '2016-02-19 17:10:22', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1031, 6, 2, 483, 3, 0, '2016-02-19 17:10:22', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaction_courtier`
--

CREATE TABLE `t_transaction_courtier` (
  `TransactionID` int(11) NOT NULL,
  `CourtierID` int(10) NOT NULL,
  `Accepted` int(1) NOT NULL,
  `Accepted_Date` datetime DEFAULT NULL,
  `insert_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_transaction_courtier`
--

INSERT INTO `t_transaction_courtier` (`TransactionID`, `CourtierID`, `Accepted`, `Accepted_Date`, `insert_Date`, `updated_at`, `created_at`) VALUES
(256, 337, 1, '2014-12-01 13:07:51', '2014-12-01 12:37:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 348, 1, '2014-12-01 16:19:06', '2014-12-01 15:49:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 364, 1, '2014-12-01 17:23:24', '2014-12-01 16:53:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 335, 1, NULL, '2014-12-02 11:01:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 430, 1, '2014-12-02 18:42:50', '2015-01-13 19:43:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 423, 1, '2014-12-02 19:42:56', '2015-01-13 19:40:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 355, 1, '2014-12-05 15:30:30', '2014-12-05 15:00:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 351, 1, '2014-12-06 12:57:25', '2014-12-06 12:27:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 340, 1, '2014-12-06 10:21:04', '2014-12-06 09:51:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 346, 1, '2014-12-06 13:24:08', '2014-12-06 12:54:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 357, 1, '2014-12-06 12:49:52', '2015-01-13 19:54:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 437, 1, '2014-12-07 08:56:39', '2014-12-07 08:26:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 358, 1, '2014-12-08 11:57:50', '2014-12-08 11:27:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 339, 1, '2014-12-08 10:22:43', '2014-12-08 09:52:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 336, 1, '2014-12-08 10:46:00', '2014-12-08 10:16:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 350, 1, '2014-12-08 12:02:38', '2014-12-08 11:32:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 342, 1, '2014-12-08 11:53:31', '2014-12-08 11:23:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 359, 1, '2014-12-08 11:26:25', '2014-12-08 10:56:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 339, 1, '2014-12-08 11:37:28', '2014-12-08 11:07:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 346, 1, '2014-12-08 12:40:24', '2014-12-08 12:10:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 346, 1, '2014-12-08 12:50:05', '2014-12-08 12:20:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 358, 1, '2014-12-09 09:06:49', '2014-12-09 08:36:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 352, 1, '2014-12-09 08:31:44', '2014-12-09 08:01:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 383, 1, '2014-12-09 07:45:40', '2014-12-09 07:15:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 339, 1, '2014-12-09 09:14:26', '2014-12-09 08:44:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 354, 1, '2014-12-09 07:43:34', '2014-12-09 07:13:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 338, 1, '2014-12-09 06:53:01', '2014-12-09 06:23:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 346, 1, '2014-12-09 06:53:38', '2014-12-09 06:23:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 357, 1, '2014-12-09 10:41:23', '2014-12-09 10:11:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 336, 1, '2014-12-09 10:55:00', '2014-12-09 10:25:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 377, 1, '2014-12-10 12:07:11', '2014-12-10 11:37:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 340, 1, '2014-12-10 12:02:32', '2014-12-10 11:32:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 346, 1, '2014-12-10 22:58:40', '2014-12-10 22:28:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 359, 1, '2014-12-10 13:38:04', '2014-12-10 13:08:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 338, 1, '2014-12-10 12:41:09', '2014-12-10 12:11:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 362, 1, '2014-12-12 11:04:47', '2014-12-12 10:34:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 351, 1, '2014-12-14 16:21:21', '2014-12-14 15:51:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 356, 1, '2014-12-14 16:38:27', '2014-12-14 16:08:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 339, 1, '2014-12-17 21:34:42', '2014-12-17 21:04:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 342, 1, '2014-12-15 14:50:01', '2014-12-15 14:20:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 377, 1, '2014-12-15 17:16:48', '2014-12-15 16:46:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 514, 1, '2014-12-15 17:59:30', '2014-12-15 17:29:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 363, 1, '2014-12-16 11:33:21', '2014-12-16 11:03:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 338, 1, '2014-12-16 16:54:08', '2014-12-16 16:24:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 483, 1, '2014-12-16 23:37:31', '2015-01-13 19:48:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 430, 1, '2014-12-17 17:40:42', '2015-01-13 19:43:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 347, 1, '2014-12-19 16:09:37', '2014-12-19 15:39:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 360, 1, '2014-12-20 12:13:11', '2014-12-20 11:43:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 357, 1, '2014-12-21 17:09:17', '2015-01-13 19:54:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 346, 1, '2014-12-30 21:06:25', '2014-12-30 20:36:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 357, 1, '2014-12-30 21:23:03', '2015-01-13 19:54:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 502, 1, '2015-01-08 08:34:22', '2015-01-08 08:04:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 532, 1, '2015-01-07 18:13:45', '2015-01-13 19:46:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 350, 1, '2015-01-12 14:54:11', '2015-01-12 14:24:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 360, 1, '2015-01-12 14:40:25', '2015-01-12 14:10:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 339, 1, '2015-01-12 14:29:02', '2015-01-12 13:59:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 362, 1, '2015-01-13 08:04:29', '2015-01-13 07:34:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 362, 1, '2015-01-13 08:12:35', '2015-01-13 07:42:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 383, 1, '2015-01-15 15:23:46', '2015-01-15 14:53:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 379, 1, '2015-01-15 15:35:02', '2015-01-15 15:05:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 339, 1, '2015-01-15 18:24:46', '2015-01-15 17:54:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 342, 1, '2015-01-16 09:30:09', '2015-01-16 09:00:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 363, 1, '2015-01-15 23:44:08', '2015-01-15 23:14:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 339, 1, '2015-01-16 17:47:46', '2015-01-16 17:17:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 364, 1, '2015-01-17 12:04:19', '2015-01-17 11:34:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 377, 1, '2015-01-19 10:44:01', '2015-01-19 10:14:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 338, 1, '2015-01-18 19:38:26', '2015-01-18 19:08:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 508, 1, '2015-01-18 20:37:12', '2015-01-18 20:07:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 358, 1, '2015-01-18 20:30:43', '2015-01-18 20:00:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 338, 1, '2015-01-18 20:29:45', '2015-01-18 19:59:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 430, 1, '2015-01-18 21:05:03', '2015-01-18 20:35:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 532, 1, '2015-01-18 21:03:23', '2015-01-18 20:33:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 349, 1, '2015-01-18 21:08:17', '2015-01-18 20:38:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 336, 1, '2015-01-18 21:11:35', '2015-01-18 20:41:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 352, 1, '2015-01-18 21:40:15', '2015-01-18 21:10:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 379, 1, '2015-01-18 21:10:12', '2015-01-18 20:40:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 339, 1, '2015-01-18 21:07:25', '2015-01-18 20:37:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 375, 1, '2015-01-18 22:22:38', '2015-01-18 21:52:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 508, 1, '2015-01-19 08:48:25', '2015-01-19 08:18:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 364, 1, '2015-01-19 08:28:30', '2015-01-19 07:58:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 340, 1, '2015-01-19 11:06:27', '2015-01-19 10:36:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 342, 1, '2015-01-20 08:46:46', '2015-01-20 08:16:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 357, 1, '2015-01-19 20:40:30', '2015-01-19 20:10:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 362, 1, '2015-01-20 07:16:28', '2015-01-20 06:46:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 383, 1, '2015-01-20 07:22:00', '2015-01-20 06:52:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 360, 1, '2015-01-20 09:04:24', '2015-01-20 08:34:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 352, 1, '2015-01-20 09:18:22', '2015-01-20 08:48:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 354, 1, '2015-01-20 15:38:17', '2015-01-20 15:08:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 339, 1, '2015-01-20 08:10:16', '2015-01-20 07:40:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 353, 1, '2015-01-20 17:45:35', '2015-01-20 17:15:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 381, 1, '2015-01-20 19:31:30', '2015-01-20 19:01:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 336, 1, '2015-01-20 13:39:14', '2015-01-20 13:09:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 339, 1, '2015-01-20 15:32:13', '2015-01-20 15:02:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 346, 1, '2015-01-21 06:36:49', '2015-01-21 06:06:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 359, 1, '2015-01-20 21:31:23', '2015-01-20 21:01:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 340, 1, '2015-01-21 08:35:35', '2015-01-21 08:05:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 483, 1, '2015-01-21 11:48:22', '2015-01-21 11:18:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 364, 1, '2015-01-21 08:43:03', '2015-01-21 08:13:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 337, 1, '2015-01-21 08:03:19', '2015-01-21 07:33:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 356, 1, '2015-01-21 09:24:42', '2015-01-21 08:54:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 338, 1, '2015-01-21 16:56:45', '2015-01-21 16:26:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 501, 1, '2015-01-21 09:00:36', '2015-01-21 08:30:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 351, 1, '2015-01-21 10:18:13', '2015-01-21 09:48:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 359, 1, '2015-01-21 10:26:29', '2015-01-21 09:56:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 339, 1, '2015-01-21 10:17:22', '2015-01-21 09:47:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 357, 1, '2015-01-21 11:54:41', '2015-01-21 11:24:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 336, 1, '2015-01-21 11:53:54', '2015-01-21 11:23:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 548, 1, '2015-01-21 12:49:43', '2015-01-21 12:19:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 379, 1, '2015-01-21 12:56:44', '2015-01-21 12:26:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 339, 1, '2015-01-21 12:12:27', '2015-01-21 11:42:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 350, 1, '2015-01-21 17:13:47', '2015-01-21 16:43:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 360, 1, '2015-01-21 17:59:49', '2015-01-21 17:29:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 548, 1, '2015-01-21 22:26:17', '2015-01-21 21:56:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 364, 1, '2015-01-21 21:29:04', '2015-01-21 20:59:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 339, 1, '2015-01-22 18:54:27', '2015-01-22 18:24:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 357, 1, '2015-01-22 20:31:06', '2015-01-22 20:01:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 349, 1, '2015-01-23 07:27:57', '2015-01-23 06:57:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 362, 1, '2015-01-22 23:07:28', '2015-01-22 22:37:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 336, 1, '2015-01-23 06:56:20', '2015-01-23 06:26:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 339, 1, '2015-01-23 08:35:35', '2015-01-23 08:05:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 357, 1, '2015-01-23 07:14:38', '2015-01-23 06:44:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 336, 1, '2015-01-23 07:19:49', '2015-01-23 06:49:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 383, 1, '2015-01-23 17:22:10', '2015-01-23 16:52:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 354, 1, '2015-01-23 17:27:11', '2015-01-23 16:57:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 340, 0, NULL, '2015-01-23 15:59:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 350, 1, '2015-01-23 20:27:59', '2015-01-23 19:57:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 358, 1, '2015-01-23 20:54:07', '2015-01-23 20:24:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 339, 1, '2015-01-23 18:52:42', '2015-01-23 18:22:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 339, 1, '2015-01-23 19:10:38', '2015-01-23 18:40:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 349, 1, '2015-01-24 06:39:39', '2015-01-24 06:09:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 478, 1, '2015-01-25 11:48:36', '2015-01-25 11:18:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 357, 1, '2015-01-25 11:32:11', '2015-01-25 11:02:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 377, 1, '2015-01-25 18:43:31', '2015-01-25 18:13:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 349, 1, '2015-01-25 16:04:54', '2015-01-25 15:34:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 349, 1, '2015-01-25 17:55:12', '2015-01-25 17:25:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 336, 1, '2015-01-25 17:53:40', '2015-01-25 17:23:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 590, 1, '2015-01-26 03:54:47', '2015-01-26 03:24:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 352, 1, '2015-01-26 10:03:09', '2015-01-26 09:33:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 375, 1, '2015-01-26 18:37:51', '2015-01-26 18:07:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 430, 1, '2015-01-26 14:02:56', '2015-01-26 13:32:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 423, 1, '2015-01-26 14:04:24', '2015-01-26 13:34:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 357, 1, '2015-01-26 20:04:33', '2015-01-26 19:34:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 501, 1, '2015-01-27 08:35:31', '2015-01-27 08:05:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 481, 1, '2015-01-26 22:02:08', '2015-01-26 21:32:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 351, 1, '2015-01-27 12:58:14', '2015-01-27 12:28:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 342, 1, '2015-01-27 14:38:39', '2015-01-27 14:08:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 377, 1, '2015-01-27 17:46:45', '2015-01-27 17:16:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 479, 1, '2015-01-28 08:22:54', '2015-01-28 07:52:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 481, 1, '2015-01-28 08:40:22', '2015-01-28 08:10:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 379, 1, '2015-01-28 14:56:36', '2015-01-28 14:26:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 590, 1, '2015-01-28 11:04:00', '2015-01-28 10:34:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 357, 1, '2015-01-28 10:47:05', '2015-01-28 10:17:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 357, 1, '2015-01-28 10:47:41', '2015-01-28 10:17:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 335, 1, '2015-01-28 17:47:22', '2015-01-28 17:17:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 339, 1, '2015-01-28 13:34:45', '2015-01-28 13:04:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 346, 1, '2015-01-28 15:36:50', '2015-01-28 15:06:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 357, 1, '2015-01-28 15:13:35', '2015-01-28 14:43:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 508, 1, '2015-01-29 07:22:46', '2015-01-29 06:52:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 359, 1, '2015-01-28 21:27:10', '2015-01-28 20:57:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 590, 1, '2015-01-28 22:12:58', '2015-01-28 21:42:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 430, 1, '2015-01-29 11:31:36', '2015-01-29 11:01:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 423, 1, '2015-01-29 11:31:46', '2015-01-29 11:01:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 362, 1, '2015-01-29 15:03:15', '2015-01-29 14:33:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 335, 1, '2015-01-29 15:13:05', '2015-01-29 14:43:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 479, 1, '2015-01-29 15:10:36', '2015-01-29 14:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 483, 1, '2015-01-29 15:10:08', '2015-01-29 14:40:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 349, 1, '2015-01-30 08:56:43', '2015-01-30 08:26:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 346, 1, '2015-01-30 16:33:42', '2015-01-30 16:03:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 383, 1, '2015-01-30 23:08:32', '2015-01-30 22:38:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 360, 1, '2015-01-31 15:22:51', '2015-01-31 14:52:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 532, 1, '2015-02-01 10:28:59', '2015-02-01 09:58:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 430, 1, '2015-02-01 13:35:09', '2015-02-01 13:05:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 481, 1, '2015-02-01 15:45:54', '2015-02-01 15:15:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 479, 1, '2015-02-02 07:17:55', '2015-02-02 06:47:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 364, 1, '2015-02-02 12:00:14', '2015-02-02 11:30:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 357, 1, '2015-02-02 12:13:13', '2015-02-02 11:43:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 501, 1, '2015-02-03 09:46:49', '2015-02-03 09:16:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 483, 1, '2015-02-02 20:52:57', '2015-02-02 20:22:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 590, 1, '2015-02-03 14:18:26', '2015-02-03 13:48:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 614, 1, '2015-02-04 07:51:11', '2015-02-04 07:21:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 478, 1, '2015-02-04 13:27:14', '2015-02-04 12:57:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 376, 1, '2015-02-04 13:52:19', '2015-02-04 13:22:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 615, 1, '2015-02-04 13:21:09', '2015-02-04 12:51:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 430, 1, '2015-02-05 17:35:29', '2015-02-05 17:05:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 483, 1, '2015-02-05 17:46:38', '2015-02-05 17:16:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 346, 1, '2015-02-05 22:01:02', '2015-02-05 21:31:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 630, 1, '2015-02-05 18:34:19', '2015-02-05 18:04:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 357, 1, '2015-02-05 18:34:06', '2015-02-05 18:04:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 351, 1, '2015-02-06 08:33:00', '2015-02-06 08:03:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 356, 1, '2015-02-06 11:21:27', '2015-02-06 10:51:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 339, 1, '2015-02-06 15:00:50', '2015-02-06 14:30:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 346, 1, '2015-02-07 09:49:11', '2015-02-07 09:19:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 614, 1, '2015-02-07 10:26:47', '2015-02-07 09:56:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 358, 1, '2015-02-07 09:54:59', '2015-02-07 09:24:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 342, 1, '2015-02-07 12:37:38', '2015-02-07 12:07:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 354, 1, '2015-02-08 08:35:57', '2015-02-08 08:05:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 590, 1, '2015-02-08 13:38:12', '2015-02-08 13:08:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 349, 1, '2015-02-08 13:14:53', '2015-02-08 12:44:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 375, 1, '2015-02-08 13:25:38', '2015-02-08 12:55:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 336, 1, '2015-02-08 20:38:50', '2015-02-08 20:08:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 350, 1, '2015-02-09 21:31:51', '2015-02-09 21:01:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 364, 1, '2015-02-09 21:34:11', '2015-02-09 21:04:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 430, 1, '2015-02-10 20:07:10', '2015-02-10 19:37:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 532, 1, '2015-02-10 19:47:41', '2015-02-10 19:17:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 342, 1, '2015-02-11 13:02:56', '2015-02-11 12:32:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 339, 1, '2015-02-11 17:20:30', '2015-02-11 16:50:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 375, 1, '2015-02-12 15:36:22', '2015-02-12 15:06:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 355, 1, '2015-02-15 20:31:32', '2015-02-15 20:01:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 362, 1, '2015-02-16 14:26:37', '2015-02-16 13:56:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 352, 1, '2015-02-18 11:52:09', '2015-02-18 11:22:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 359, 1, '2015-02-18 12:50:42', '2015-02-18 12:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 355, 1, '2015-02-18 13:25:37', '2015-02-18 12:55:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 655, 1, '2015-02-18 16:30:54', '2015-02-18 16:00:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 437, 1, '2015-02-19 18:08:28', '2015-02-19 17:38:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 614, 1, '2015-02-19 18:31:42', '2015-02-19 18:01:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 483, 1, '2015-02-20 11:13:22', '2015-02-20 10:43:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 655, 1, '2015-02-24 15:45:32', '2015-02-24 15:15:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 655, 1, '2015-02-24 15:49:34', '2015-02-24 15:19:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 357, 1, '2015-02-25 20:36:27', '2015-02-25 20:06:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 357, 1, '2015-02-25 20:38:23', '2015-02-25 20:08:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 357, 1, '2015-02-25 20:41:12', '2015-02-25 20:11:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 357, 1, '2015-02-25 20:51:42', '2015-02-25 20:21:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 357, 1, '2015-02-25 20:52:42', '2015-02-25 20:22:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 357, 1, '2015-02-25 21:01:27', '2015-02-25 20:31:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 350, 1, '2015-02-26 10:31:39', '2015-02-26 10:01:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 379, 1, '2015-02-26 12:02:10', '2015-02-26 11:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 590, 1, '2015-02-26 13:20:14', '2015-02-26 12:50:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 479, 1, '2015-02-28 19:09:17', '2015-02-28 18:39:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 423, 1, '2015-03-01 09:12:31', '2015-03-01 08:42:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 383, 1, '2015-03-03 10:23:23', '2015-03-03 09:53:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 383, 1, '2015-03-03 10:51:54', '2015-03-03 10:21:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 423, 1, '2015-03-05 21:59:25', '2015-03-05 21:29:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 366, 1, '2015-03-06 09:51:31', '2015-03-06 09:21:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 342, 1, '2015-03-06 10:21:21', '2015-03-06 09:51:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 479, 1, '2015-03-06 13:43:10', '2015-03-06 13:13:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 355, 1, '2015-03-06 16:20:00', '2015-03-06 15:50:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 614, 1, '2015-03-07 09:31:44', '2015-03-07 09:01:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 355, 1, '2015-03-09 11:10:11', '2015-03-09 09:40:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 342, 1, '2015-03-09 20:25:12', '2015-03-09 18:55:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 351, 1, '2015-03-10 17:40:21', '2015-03-10 16:10:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 351, 1, '2015-03-11 12:51:27', '2015-03-11 11:21:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 351, 1, '2015-03-11 13:38:27', '2015-03-11 12:08:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 364, 1, '2015-03-12 10:55:39', '2015-03-12 09:25:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 364, 1, '2015-03-12 11:00:13', '2015-03-12 09:30:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 356, 1, '2015-03-13 10:23:54', '2015-03-13 08:53:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 478, 1, '2015-03-14 15:12:36', '2015-03-14 13:42:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 376, 1, '2015-03-14 19:24:48', '2015-03-14 17:54:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 630, 1, '2015-03-15 07:54:26', '2015-03-15 06:24:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 354, 1, '2015-03-16 11:00:47', '2015-03-16 09:30:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 383, 1, '2015-03-16 12:45:53', '2015-03-16 11:15:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 383, 1, '2015-03-16 14:09:52', '2015-03-16 12:39:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 355, 1, '2015-03-17 14:58:53', '2015-03-17 13:28:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 357, 1, '2015-03-17 19:38:29', '2015-03-17 18:08:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 357, 1, '2015-03-19 14:57:20', '2015-03-19 13:27:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 357, 1, '2015-03-23 16:39:47', '2015-03-23 15:09:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 345, 1, '2015-03-24 16:14:07', '2015-03-24 14:44:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 356, 1, '2015-03-25 18:16:53', '2015-03-25 16:46:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 501, 1, '2015-03-27 12:52:29', '2015-03-27 11:22:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 532, 1, '2015-03-27 12:33:01', '2015-03-27 11:03:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 346, 1, '2015-03-27 20:09:56', '2015-03-27 18:39:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 357, 1, '2015-03-28 14:04:53', '2015-03-28 12:34:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 357, 1, '2015-03-28 14:05:50', '2015-03-28 12:35:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 614, 1, '2015-03-30 12:14:31', '2015-03-30 10:44:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 655, 1, '2015-03-30 14:44:42', '2015-03-30 13:14:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 360, 1, '2015-03-30 17:11:18', '2015-03-30 15:41:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 339, 1, '2015-03-30 15:54:28', '2015-03-30 14:24:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 363, 1, '2015-03-30 15:35:58', '2015-03-30 14:05:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 363, 1, '2015-03-30 15:50:18', '2015-03-30 14:20:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 363, 1, '2015-03-30 15:58:25', '2015-03-30 14:28:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 363, 1, '2015-03-30 16:02:18', '2015-03-30 14:32:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 363, 1, '2015-03-31 12:13:57', '2015-03-31 10:43:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 363, 1, '2015-03-31 12:16:10', '2015-03-31 10:46:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 363, 1, '2015-04-01 11:21:36', '2015-04-01 09:51:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 363, 1, '2015-04-01 11:46:07', '2015-04-01 10:16:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 363, 1, '2015-04-01 12:02:57', '2015-04-01 10:32:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 363, 1, '2015-04-01 12:12:44', '2015-04-01 10:42:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 363, 1, '2015-04-01 12:15:45', '2015-04-01 10:45:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 363, 1, '2015-04-01 12:18:29', '2015-04-01 10:48:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 363, 1, '2015-04-01 12:55:21', '2015-04-01 11:25:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 357, 1, '2015-04-01 14:45:36', '2015-04-01 13:15:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 630, 0, NULL, '2015-04-02 20:07:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 357, 1, '2015-04-03 15:59:05', '2015-04-03 14:29:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 358, 1, '2015-04-03 16:12:00', '2015-04-03 14:42:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 614, 1, '2015-04-08 12:08:26', '2015-04-08 10:38:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 355, 1, '2015-04-12 20:43:28', '2015-04-12 19:13:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 358, 1, '2015-04-15 16:41:34', '2015-04-15 15:11:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 481, 1, '2015-04-26 08:51:56', '2015-04-26 07:21:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 355, 1, '2015-04-28 15:34:19', '2015-04-28 14:04:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 364, 1, '2015-04-29 11:51:46', '2015-04-29 10:21:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 430, 1, '2015-04-30 09:23:17', '2015-04-30 07:53:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 363, 1, '2015-04-30 10:20:37', '2015-04-30 08:50:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 340, 1, '2015-05-01 11:21:03', '2015-05-01 09:51:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 340, 1, '2015-05-01 11:22:45', '2015-05-01 09:52:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 532, 1, '2015-05-02 12:22:12', '2015-05-02 10:52:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 479, 1, '2015-05-04 07:30:24', '2015-05-04 06:00:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 430, 1, '2015-05-11 12:46:02', '2015-05-11 11:16:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 423, 1, '2015-05-11 13:34:43', '2015-05-11 12:04:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 363, 1, '2015-05-13 11:10:56', '2015-05-13 09:40:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 363, 1, '2015-05-13 11:16:09', '2015-05-13 09:46:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 363, 1, '2015-05-13 11:51:58', '2015-05-13 10:21:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 363, 1, '2015-05-13 11:57:39', '2015-05-13 10:27:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 363, 1, '2015-05-13 12:01:11', '2015-05-13 10:31:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 363, 1, '2015-05-13 12:04:48', '2015-05-13 10:34:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 363, 1, '2015-05-13 12:08:02', '2015-05-13 10:38:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 355, 1, '2015-05-15 18:34:02', '2015-05-15 17:04:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 357, 1, '2015-05-20 14:12:27', '2015-05-20 12:42:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 355, 1, '2015-05-26 20:25:00', '2015-05-26 18:55:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 346, 1, '2015-05-27 10:39:15', '2015-05-27 09:09:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 346, 1, '2015-05-27 11:09:02', '2015-05-27 09:39:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 375, 1, '2015-05-28 15:06:23', '2015-05-28 13:36:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 375, 1, '2015-05-28 15:10:27', '2015-05-28 13:40:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 375, 1, '2015-05-28 15:35:34', '2015-05-28 14:05:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 375, 1, '2015-05-28 15:37:58', '2015-05-28 14:07:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 375, 1, '2015-05-28 15:53:18', '2015-05-28 14:23:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 357, 1, '2015-06-15 10:52:36', '2015-06-15 09:22:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 357, 1, '2015-06-15 10:53:55', '2015-06-15 09:23:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 357, 1, '2015-06-15 10:55:12', '2015-06-15 09:25:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 357, 1, '2015-06-15 10:56:17', '2015-06-15 09:26:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 357, 1, '2015-06-15 11:01:04', '2015-06-15 09:31:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 357, 1, '2015-06-15 11:06:16', '2015-06-15 09:36:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 350, 1, '2015-06-15 13:06:09', '2015-06-15 11:36:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 363, 1, '2015-06-18 10:38:21', '2015-06-18 09:08:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 363, 1, '2015-06-18 10:45:25', '2015-06-18 09:15:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 363, 1, '2015-06-18 10:49:10', '2015-06-18 09:19:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 363, 1, '2015-06-18 11:28:31', '2015-06-18 09:58:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 363, 1, '2015-06-18 15:27:48', '2015-06-18 13:57:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 363, 1, '2015-06-23 14:31:10', '2015-06-23 13:01:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 355, 1, '2015-06-23 16:40:43', '2015-06-23 15:10:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 342, 1, '2015-06-24 11:55:31', '2015-06-24 10:25:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 377, 0, NULL, '2015-06-24 20:04:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 614, 0, NULL, '2015-06-24 20:04:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 336, 1, '2015-06-25 10:50:26', '2015-06-25 09:20:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 336, 1, '2015-06-25 10:52:47', '2015-06-25 09:22:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 336, 1, '2015-06-25 10:55:01', '2015-06-25 09:25:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 336, 1, '2015-06-25 10:59:49', '2015-06-25 09:29:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 336, 1, '2015-06-25 11:03:02', '2015-06-25 09:33:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 336, 1, '2015-06-25 11:05:03', '2015-06-25 09:35:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 336, 1, '2015-06-25 11:06:10', '2015-06-25 09:36:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 336, 1, '2015-06-25 11:08:14', '2015-06-25 09:38:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 336, 1, '2015-06-25 11:09:34', '2015-06-25 09:39:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 336, 1, '2015-06-25 11:11:45', '2015-06-25 09:41:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 336, 1, '2015-06-25 11:14:05', '2015-06-25 09:44:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 336, 1, '2015-06-25 11:17:20', '2015-06-25 09:47:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 336, 1, '2015-06-25 11:18:40', '2015-06-25 09:48:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 363, 1, '2015-06-25 11:59:28', '2015-06-25 10:29:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 336, 1, '2015-06-25 12:41:17', '2015-06-25 11:11:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 363, 1, '2015-06-26 12:12:26', '2015-06-26 10:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 363, 1, '2015-06-30 11:51:44', '2015-06-30 10:21:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 363, 1, '2015-06-30 12:02:58', '2015-06-30 10:32:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 363, 1, '2015-07-07 10:28:20', '2015-07-07 08:58:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 355, 1, '2015-07-26 14:58:50', '2015-07-26 13:28:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 355, 1, '2015-08-09 13:27:26', '2015-08-09 11:57:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 375, 1, '2015-08-20 14:03:11', '2015-08-20 12:33:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 355, 1, '2015-08-29 09:30:20', '2015-08-29 08:00:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 339, 0, NULL, '2016-02-15 20:29:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 346, 0, NULL, '2016-02-15 20:29:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 781, 0, NULL, '2016-02-15 20:29:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 339, 0, NULL, '2016-02-15 20:30:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 339, 0, NULL, '2016-02-15 20:35:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 346, 0, NULL, '2016-02-15 20:35:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 781, 0, NULL, '2016-02-15 20:36:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 590, 1, NULL, '2016-02-16 12:47:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 376, 1, '2016-02-17 14:28:49', '2016-02-17 19:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 781, 1, NULL, '2016-02-16 12:48:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 501, 0, NULL, '2016-02-19 14:39:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 532, 0, NULL, '2016-02-19 14:39:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 479, 1, '2016-02-19 12:21:58', '2016-02-19 17:21:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 532, 0, NULL, '2016-02-19 17:10:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 479, 1, '2016-02-19 12:27:35', '2016-02-19 17:27:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `UserID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `SignUpDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastConnectionDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LastSoldDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `LastBuyDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `LastTransaction` datetime DEFAULT NULL,
  `CityID` int(3) NOT NULL,
  `GroupID` int(10) NOT NULL,
  `Language` varchar(2) NOT NULL DEFAULT 'en',
  `Phone` varchar(15) DEFAULT NULL,
  `Cell` varchar(15) DEFAULT NULL,
  `Vacance` int(1) DEFAULT NULL,
  `Bilingue` varchar(2) NOT NULL,
  `Picture` varchar(150) NOT NULL,
  `Militaire` int(11) NOT NULL,
  `Adresse` varchar(200) DEFAULT NULL,
  `WebSite` varchar(150) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `BannerID` int(10) DEFAULT NULL,
  `Transaction_Type` int(10) DEFAULT NULL,
  `Reference` int(10) NOT NULL,
  `CourtierCityName` varchar(50) DEFAULT NULL,
  `TempPassword` varchar(50) DEFAULT NULL,
  `SmsNumber` varchar(12) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`UserID`, `email`, `FirstName`, `LastName`, `Password`, `remember_token`, `SignUpDate`, `LastConnectionDate`, `LastSoldDate`, `LastBuyDate`, `LastTransaction`, `CityID`, `GroupID`, `Language`, `Phone`, `Cell`, `Vacance`, `Bilingue`, `Picture`, `Militaire`, `Adresse`, `WebSite`, `PostalCode`, `BannerID`, `Transaction_Type`, `Reference`, `CourtierCityName`, `TempPassword`, `SmsNumber`, `enable`, `updated_at`, `created_at`) VALUES
(1, 'admin@admin.com', 'Admin', 'admin', '$2y$10$zWJX.UNCgAgTSiwc5KW/R.9bMVJBapm3MrE02zzoOawHA6gSZE3/a', 'pKk9FpSzWRMpIgdDfYBHhDriqYHxJfSWbnWTl2DukBHSgXgmrlFvMKxY4zfj', '2015-12-05 15:08:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 4, 'FR', '', '', 0, '', '', 0, '', '', '', 0, 0, 0, '', NULL, '', 1, '2016-04-07 06:06:02', '2015-11-23 18:30:00'),
(2, 'kroy@gmail.com', 'kundan', 'roy', '$2y$10$zWJX.UNCgAgTSiwc5KW/R.9bMVJBapm3MrE02zzoOawHA6gSZE3/a', 'drPelWYM85zy1R5oLM1WFGbUjD1GtIWA2gqocrIrxV7mAHfqzi7PaRg4AUS0', '2015-12-09 10:59:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 3, 'en', '8103194076', '8103194075', 0, 'Bi', '', 0, '', 'http://google.com', '452001', 123, 0, 1, 'indore', '123456', '8103194076', 1, '2016-04-07 07:11:53', '2015-11-24 08:13:35'),
(3, 'rajesh@gmail.com', 'Rajesh', 'kumar', '$2y$10$3XIzk8545bcOVDyTt41tQuQB7aFiaFQB0Qf8wNQ6gFpFc1w7P39JK', '', '2015-11-27 11:00:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 12, 3, 'en', '8103194076', '9856321474', 0, 'Bi', '', 0, 'Indore mp', 'http://google.com', '452001', 2, 2, 0, 'indore', NULL, NULL, 2, '2016-01-05 03:39:13', '2015-11-27 02:42:42'),
(4, 'nitin@gmail.com', 'nitin', 'dabi', '$2y$10$bFRCBnXRu3Dq8w3ZlOmkm.v.os0uiw5UIHSTwaygZXIoa/ZBo11Ki', '', '2015-11-27 11:00:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 11, 4, 'en', '784512023', '784452541', 0, 'Bi', '', 0, 'Indore mp', 'http://google.com', '452001', 123, 1, 0, 'indore', NULL, NULL, 2, '2016-04-07 07:11:06', '2015-11-27 04:41:40'),
(5, 'kroy1@gmail.com', 'kundan', 'kumar', '$2y$10$OHbbV0DoEnSKHdMw8u.GoefB.KqQzw2EZd8Rvi4XQ4EHeUAUMaaU6', '', '2015-12-10 10:23:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 4, 'fr', '8103194076', '784452541', 0, '', '', 0, '', 'http://google.com', '452001', 0, 0, 0, '', NULL, NULL, 1, '2016-01-05 03:39:17', '2015-11-27 05:20:38'),
(16, 'ftgirard@hotmail.com', 'Francis', 'Tremblay-Girard', '$2y$10$SYFFItNh3VOQUBV9TQ5/wOuYWgtE.dzSSKEgjlYF.ugRRUTRxVQCK', 'F4xAWUs4OdhZAP3Ovaragc50Svl4Dj7mVd9HRPdbqyLSUgOMaTeola6gNUtW', '2016-01-22 13:22:10', '0000-00-00 00:00:00', '2016-02-19 14:39:57', '2016-02-19 17:27:35', NULL, 2, 3, 'FR', '4185573902', '4185573902', NULL, '', 'default-user-image.png', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-20 03:05:52', '2016-01-22 07:52:10'),
(18, 'ftgirard1@gmail.com', 'Francis', 'Tremblay-Girard', '$2y$10$aMyNmNs2ciXNc5XF3SLu6uH2DXcDbk3DFXgtUYF2rqlh4DAsr1maS', '', '2016-01-22 15:01:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 0, 'en', NULL, '4185573902', NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-01-22 09:31:20', '2016-01-22 09:31:20'),
(19, 'mrblouin@hotmail.com', 'Alexandre', 'Blouin', '$2y$10$TzLowJ0S8TP/rBvtvufMLOdBkDQOVEkpbXlTNfz8W7pt5xytOcqYa', 'DSakjwDMqC9MOuds0aFGaRi4Jn2yG1snNGFADzWShSLZnw5lM8bnt2bMbDRA', '2016-02-02 19:20:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 0, 'en', NULL, '4183023941', NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-03 00:22:07', '2016-02-03 00:20:24'),
(335, 'dcarter@blancnoirimmobilier.com', 'Dave', 'Carter', '73f2788577c877f43c070df3ab908f04', NULL, '2015-10-09 22:27:20', '0000-00-00 00:00:00', '2014-11-28 01:05:30', '2014-11-28 01:05:30', NULL, 2, 1, 'FR', '(418) 255-0271', '(418) 255-0271', 0, '', 'photo-dave-carter.jpg', 0, '2470 #8 boul. Bastien', 'www.blancnoirimmobilier.com', 'G2B1B4', 3, 1, 0, NULL, NULL, '+14182550271', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'vquirion@blancnoirimmobilier.com', 'Vincent', 'Quirion', 'ed63b94b99c9f7881eb5f67a611f14f0', NULL, '2015-05-11 05:33:53', '0000-00-00 00:00:00', '2014-11-28 01:16:34', '2014-11-28 01:16:34', NULL, 2, 1, 'FR', '(581) 307-4197', '(418) 930-1441', 0, '', 'photo-vincent-quirion.jpg', 0, '15 rue Lessard', 'www.blancnoirimmobilier.com', 'G2B2V5', 3, 1, 0, NULL, NULL, '+15813074197', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'sguillemette@nouvelledemeure.com', 'Sophie', 'Guillemette', '664b9db4afbe7dc707467740258e4b58', NULL, '2015-04-13 05:49:35', '0000-00-00 00:00:00', '2014-11-28 01:26:39', '2014-11-28 01:26:39', NULL, 2, 1, 'FR', '(418) 780-1414', '(581) 995-6790', 0, '', 'photo-sophie-guillemette.jpg', 0, '60 CÃ´te de Courville', 'www.nouvelledemeure.com', 'G1C2W2', 1, 1, 0, NULL, NULL, '+15819956790', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'gcote@nouvelledemeure.com', 'GaÃ©tan', 'CÃ´tÃ©', 'e88ff893f67c8252f8cdbb3d940f46d2', NULL, '2015-12-15 19:26:06', '0000-00-00 00:00:00', '2014-11-28 01:47:21', '2014-11-28 01:47:21', NULL, 2, 1, 'FR', '(418) 802-5354', '(418) 802-5354', 0, '', 'photo-gaetan-cote.jpg', 0, '670 Rue Bouvier local 180', 'www.nouvelledemeure.com', 'G2J1A7', 1, 1, 0, NULL, NULL, '+14188025354', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 'jpdeschenes@nouvelledemeure.com', 'Jean-Philippe', 'DeschÃªnes', 'c201edc3407e6d51698811f16b9fdbb2', NULL, '2015-06-15 21:38:48', '0000-00-00 00:00:00', '2014-11-28 02:03:58', '2014-11-28 02:03:58', NULL, 2, 1, 'FR', '(418) 580-6732', '(418) 580-6732', 0, '', 'photo-jean-philippe-deschenes.jpg', 0, '670-180 Bouvier QuÃ©bec', 'www.nouvelledemeure.com', 'G2J1A7', 1, 1, 0, NULL, NULL, '+14185806732', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 'cdumais@blancnoirimmobilier.com', 'Christian', 'Dumais', 'a3c69abde58811e8fbbdb7f1817dc3e0', NULL, '2016-02-01 21:26:52', '0000-00-00 00:00:00', '2014-11-28 02:17:26', '2014-11-28 02:17:26', NULL, 2, 1, 'FR', '(418) 805-3634', '(418) 805-3634', 1, '', 'photo-christian-dumais.jpg', 0, '252 rue Christophe-Colomb E. QuÃ©bec', 'www.blancnoirimmobilier.com', 'G1K3T', 3, 1, 0, NULL, NULL, '+14188053634', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'dbond@viacapitale.com', 'Dave', 'Bond', '6d81d8c01f6c84fa6bc3da92365829c5', NULL, '2015-03-20 07:49:10', '0000-00-00 00:00:00', '2014-11-28 02:20:27', '2014-11-28 02:20:27', NULL, 2, 1, 'FR', '(418) 929-3041', '(418) 929-3041', 0, '', 'photo-dave-bond.jpg', 0, '1425 Castel', 'www.davebond.ca', 'G3K2E6', 2, 1, 0, NULL, NULL, '+14189293041', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 'fveilleux@viacapitale.com', 'FrÃ©dÃ©ric', 'Veilleux', 'f9cdc6bc4d8622b7a57b999f9f13cdb6', NULL, '2015-01-14 11:05:18', '0000-00-00 00:00:00', '2014-11-28 02:28:13', '2014-11-28 02:28:13', NULL, 1, 1, 'FR', '(418) 627-3333', '(418) 264-2181', 0, '', 'photo-frederic-veilleux.jpg', 0, '755 carrÃ© dâ€™Anjou', 'www.viacapitaleselect.com', 'G1X2X6', 2, 1, 0, NULL, NULL, '+14182642181', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'ygirard@viacapitale.com', 'Yanick', 'Girard', '92f1b286a076d1f127af490c4819685a', NULL, '2015-04-16 01:32:37', '0000-00-00 00:00:00', '2014-11-28 02:30:22', '2014-11-28 02:30:22', NULL, 2, 1, 'FR', '(418) 929-7162', '(418) 929-7162', 0, '', 'photo-yanick-girard.jpg', 0, '8590 trudelle', 'www.viacapitaleselect.com', 'G1G5C4', 2, 1, 0, NULL, NULL, '+14189297162', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'info@quebecproprio.com', 'Jesse M.', 'Roberge', 'ffab8dfcd6642eaf397440766ea050e8', NULL, '2014-12-05 22:02:29', '0000-00-00 00:00:00', '2014-11-28 02:32:48', '2014-11-28 02:32:48', NULL, 2, 1, 'FR', '(418) 953-5433', '(418) 953-5433', 0, '', 'photo-jesse-roberge.jpg', 0, '16, Chemin Des Quatre-Vents', 'www.quebecproprio.com', 'G3B0A4', 2, 1, 0, NULL, NULL, '+14189535433', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 'laurie@boback.net', 'Laurie', 'Boback', '4aa34fb888d2c15fce4065697ed695fe', NULL, '2015-01-14 06:33:46', '0000-00-00 00:00:00', '2014-11-28 02:44:13', '2014-11-28 02:44:13', NULL, 1, 1, 'FR', '(418) 956-6034', '(418) 956-6034', 0, '', 'photo-laurie-boback.jpg', 0, '231 Rue Plante', 'www.viacapitalvendu.com', 'G7A1L3', 2, 1, 0, NULL, NULL, '+14189566034', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 'pbimmobilier@gmail.com', 'Patrick', 'BÃ©langer', '501a60a2b28ba8e6a95ce30c11877fda', NULL, '2015-01-14 11:05:18', '0000-00-00 00:00:00', '2014-11-29 00:55:42', '2014-11-29 00:55:42', NULL, 2, 1, 'FR', '(418) 627-3333', '(418) 655-0812', 0, '', 'photo-patrick-belanger.jpg', 0, '6300 de lâ€™Aster, suite 102', 'www.patrickbelanger.com', 'G2C0A3', 2, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 'elabrecque@viacapitale.com', 'Ã‰laine', 'Labrecque', 'e6f3681b52a3ec571516d01ca3533ea7', NULL, '2016-01-12 21:30:07', '0000-00-00 00:00:00', '2014-11-29 00:58:37', '2014-11-29 00:58:37', NULL, 2, 1, 'FR', '(418) 558-4313', '(418) 558-4313', 1, '', 'photo-elaine-labrecque.jpg', 0, '5881 avenue Royale cp. 135', 'www.viacapitalevendu.com', 'G0A1h0', 2, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 'jocelyne.couture@viacapitale.com', 'Jocelyne', 'Couture', '2c336467a45cb7b3ae06fb6e0c749865', NULL, '2015-01-26 02:43:32', '0000-00-00 00:00:00', '2014-11-29 04:13:34', '2014-11-29 04:13:34', NULL, 1, 1, 'FR', '(418) 454-3295', '(418) 454-3295', 1, '', 'photo-jocelyne-couture.jpg', 0, '22 Rue GuÃ©rette', 'www.viacapitalevendu.com', 'G6V5N1', 2, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 'justine.thorel@td.com', 'Justine', 'Thorel', 'e0f51394562b5b7bc838f6e55446213e', NULL, '2016-01-28 19:30:23', '0000-00-00 00:00:00', '2014-12-01 01:02:50', '2014-12-01 01:02:50', NULL, 2, 1, 'FR', '', '(581) 998-3666', 1, '', 'photo-justine-thorel.jpg', 0, ' ', 'www.tdcanadatrust.com', ' ', 6, 2, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 'carl.langlois@rbc.com', 'Carl', 'Langlois', '82ed2828078270b8ee783ea6ea414e2b', NULL, '2015-12-04 21:43:45', '0000-00-00 00:00:00', '2014-12-01 02:47:34', '2014-12-01 02:47:34', NULL, 2, 1, 'FR', '(418) 998-8510', '(418) 998-8510', 0, '', 'photo-carl-langlois.jpg', 0, '1875 rue Notre-Dame', 'www.hypotheque.rbc.com/carl.langlois', 'G2E4K1', 5, 2, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 'mvalois@nouvelledemeure.com', 'Mario', 'Valois', 'f1d8a85b163aa0f8aa61aae16f953fc6', NULL, '2014-12-05 23:33:54', '0000-00-00 00:00:00', '2014-12-05 20:27:32', '2014-12-05 20:27:32', NULL, 2, 1, 'FR', '(418) 780-1414', '(418) 956-6773', 0, '', 'photo-mario-valois.jpg', 0, '670, rue Bouvier, local 180', 'www.nouvelledemeure.com', 'G2J1A7', 1, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 'patrice.francoeur@rbc.com', 'Patrice', 'Francoeur', '$2y$10$QPUjz5PLkNpRSmw.PdLSzu3ZE76WW9FlMwz8wGRxGmPvjqrf92h7C', 'VRk5EiYvPaHjWfTFcxFM8CVroeZ1AkWwcYgFsbI0E4lUOfFFSPAOuQuWavvT', '2015-01-24 20:15:14', '0000-00-00 00:00:00', '2014-12-05 20:35:21', '2014-12-05 20:35:21', NULL, 2, 1, 'FR', '(581) 999-0631', '(581) 999-0631', 0, '', 'photo-patrice-francoeur.jpg', 0, ' ', 'www.rbcbanqueroyale.com', ' ', 5, 2, 0, NULL, NULL, NULL, 1, '2016-02-19 22:32:52', '0000-00-00 00:00:00'),
(481, 'sophie.vezina@td.com', 'Sophie', 'VÃ©zina', '936457c00b8d63115731f3dd231530c3', NULL, '2016-01-28 19:30:50', '0000-00-00 00:00:00', '2014-12-06 03:00:02', '2014-12-06 03:00:02', NULL, 2, 1, 'FR', '', '(418) 997-9520', 1, '', 'photo-sophie-vezina.jpg', 0, ' ', 'www.tdcanadatrust.com', ' ', 6, 2, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 'audrey.roberge@td.com', 'Audrey', 'Roberge', '67ea7eaca39d395d6ec5d21cc160b083', NULL, '2016-01-28 19:29:56', '0000-00-00 00:00:00', '2014-12-06 10:41:29', '2014-12-06 10:41:29', NULL, 2, 1, 'FR', '', '(418) 952-7134', 1, '', 'photo-audrey-roberge.jpg', 0, ' ', 'www.tdcanadatrust.com', ' ', 6, 2, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 'yves.jobin@rbc.com', 'Yves', 'Jobin', 'd1cb84901be11722a29d82af4b7fd550', NULL, '2015-03-27 20:50:44', '0000-00-00 00:00:00', '2014-12-09 00:13:43', '2014-12-09 00:13:43', NULL, 2, 1, 'FR', '(418) 569-8580', '(418) 563-8580', 0, '', 'photo-yves-jobin-lynda-devarennes.jpg', 0, ' ', 'www.rbcbanqueroyale.com', ' ', 5, 2, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 'lynda.devarennes@rbc.com', 'Lynda', 'Devarennes', '3cf3a3b3512942bcc5d28d992d21c441', NULL, '2015-03-25 00:59:22', '0000-00-00 00:00:00', '2014-12-09 00:14:57', '2014-12-09 00:14:57', NULL, 1, 1, 'FR', '(418) 805-6955', '(418) 805-6955', 0, '', 'photo-yves-jobin-lynda-devarennes.jpg', 0, ' ', 'www.rbcbanqueroyale.com', ' ', 5, 2, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 'rlebel@nouvelledemeure.com', 'RenÃ© Lebel et', 'Sylvie Byrne', '0983d38ba16019499ae576a8ef17a446', NULL, '2015-10-17 02:26:00', '0000-00-00 00:00:00', '2014-12-10 19:52:52', '2014-12-10 19:52:52', NULL, 2, 1, 'FR', '(418) 572-4447', '(418) 572-4447', 0, '', 'photo-rene-lebel-sylvie-byrne.jpg', 0, '670, rue Bouvier, local 180 QuÃ©bec (QC)', 'www.nouvelledemeure.com', 'G2J1A7', 1, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 'gabriel.perron@td.com', 'Gabriel', 'Perron', '5a690d842935c51f26f473e025c1b97a', NULL, '2015-02-11 00:52:47', '0000-00-00 00:00:00', '2014-12-23 04:46:55', '2014-12-23 04:46:55', NULL, 2, 1, 'FR', '', '(418) 561-7882', 0, '', 'photo-gabriel-perron.jpg', 0, ' ', 'www.tdcanadatrust.com', ' ', 6, 2, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 'mleclerc@nouvelledemeure.com', 'Leclerc', 'Manon', '3d3b38dd2554663c087e196907201380', NULL, '2016-01-12 21:42:36', '0000-00-00 00:00:00', '2015-01-17 22:05:07', '2015-01-17 22:05:07', NULL, 2, 1, 'FR', '(418) 780-1414', '(418) 998-8736', 0, '', 'photo-manon-leclerc.jpg', 0, '670, rue Bouvier, local 180', 'www.nouvelledemeure.com', 'G2J 1A7', 1, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 'papelchat@blancnoirimmobilier.com', 'Pier-Alexandre', 'Pelchat', '46a1da4744bdbe8905ad7c76e07368d1', NULL, '2015-01-26 18:46:32', '0000-00-00 00:00:00', '2015-01-24 20:58:48', '2015-01-24 20:58:48', NULL, 2, 1, 'FR', '(418) 929-4474', '(418) 951-7437', 0, '', 'photo-pier-alexandre-pelchat.jpg', 0, '15 rue Lessard', 'www.blancnoirimmobilier.com', 'G2B2V5', 3, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 'pierretalbot@me.com', 'Pierre', 'Talbot', '94897550e388b99d2162727ab77a9c2e', NULL, '2015-01-31 02:21:47', '0000-00-00 00:00:00', '2015-01-31 02:21:47', '2015-01-31 02:21:47', NULL, 2, 1, 'FR', '(418) 651-6521', '(418) 261-1323', 0, '', 'photo-pierre-talbot.jpg', 0, '780 avenue de Brabant, bureau 101', 'www.expertcourtier.com', 'G1X 3V9', 8, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 'markdore@expertcourtier.com', 'Mark', 'DorÃ©', 'ef49a1ca59c00401a25d9b59c7569beb', NULL, '2015-01-31 21:13:48', '0000-00-00 00:00:00', '2015-01-31 02:28:22', '2015-01-31 02:28:22', NULL, 2, 1, 'FR', '(418) 651-6521', '(418) 654-5573', 0, '', 'photo-mark-dore.jpg', 0, '780 avenue de Brabant, bureau 101', 'www.expertcourtier.com', 'G1X 3V9', 8, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 'davidmontgrain@icloud.com', 'David', 'Montgrain', 'a6ef621b100748146a7217405a80d37a', NULL, '2015-03-15 15:51:26', '0000-00-00 00:00:00', '2015-02-04 23:36:32', '2015-02-04 23:36:32', NULL, 2, 1, 'FR', '(418) 651-6521', '(418) 265-5898', 0, '', 'photo-david-montgrain.jpg', 0, '780 avenue de Brabant, bureau 101', 'www.expertcourtier.com', 'G1X 3V9', 8, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 'srousseau@nouvelledemeure.com', 'StÃ©phanie', 'Rousseau', '283c1a9618506315688926c647af1dbc', NULL, '2015-02-18 01:40:09', '0000-00-00 00:00:00', '2015-02-17 23:46:24', '2015-02-17 23:46:24', NULL, 2, 1, 'FR', '(418) 780-1414', '(418) 456-1932', 0, '', 'photo-stephanie-rousseau.jpg', 0, '670, rue Bouvier, local 180', 'www.nouvelledemeure.com', 'G2J 1A7', 1, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 'mariejoaneperron@outlook.com', 'Marie-Joane', 'Perron', '61e8afc2040707db2f3106c7f31e7eab', NULL, '2016-01-09 02:23:33', '0000-00-00 00:00:00', '2016-01-06 22:32:23', '2016-01-06 22:32:23', NULL, 2, 1, 'FR', '(418) 627-3333', '(418) 254-1035', 0, '', 'photo-marie-joane-perron.jpg', 0, '4715, des Replats , bur. 150', 'www.viacapitaleselect.com', 'G2J 1B8', 2, 1, 0, NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 'ftgirard123@hotmail.com', 'Francis', 'Tremblay-Girard', '$2y$10$0sbNL/fFmntqJdXQ3RbQ7.2Cn/2bBPXLywyyividLFEjYJ3qTi28q', NULL, '2016-02-12 21:57:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, 3, 'en', '4185573902', NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-13 02:57:16', '2016-02-13 02:57:16'),
(783, 'ftgirard@gmail.com', 'Tremblay-Girard', 'françis', '$2y$10$sj2iS9R0VML589luT4JyWe8hEFXnzGHrgfZ7r9zCk.NUKKlwJPxEC', 'bQLN2Ru1nCaKs7tt0xD4afIJDCc0WqGBVUtNGP18vYMmFQ4hYESUQhYXsLUo', '2016-02-19 17:10:22', '2016-02-19 17:10:22', '2016-02-19 17:10:22', NULL, NULL, 2, 3, 'FR', '(418) 557-3902', '', NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, '', NULL, 1, '2016-02-19 22:17:34', '0000-00-00 00:00:00'),
(784, 'kundan@mailinator.com', 'kundan', 'roy', '$2y$10$fRM2A2plF5J1c3WcqzY7pe7LOpPxHV7dClmtGwGFJ2K423DmJBNxi', 'oKiPOFFiaPFm1whgBzlIVdPDPrHjoIaYDgPJGCaoZ4NL54x8Uo9cVs9KB7MV', '2016-02-24 10:18:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', NULL, NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:04:39', '2016-02-24 04:48:50'),
(785, 'kroy@mailinator.com', 'kundan', 'roy', '$2y$10$Af3kzxo5YCKfIGV2cA40EONnf4pr7IvhG/4rXOFKO1B6Oh9MVzkwa', NULL, '2016-02-24 10:35:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', '888888888', NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:05:44', '2016-02-24 05:05:44'),
(786, 'kroy2@mailinator.com', 'TEST', 'admin2', '$2y$10$GsjkGg2gzRwRKZHZREej4ej76c9j7T.bKz2dwXFNijXdZylR5fj76', NULL, '2016-02-24 10:58:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', '888888888', NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:28:34', '2016-02-24 05:28:34'),
(787, 'kroy11@mailinator.com', 'fdgdfgfdg', 'fdsfd', '$2y$10$6rQ/lz91w0JSpi11.0rAXOKuZ4LXK1bgVcm14d62XvsSdq4AdH.DG', NULL, '2016-02-24 11:03:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', '1111111111', NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:33:13', '2016-02-24 05:33:13'),
(788, 'kroy12@mailinator.com', 'fdsfdsf', 'fdsfd', '$2y$10$Xj.jbc.LBYjtT.GVhEUC7.zanqmZf1CaAPSNJS6KOsuf3r97p3Voq', NULL, '2016-02-24 11:04:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', '232423', NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:34:52', '2016-02-24 05:34:52'),
(789, 'ismael@mailinatoor.com', 'ismael', 'dd', '$2y$10$jMBxCCe6oWUaiEvZGTxeOO9UYaVk4dsKgRJHNrC1ViUZHwqZs40jG', NULL, '2016-02-24 11:06:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', NULL, NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:36:43', '2016-02-24 05:36:43'),
(790, 'email@mailinator.com', 'fname', 'lname', '$2y$10$r.1oHKlxG6g2QrxYtw5ELOamLbv0GLFWn.gKLHrxEg9hW7O7SwblK', '1w7PLYih7oiPDCFWRwqEcwdy5ByCWFCFHaUz6GqQNJhyNnkdC1mRruGvOtVy', '2016-02-24 11:18:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', NULL, NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:48:54', '2016-02-24 05:48:49'),
(791, 'email2@mailinator.com', 'fname', 'lname', '$2y$10$254SmwcxzSCZ/cSLk5dBrOLo05YeN6driFpHMopspx.aAirl3sOqG', '0IKnDbSADsJGHUk1XRfNaKEB7HpQuaHvN6sySapNVIMC8kcyPnWW0KCDrsk8', '2016-02-24 11:20:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', NULL, NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:51:14', '2016-02-24 05:50:10'),
(792, 'test@developer.com', 'fdgdfgfdg', 'fdsfd', '$2y$10$9txOSXB1Oq16qiWNyBzeIeeXqXc0XceQF1P8zIaYwYTedqQFBTg9W', 'EuQzN9QzgGF7LFOGDB4S0dsubKlprxL5ekCCs88OrsE3MAMSqgvuVykCT191', '2016-02-24 11:21:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 1, 3, 'en', '123123', NULL, NULL, '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '2016-02-24 05:55:59', '2016-02-24 05:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_description` text COLLATE utf8_unicode_ci NOT NULL,
  `video_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube_video_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `video_title`, `video_description`, `video_tags`, `video_path`, `youtube_video_id`, `status`) VALUES
(1, 'infowayindia.in', 'infowayindia.in', 'infowayindia.in', 'videos/ytniymtdniaaana-k.mp4', '', 1),
(2, 'infowayindia.in', 'infowayindia.in/youtube', 'infowayindia.in', 'videos/nainaaadmtyinty-k.mp4', '', 1),
(3, 'infowayindia.in', 'infowayindia.in', 'infowayindia.in', 'videos/tdamniyitaaanny-k.mp4', '', 1),
(4, 'kundanroy', 'kundanroy', 'kundanroy', 'videos/aidmyynaattinan-k.mp4', '', 1),
(5, 'infowayindia2.in', 'infowayindia2.in', 'infowayindia2.in', 'videos/tatynaimadnanyi-k.mp4', '', 1),
(6, 'kk', 'kk', 'kk', 'videos/amnttyiaananidy-k.mp4', '', 1),
(7, 'testvideobyme', 'testvideobyme', 'testvideobyme', 'videos/tnianaiydnmyata-testvideobyme.mp4', '', 1),
(8, 'testvideobyme', 'testvideobyme', 'testvideobyme', 'videos/anydiyiaanmatnt-testvideobyme.mp4', '', 1),
(9, 'infowayindia.in', 'test2', 'test2', 'videos/imydainntantaya-testvideobyme.mp4', '', 1),
(10, 'adsdd', 'fdsf', 'fsdfsd', 'videos/yaanatnyiainmdt-testvideobyme.mp4', '', 1),
(11, 'fgdf', 'sdfsdf', 'sdfsdfsdf', 'videos/adtiaymyntinnaa-testvideobyme.mp4', '', 1),
(12, 'fdgdfg', 'gdfgfd', 'dfgdfdfgd', 'videos/naimyantytdanai-testvideobyme.mp4', '', 1),
(13, 'deneme', 'deneme', '', 'videos/yymtanninadatia-14984870 (1).mp4', '', 1),
(14, 'fsdfds', 'fdsfsd', 'fdsfdsfsd', 'videos/anaydamitnatiny-videoplayback.mp4', '', 1),
(15, 'ertert', 'ertertret', 'erterter', 'videos/tiitayanynamnad-testvideobyme.mp4', '', 1),
(16, 'infoway', 'infoway', 'infoway', 'videos/mydtannaiintaya-testvideobyme.mp4', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_ad`
--
ALTER TABLE `t_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_banner`
--
ALTER TABLE `t_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_banner_group`
--
ALTER TABLE `t_banner_group`
  ADD PRIMARY KEY (`GroupID`);

--
-- Indexes for table `t_building`
--
ALTER TABLE `t_building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_category`
--
ALTER TABLE `t_building_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_city`
--
ALTER TABLE `t_building_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_exclusion`
--
ALTER TABLE `t_building_exclusion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_favorite`
--
ALTER TABLE `t_building_favorite`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_building_image`
--
ALTER TABLE `t_building_image`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_building_inclusion`
--
ALTER TABLE `t_building_inclusion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_inclusion_exclusion`
--
ALTER TABLE `t_building_inclusion_exclusion`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `t_building_package`
--
ALTER TABLE `t_building_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_precision`
--
ALTER TABLE `t_building_precision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_region`
--
ALTER TABLE `t_building_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_rent`
--
ALTER TABLE `t_building_rent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_room`
--
ALTER TABLE `t_building_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_building_type`
--
ALTER TABLE `t_building_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_city`
--
ALTER TABLE `t_city`
  ADD PRIMARY KEY (`CityID`);

--
-- Indexes for table `t_code`
--
ALTER TABLE `t_code`
  ADD UNIQUE KEY `Code` (`Code`);

--
-- Indexes for table `t_company`
--
ALTER TABLE `t_company`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_coutier_property`
--
ALTER TABLE `t_coutier_property`
  ADD PRIMARY KEY (`PropertyID`);

--
-- Indexes for table `t_error_log`
--
ALTER TABLE `t_error_log`
  ADD PRIMARY KEY (`ErrorID`);

--
-- Indexes for table `t_group`
--
ALTER TABLE `t_group`
  ADD PRIMARY KEY (`GroupID`),
  ADD UNIQUE KEY `GroupID` (`GroupID`);

--
-- Indexes for table `t_home_type`
--
ALTER TABLE `t_home_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_package_gallery`
--
ALTER TABLE `t_package_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_payments`
--
ALTER TABLE `t_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_region`
--
ALTER TABLE `t_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_review`
--
ALTER TABLE `t_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_screen`
--
ALTER TABLE `t_screen`
  ADD PRIMARY KEY (`ScreenID`);

--
-- Indexes for table `t_system_alert_building`
--
ALTER TABLE `t_system_alert_building`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_system_alert_search`
--
ALTER TABLE `t_system_alert_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_system_alert_search_category`
--
ALTER TABLE `t_system_alert_search_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_system_alert_search_city`
--
ALTER TABLE `t_system_alert_search_city`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_system_alert_search_type`
--
ALTER TABLE `t_system_alert_search_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_transaction`
--
ALTER TABLE `t_transaction`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `t_transaction_banner_order`
--
ALTER TABLE `t_transaction_banner_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_ad`
--
ALTER TABLE `t_ad`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_banner`
--
ALTER TABLE `t_banner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `t_banner_group`
--
ALTER TABLE `t_banner_group`
  MODIFY `GroupID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_building`
--
ALTER TABLE `t_building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of the table t_building, Auto increment', AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `t_building_category`
--
ALTER TABLE `t_building_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `t_building_city`
--
ALTER TABLE `t_building_city`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800035;
--
-- AUTO_INCREMENT for table `t_building_exclusion`
--
ALTER TABLE `t_building_exclusion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_building_favorite`
--
ALTER TABLE `t_building_favorite`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `t_building_image`
--
ALTER TABLE `t_building_image`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Image ID', AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `t_building_inclusion`
--
ALTER TABLE `t_building_inclusion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `t_building_inclusion_exclusion`
--
ALTER TABLE `t_building_inclusion_exclusion`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `t_building_package`
--
ALTER TABLE `t_building_package`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Package ID', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_building_precision`
--
ALTER TABLE `t_building_precision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `t_building_region`
--
ALTER TABLE `t_building_region`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `t_building_rent`
--
ALTER TABLE `t_building_rent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_building_room`
--
ALTER TABLE `t_building_room`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `t_building_type`
--
ALTER TABLE `t_building_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `t_city`
--
ALTER TABLE `t_city`
  MODIFY `CityID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_company`
--
ALTER TABLE `t_company`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_coutier_property`
--
ALTER TABLE `t_coutier_property`
  MODIFY `PropertyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_error_log`
--
ALTER TABLE `t_error_log`
  MODIFY `ErrorID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;
--
-- AUTO_INCREMENT for table `t_group`
--
ALTER TABLE `t_group`
  MODIFY `GroupID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `t_home_type`
--
ALTER TABLE `t_home_type`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_package_gallery`
--
ALTER TABLE `t_package_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `t_payments`
--
ALTER TABLE `t_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `t_region`
--
ALTER TABLE `t_region`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `t_review`
--
ALTER TABLE `t_review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Review ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_screen`
--
ALTER TABLE `t_screen`
  MODIFY `ScreenID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `t_system_alert_building`
--
ALTER TABLE `t_system_alert_building`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'alert ID';
--
-- AUTO_INCREMENT for table `t_system_alert_search`
--
ALTER TABLE `t_system_alert_search`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Alert ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_system_alert_search_category`
--
ALTER TABLE `t_system_alert_search_category`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_system_alert_search_city`
--
ALTER TABLE `t_system_alert_search_city`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_system_alert_search_type`
--
ALTER TABLE `t_system_alert_search_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_transaction`
--
ALTER TABLE `t_transaction`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;
--
-- AUTO_INCREMENT for table `t_transaction_banner_order`
--
ALTER TABLE `t_transaction_banner_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1032;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=793;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
