DROP TABLE IF EXISTS `member_of_parliament`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `member_of_parliament` (
  `ElecNo` int(11) DEFAULT NULL,
  `MPNo` int(11) DEFAULT NULL,
  `PartyName` text,
  `NameTitle` text,
  `MPFirstName` text,
  `MPLastName` text,
  `PartyStatus` text
  PRIMARY KEY (`ElecNo`,`MPNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
