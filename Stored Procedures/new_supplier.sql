CREATE DEFINER=`root`@`localhost` PROCEDURE `new_supplier`(IN id INT, IN rating FLOAT, IN name1 VARCHAR(50), IN requisites INT, IN adres VARCHAR(50))
BEGIN
insert into поставщик values (id, rating, name1, requisites, adres);
END
