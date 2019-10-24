DROP TABLE IF EXISTS `party`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `party` (
  `PartyName` text,
  `PartyTaxCode` text,
  `PartyLogo` text,
  `PLFirstName` text,
  `PLLastName` text,
  `PartyFoundingDate (dd-mm-yy)` text,
  `PartyPolicy` text
  PRIMARY KEY (`PartyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
