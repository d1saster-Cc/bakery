CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_client`(IN id int, IN name1 VARCHAR(50), IN adres VARCHAR(100), IN requisites INT)
BEGIN
UPDATE `клиент`
SET `Имя_клиента` = name1, `Адрес` = adres, `Реквизиты` = requisites
WHERE `Идентификатор_клиента` = id;
END
