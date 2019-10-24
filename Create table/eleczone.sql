DROP TABLE IF EXISTS `eleczone`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `eleczone` (
  `ElecNo` int(11) DEFAULT NULL,
  `PartyName` text,
  `Score` int(11) DEFAULT NULL
   PRIMARY KEY (`ElecNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
