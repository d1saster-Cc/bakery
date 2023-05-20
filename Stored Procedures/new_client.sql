CREATE DEFINER=`root`@`localhost` PROCEDURE `new_client`(IN id int, IN name1 VARCHAR(50), IN adres VARCHAR(100), IN requisites INT)
BEGIN
insert into клиент values (id, name1, adres, requisites);
END
