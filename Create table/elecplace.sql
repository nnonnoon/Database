DROP TABLE IF EXISTS `elecplace`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `elecplace` (
  `SubDisName` text,
  `ElecPlaceName` text
  PRIMARY KEY (`SubDisName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
