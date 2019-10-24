DROP TABLE IF EXISTS `districtofficetelephonenumber`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `districtofficetelephonenumber` (
  `DistrictName` text,
  `DistrictOfficeTL` text
   PRIMARY KEY (`DistrictOfficeTL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
