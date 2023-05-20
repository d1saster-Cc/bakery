CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_supplier`(IN id INT)
BEGIN
DELETE FROM `Поставщик`
WHERE `Идентификатор_поставщика` = id;
END
