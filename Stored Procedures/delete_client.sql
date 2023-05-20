CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_client`(IN id INT)
BEGIN
DELETE FROM `Клиент`
WHERE `Идентификатор_клиента` = id;
END
