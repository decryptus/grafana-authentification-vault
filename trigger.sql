USE `grafana`;

DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER b_u_user BEFORE UPDATE ON user FOR EACH ROW BEGIN     SET NEW.login = OLD.login;     SET NEW.email = OLD.email;     SET NEW.name = OLD.name;     SET NEW.password = OLD.password;     SET NEW.salt = OLD.salt;     SET NEW.rands = OLD.rands; END */;;
DELIMITER ;
