DROP TABLE IF EXISTS `candidate`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate` (
  `NameTitle` text,
  `CDFirstName` text,
  `CDLastName` text,
  `EduBackGround` text,
  `Career` text,
  `PartyName` text
  PRIMARY KEY (`CDFirstName`,`CDLastName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;