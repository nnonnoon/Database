DROP TABLE IF EXISTS `list_of_prime_minister`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `list_of_prime_minister` (
  `PMNo` int(11) DEFAULT NULL,
  `NameTitle` text,
  `PMFirstName` text,
  `PMLastName` text,
  `NoPeriod` int(11) DEFAULT NULL
  PRIMARY KEY (`PMNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
