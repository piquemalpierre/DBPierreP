SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `db2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `db2` ;

-- -----------------------------------------------------
-- Table `db2`.`SAISON`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`SAISON` (
  `idSAISON` INT NOT NULL ,
  `Saison` VARCHAR(45) NULL ,
  PRIMARY KEY (`idSAISON`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`WE/SEM`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`WE/SEM` (
  `idWE/SEM` INT NOT NULL ,
  `WE/SEM` VARCHAR(45) NULL ,
  PRIMARY KEY (`idWE/SEM`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`Période`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`Période` (
  `idPériode` INT NOT NULL ,
  `Avant Noël 1` INT NULL ,
  `Avant Noël 2` INT NULL ,
  `Avant Noël 3` INT NULL ,
  `Hors Vacances Janvier 1` INT NULL ,
  `Hors Vacances Janvier 2` INT NULL ,
  `Hors Vacances Janvier 3` INT NULL ,
  `Hors Vacances Janvier 4` INT NULL ,
  `Vacances Février 1` INT NULL ,
  `Vacances Février 2` INT NULL ,
  `Vacances Février 3` INT NULL ,
  `Vacances Février 4` INT NULL ,
  `Hors Vacances mars 1` INT NULL ,
  `Hors Vacances mars 1` INT NULL ,
  `Hors Vacances mars 3` INT NULL ,
  `Hors Vacances Mars 4` INT NULL ,
  `Fin de Saison 1` INT NULL ,
  `Fin de Saison 2` INT NULL ,
  `Fin de Saison 3` INT NULL ,
  `Fin de Saison 4` INT NULL ,
  `SAISON_idSAISON` INT NOT NULL ,
  `WE/SEM_idWE/SEM` INT NOT NULL ,
  PRIMARY KEY (`idPériode`) ,
  INDEX `fk_Période_SAISON1_idx` (`SAISON_idSAISON` ASC) ,
  INDEX `fk_Période_WE/SEM1_idx` (`WE/SEM_idWE/SEM` ASC) ,
  CONSTRAINT `fk_Période_SAISON1`
    FOREIGN KEY (`SAISON_idSAISON` )
    REFERENCES `db2`.`SAISON` (`idSAISON` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Période_WE/SEM1`
    FOREIGN KEY (`WE/SEM_idWE/SEM` )
    REFERENCES `db2`.`WE/SEM` (`idWE/SEM` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`DAM`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`DAM` (
  `idDAM` INT NOT NULL ,
  `` VARCHAR(45) NULL ,
  `Période_idPériode` INT NOT NULL ,
  PRIMARY KEY (`idDAM`) ,
  INDEX `fk_DAM_Période1_idx` (`Période_idPériode` ASC) ,
  CONSTRAINT `fk_DAM_Période1`
    FOREIGN KEY (`Période_idPériode` )
    REFERENCES `db2`.`Période` (`idPériode` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`RM`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`RM` (
  `idRM` INT NOT NULL ,
  `RM` VARCHAR(45) NULL ,
  `Période_idPériode` INT NOT NULL ,
  PRIMARY KEY (`idRM`) ,
  INDEX `fk_RM_Période1_idx` (`Période_idPériode` ASC) ,
  CONSTRAINT `fk_RM_Période1`
    FOREIGN KEY (`Période_idPériode` )
    REFERENCES `db2`.`Période` (`idPériode` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`PIST`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`PIST` (
  `idPIST` INT NOT NULL ,
  `RM` VARCHAR(45) NULL ,
  `Période_idPériode` INT NOT NULL ,
  PRIMARY KEY (`idPIST`) ,
  INDEX `fk_PIST_Période1_idx` (`Période_idPériode` ASC) ,
  CONSTRAINT `fk_PIST_Période1`
    FOREIGN KEY (`Période_idPériode` )
    REFERENCES `db2`.`Période` (`idPériode` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`BILL`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`BILL` (
  `idBILL` INT NOT NULL ,
  `BILL` VARCHAR(45) NULL ,
  `Période_idPériode` INT NOT NULL ,
  PRIMARY KEY (`idBILL`) ,
  INDEX `fk_BILL_Période1_idx` (`Période_idPériode` ASC) ,
  CONSTRAINT `fk_BILL_Période1`
    FOREIGN KEY (`Période_idPériode` )
    REFERENCES `db2`.`Période` (`idPériode` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`ACC`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`ACC` (
  `idACC` INT NOT NULL ,
  `ACC` VARCHAR(45) NULL ,
  `Période_idPériode` INT NOT NULL ,
  PRIMARY KEY (`idACC`) ,
  INDEX `fk_ACC_Période1_idx` (`Période_idPériode` ASC) ,
  CONSTRAINT `fk_ACC_Période1`
    FOREIGN KEY (`Période_idPériode` )
    REFERENCES `db2`.`Période` (`idPériode` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`BDD`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`BDD` (
  `idBDD` INT NOT NULL ,
  `BDD` VARCHAR(45) NULL ,
  `Période_idPériode` INT NOT NULL ,
  PRIMARY KEY (`idBDD`) ,
  INDEX `fk_BDD_Période1_idx` (`Période_idPériode` ASC) ,
  CONSTRAINT `fk_BDD_Période1`
    FOREIGN KEY (`Période_idPériode` )
    REFERENCES `db2`.`Période` (`idPériode` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db2`.`Loginaccount`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`Loginaccount` (
  `idloginaccount` INT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(255) NULL DEFAULT NULL ,
  `password` VARCHAR(255) NULL DEFAULT NULL ,
  `ts` TIMESTAMP NULL ,
  `project_idprojectn` INT NULL ,
  `RM_idRM` INT NOT NULL ,
  `Loginaccount_idloginaccount` INT NOT NULL ,
  `PIST_idPIST` INT NOT NULL ,
  `BILL_idBILL` INT NOT NULL ,
  `ACC_idACC` INT NOT NULL ,
  `BDD_idBDD` INT NOT NULL ,
  PRIMARY KEY (`idloginaccount`) ,
  INDEX `fk_loginaccount_project_idx` (`project_idprojectn` ASC) ,
  INDEX `fk_Loginaccount_RM1_idx` (`RM_idRM` ASC) ,
  INDEX `fk_Loginaccount_Loginaccount1_idx` (`Loginaccount_idloginaccount` ASC) ,
  INDEX `fk_Loginaccount_PIST1_idx` (`PIST_idPIST` ASC) ,
  INDEX `fk_Loginaccount_BILL1_idx` (`BILL_idBILL` ASC) ,
  INDEX `fk_Loginaccount_ACC1_idx` (`ACC_idACC` ASC) ,
  INDEX `fk_Loginaccount_BDD1_idx` (`BDD_idBDD` ASC) ,
  CONSTRAINT `fk_loginaccount_project`
    FOREIGN KEY (`project_idprojectn` )
    REFERENCES `db2`.`DAM` (`idDAM` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Loginaccount_RM1`
    FOREIGN KEY (`RM_idRM` )
    REFERENCES `db2`.`RM` (`idRM` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Loginaccount_Loginaccount1`
    FOREIGN KEY (`Loginaccount_idloginaccount` )
    REFERENCES `db2`.`Loginaccount` (`idloginaccount` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Loginaccount_PIST1`
    FOREIGN KEY (`PIST_idPIST` )
    REFERENCES `db2`.`PIST` (`idPIST` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Loginaccount_BILL1`
    FOREIGN KEY (`BILL_idBILL` )
    REFERENCES `db2`.`BILL` (`idBILL` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Loginaccount_ACC1`
    FOREIGN KEY (`ACC_idACC` )
    REFERENCES `db2`.`ACC` (`idACC` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Loginaccount_BDD1`
    FOREIGN KEY (`BDD_idBDD` )
    REFERENCES `db2`.`BDD` (`idBDD` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `db2`.`table1`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db2`.`table1` (
)
ENGINE = InnoDB;

USE `db2` ;

-- -----------------------------------------------------
-- Placeholder table for view `db2`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db2`.`view1` (`id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `db2`.`view2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db2`.`view2` (`id` INT);

-- -----------------------------------------------------
--  routine1
-- -----------------------------------------------------

DELIMITER $$
USE `db2`$$
CREATE PROCEDURE `db2`.`routine1` ()
BEGIN

END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `db2`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db2`.`view1`;
USE `db2`;
;

-- -----------------------------------------------------
-- View `db2`.`view2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db2`.`view2`;
USE `db2`;
;

CREATE USER 'user1';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
