/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - crimenew
*********************************************************************
Server version : 5.0.22-community-nt
*/


SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `crimenew`;

USE `crimenew`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(20) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`username`,`password`) values ('project','12345678');

/*Table structure for table `crime` */

DROP TABLE IF EXISTS `crime`;

CREATE TABLE `crime` (
  `name` varchar(20) default NULL,
  `place` varchar(20) default NULL,
  `dist` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `crime` */

insert into `crime` (`name`,`place`,`dist`) values ('murder','tirunelveli','tirunelveli');
insert into `crime` (`name`,`place`,`dist`) values ('robery','chennai','chennai');
insert into `crime` (`name`,`place`,`dist`) values ('castim','madurai','madurai');
insert into `crime` (`name`,`place`,`dist`) values ('rab','chennai','chennai');

/*Table structure for table `missing` */

DROP TABLE IF EXISTS `missing`;

CREATE TABLE `missing` (
  `name` varchar(20) default NULL,
  `mobile` varchar(20) default NULL,
  `addd` varchar(200) default NULL,
  `pin` varchar(20) default NULL,
  `da` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `missing` */

insert into `missing` (`name`,`mobile`,`addd`,`pin`,`da`) values ('vel','7339300411','chennai','2342','2020-03-03');
insert into `missing` (`name`,`mobile`,`addd`,`pin`,`da`) values ('james','9600066689','nagarkovil','627123','2020-01-15');
insert into `missing` (`name`,`mobile`,`addd`,`pin`,`da`) values ('a','1234567891','chennai','7235','2020-01-15');
insert into `missing` (`name`,`mobile`,`addd`,`pin`,`da`) values ('vel','7339300411','chennai','2342','2020-03-05');

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `username` varchar(20) default NULL,
  `landmark` varchar(20) default NULL,
  `complaint` varchar(20) default NULL,
  `phonenumber` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `report` */

insert into `report` (`username`,`landmark`,`complaint`,`phonenumber`) values ('vel','chennai','murder','7339300411');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  `mail` varchar(30) default NULL,
  `mobile` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert into `user` (`username`,`password`,`mail`,`mobile`) values ('vel','vel','vel@gmail.com','7339300411');

insert into `user` (`username`,`password`,`mail`,`mobile`) values ('virinchi','12345678','virinchi@gmail.com','7339300411');

SET SQL_MODE=@OLD_SQL_MODE;