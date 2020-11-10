-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema GCA
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `GCA` ;

-- -----------------------------------------------------
-- Schema GCA
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `GCA` DEFAULT CHARACTER SET utf8 ;
USE `GCA` ;

-- -----------------------------------------------------
-- Table `GCA`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GCA`.`cliente` (
  `idcliente` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `contato` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`idcliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GCA`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GCA`.`marca` (
  `idmarca` INT(11) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GCA`.`aparelho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GCA`.`aparelho` (
  `idaparelho` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NOT NULL,
  `data_cadastro` DATETIME NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `marca_idmarca` INT(11) NOT NULL,
  `cliente_idcliente` INT(11) NOT NULL,
  PRIMARY KEY (`idaparelho`),
  INDEX `fk_aparelho_marca2_idx` (`marca_idmarca` ASC),
  INDEX `fk_aparelho_cliente1_idx` (`cliente_idcliente` ASC),
  CONSTRAINT `fk_aparelho_marca2`
    FOREIGN KEY (`marca_idmarca`)
    REFERENCES `GCA`.`marca` (`idmarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aparelho_cliente1`
    FOREIGN KEY (`cliente_idcliente`)
    REFERENCES `GCA`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GCA`.`modelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GCA`.`modelo` (
  `idmodelo` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `marca_idmarca` INT NOT NULL,
  PRIMARY KEY (`idmodelo`),
  INDEX `fk_modelo_marca1_idx` (`marca_idmarca` ASC),
  CONSTRAINT `fk_modelo_marca1`
    FOREIGN KEY (`marca_idmarca`)
    REFERENCES `GCA`.`marca` (`idmarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GCA`.`aparelho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GCA`.`aparelho` (
  `idaparelho` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NOT NULL,
  `data_cadastro` DATETIME NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `marca_idmarca` INT(11) NOT NULL,
  `cliente_idcliente` INT(11) NOT NULL,
  PRIMARY KEY (`idaparelho`),
  INDEX `fk_aparelho_marca2_idx` (`marca_idmarca` ASC),
  INDEX `fk_aparelho_cliente1_idx` (`cliente_idcliente` ASC),
  CONSTRAINT `fk_aparelho_marca2`
    FOREIGN KEY (`marca_idmarca`)
    REFERENCES `GCA`.`marca` (`idmarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aparelho_cliente1`
    FOREIGN KEY (`cliente_idcliente`)
    REFERENCES `GCA`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `GCA`.`marca`
-- -----------------------------------------------------
START TRANSACTION;
USE `GCA`;
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (1, 'SAMSUNG');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (2, 'MOTOROLA');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (3, 'NOKIA');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (4, 'LG');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (5, 'HUAWEI');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (6, 'SONY');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (7, 'XIAOMI');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (8, 'APPLE');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (9, 'ASUS');
INSERT INTO `GCA`.`marca` (`idmarca`, `nome`) VALUES (10, 'GOOGLE');

COMMIT;


-- -----------------------------------------------------
-- Data for table `GCA`.`modelo`
-- -----------------------------------------------------
START TRANSACTION;
USE `GCA`;
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J1 ACE 4G', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Z2', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy On 7', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy On 7 2016', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy On 8', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J5 Prime', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A8 2016', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy C9 Pro', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A3 2017', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A5 2017', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A7 2017', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy C7 Pro', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Tab S3 9.7', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy C5 Pro', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy XCover 4', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Z4', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy FE', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J7 Max', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J7 2017', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J5 2017', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J3 2017', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J7 Neo', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J5 Pro', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J7 Pro', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J7 Duo', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J4', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J7 2018', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J3 2018', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J4 Plus', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A7 2018', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A6s', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy W2018', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy W2019', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A8s', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M10', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M20', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M30', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A9 Pro', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Fold', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy S10 5G', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A20', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A40', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A20e', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A60', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M40', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy XCover 4s', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A10e', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A50s', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Tab S6', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Note 10 Plus 5G', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy S4 Active', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J2 Core', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Z Flip', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy S6 edge', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A3', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy J2 Prime', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Ativ S', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M32 Prime', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy F41', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A3 Core', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Tab A7', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy S20 FE 5G', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A42', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Z Fold 2', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy S20 FE', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M31s', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M01 Core', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M01s', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M01', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Z Flip 5G', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A Quantum', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Tab S6 Lite', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A51 5G', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Tab A 8.4', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A71 5G', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M51', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy A41', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M11', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy M21', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Tab A 8.0 2018', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy Tab A 10.5', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Samsung Galaxy S4 10.5', 1);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 3G', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 3Gs', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 4', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 4s', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 5', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 5C', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 5S', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 6', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 6 Plus', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 6s ', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 6s Plus', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone SE', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 7', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 7 Plus', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 8', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 8 Plus', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone X', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone XR', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone XS', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 11', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 11 Pro', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 11 Pro Max', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone SE 2020', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 12', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 12 Mini', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 12 Pro', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'iPhone 12 Pro Max', 8);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia Lumia 635', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia Lumia 730', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia Lumia 520', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia Lumia 730', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia 8 64GB', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia Lumia 930', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia Lumia 630', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia Lumia 830', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia 5', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia Lumia 530', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia 5.3', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia 2.3', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Nokia C2', 3);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Edge', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Edge+', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E 2020', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E6s 2020', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E7 Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G 5G Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G Fast', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G Power', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G Pro', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G Stylus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G8', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G8 Power', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G8 Lite', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G9', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G9 Play', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G9 Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One 5G', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Fusion', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Fusio+', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Vision Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Razr 2020 5G', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E6', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E6 Play', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E6 Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G7', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G7 Play', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G7 Plys', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G7 Power', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G8 Play', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G8 Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Z4', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Action', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Hyper', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Macro', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Vision', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Zoom', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Razr 2019', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E5', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E5 Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E5 Play', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E5 Play Go', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G6', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G6 Play', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G6 Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Z3', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Z3 Play', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola One Power', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola C', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola C Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E4', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola E4 Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G5', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G5 Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G5S', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola G5S Plus', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola X4', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Z2 Force', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Motorola Z2 Play', 2);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K31', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K415', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K42', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K515', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K52', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K61', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K71', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q31', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG 151', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q61', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q92 5G', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Stylo 6', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG V60 ThinQ 5G', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Velvet', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Velvet 5G', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG W10 Alpha', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Wing 5g', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G8 ThinQ', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G8 ThinQ triple camera', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G8s ThinQ', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G8X ThinQ', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K20 2019', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K30 2019', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K40', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K40S', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K50', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K50S', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q60', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q70', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q9', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Stylo 5', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Tribute Empire', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG V50 ThinQ 5G', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG V50S ThinQ 5G', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG W10', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG W30', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG W30 Pro', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Atisto 2', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Candy', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G7 Fit', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G7 One', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G7 ThinQ', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K11', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K11 Plus', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K30', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K8', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q Stylo 4', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q Stylus', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q7', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q8', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG V30 Thinq', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG V35 ThinQ', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG V40 ThinQ', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X4+', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Zone 4', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G6', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Harmony', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K8 2017', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q6', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Q8 2018', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG V30', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X power 2', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X venture', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G5', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG G5 SE', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K10', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K10 2017', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K20 Plus', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K3 2017', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K4 2017', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K5', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K7', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG K8 2017', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Stylo 2', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Stylus 2', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Stylus 2 Plus', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG Stylus 3', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG U', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG V20', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X cam', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X mach', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X max', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X power', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X screen', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X skin', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X style', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'LG X5', 4);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Enjoy 20 5G', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Enjoy 20 Plus 5G', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Enjoy 20 Pro', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Enjoy Z 5G', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 20e', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 30', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 30 Pro', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 30 Pro+', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 30 Youth', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 30i', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 30S', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 8A 2020', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 8A Prime', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 8S 2020', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 9A', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 9C', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 9S', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor 9X Lite', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor Play 4T', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor Play 4T Pro', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor Play 9A', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor Play4', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor Play4 Pro', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei View30', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei View30 Pro', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Honor X10 Max 5G', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Mate 30E Pro 5G', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Mate 40', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Mate 40 Pro', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Mate 40 Pro+', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Mate 40 Porsche Design', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Mate Xs', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei nova 7 5G', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei nova 7 Pro 5G', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei nova 7 SE', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei nova 7 SE 5G Youth', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei nova 71', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P smart 2020', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P smart 2021', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P Smart S', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P30 lite New Edition', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P30 Pro New Edition', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P40 ', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P40 Pro', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P40 Pro+', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P40 lite', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P40 lite 5G', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei P40 lite E', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Y5p', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Y6p', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Y6s 2019', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Y7a', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Y7p', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Y8p', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Y8s', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Huawei Y9a', 5);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia 1 II', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia 10 II', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia 5 II', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia L4', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia 1', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia 10', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia 10 Plus', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia 5', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia L3', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia L2', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XA2', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XA2 Plus', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XA2 Ultra', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZ2', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZ2 Compact', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZ2 Premium', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZ3', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia L1', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia R1 Plus', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XA1', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XA1 Plus', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XA1 Ultra', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZ Compact', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZ Premium', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZ1', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZ1 Compact', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Sony Xperia XZs', 6);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Black Shark 3', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Black Shark 3 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Black Shark 3S', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 10 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 10 Lite 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 10 Pro 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 10 Ultra', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 10 Youth 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 10T 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 10T Lite 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 10T Pro 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Note 10 Lite', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Poco C3', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Poco F2 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Poco M2', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Poco M2 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Poco X2', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Poco X3', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Poco X3 NFC', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 10X 4G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 10X 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 10X Pro 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 8A Dual', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 9', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 9 Prime', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 9A', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 9C', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 9i', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K30 5G Racing', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K30 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K30 Pro Zoom', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K30 Ultra', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K30i 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K30S', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 9 ', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 9 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 9 Pro Max', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 9 9s', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Black Shark 2', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Black Shark 2 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 9 ', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 9 Explorer', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 9 Lite', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 9 Pro 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 9 SE', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 9T', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 9T Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi A3', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi CC9', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi CC9 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi CC9e', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Mix 3 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Mix Alpha', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Note 10', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Note 10 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 7', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 7A', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 8', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 8A', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Go', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K20', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K20 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K20 Pro Premium', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K30', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi K30 5G', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 7 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 7S', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 8', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 8 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 8T', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Y3', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Black Shark', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Black Shark Helo', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 8 ', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 8 Explorer', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 8 Lite', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 8 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi 8 SE', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi A2', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi A2 Lite', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Max 3', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Mix 2s', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Mix 3', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Mi Play', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Pocophone F1', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 5', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 6', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 6 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi 6A', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 5', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 5 AI Dual Camera', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 5 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi Note 6 Pro', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Xiaomi Redmi S2', 7);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Rog Phone 3', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Rog Phone 3 Strix', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 7 Pro', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 7', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS ROG Phone II', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 6', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Live', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Max Plus', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Max Shot', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS ROG Phone', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 5 Lite', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 5', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 5z', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Lite', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Live', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Max', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Max Pro', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Max Pro M2', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 3 Zoom', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 3s Max', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 4 Max Plus', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Max', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 4 Pro', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 4 Selfie Lite', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 4 Selfie Pro', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 4 Selfie', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone 4 ', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone AR', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Go', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Live', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone Max Plus', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'ASUS Zenfone V', 9);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 4a', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 4a 5G', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 5', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 4a', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 3a XL', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 4', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 4 XL', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 3', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 3 XL', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 2', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel 2 XL', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel ', 10);
INSERT INTO `GCA`.`modelo` (`idmodelo`, `nome`, `marca_idmarca`) VALUES (DEFAULT, 'Google Pixel XL', 10);

COMMIT;

