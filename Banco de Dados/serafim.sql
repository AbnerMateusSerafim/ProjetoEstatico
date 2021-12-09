-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

##alunos: abner, jamilly, gabriel cordeiro##

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema serafim_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema serafim_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `serafim_db` DEFAULT CHARACTER SET utf8mb4 ;
USE `serafim_db` ;

-- -----------------------------------------------------
-- Table `serafim_db`.`administrador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `serafim_db`.`administrador` (
  `id_usuario` INT(1) NOT NULL,
  `nome_completo` TINYTEXT NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `num_celular` BIGINT(11) NULL DEFAULT NULL,
  `senha` VARCHAR(32) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `serafim_db`.`destaque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `serafim_db`.`destaque` (
  `id_destaque` INT(2) NOT NULL,
  `valor` FLOAT NULL DEFAULT NULL,
  `id_produto` INT(3) NULL DEFAULT NULL,
  `desconto` INT(5) NULL DEFAULT NULL,
  `nome` TINYTEXT NULL DEFAULT NULL,
  `descricao` VARCHAR(300) NULL DEFAULT NULL,
  PRIMARY KEY (`id_destaque`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `serafim_db`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `serafim_db`.`marcas` (
  `id_marca` INT(2) NOT NULL,
  `nome_marca` TINYTEXT NULL DEFAULT NULL,
  `descr_marca` VARCHAR(100) NULL DEFAULT NULL,
  `cnpj` BIGINT(14) NULL DEFAULT NULL,
  PRIMARY KEY (`id_marca`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `serafim_db`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `serafim_db`.`produto` (
  `id_produto` INT(3) NOT NULL,
  `id_usuario` INT(1) NULL DEFAULT NULL,
  `id_marca` INT(2) NULL DEFAULT NULL,
  `id_status` INT(1) NULL DEFAULT NULL,
  `valor` FLOAT NULL DEFAULT NULL,
  `modelo` TEXT NULL DEFAULT NULL,
  `url_foto` VARCHAR(300) NULL DEFAULT NULL,
  `ano` INT(4) NULL DEFAULT NULL,
  `registrado_em` DATE NULL DEFAULT NULL,
  `final_placa` VARCHAR(2) NULL DEFAULT NULL,
  `cor` TINYTEXT NULL DEFAULT NULL,
  `obs` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id_produto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `serafim_db`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `serafim_db`.`status` (
  `id_status` INT(1) NOT NULL,
  `nome_status` TINYTEXT NULL DEFAULT NULL,
  `descricao` VARCHAR(500) NULL DEFAULT NULL,
  `disponibilidade` TINYTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_status`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
