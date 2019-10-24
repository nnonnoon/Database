DROP TABLE IF EXISTS `subdistrict`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `subdistrict` (
  `ElecNo` int(11) DEFAULT NULL,
  `SubDisName` text,
  `DistrictName` text
  PRIMARY KEY (`ElecNo`,`SubDisName`,`DistrictName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
