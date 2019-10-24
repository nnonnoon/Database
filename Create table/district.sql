DROP TABLE IF EXISTS `district`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `district` (
  `DistrictName` text,
  `DistrictOfficeName` text,
  `DistrictOfficeAdd` text,
  `ZipCode` int(11) DEFAULT NULL
  PRIMARY KEY (`DistrictName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;