CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_supplier`(IN id INT, IN rating FLOAT, IN name1 VARCHAR(50), IN requisites INT, IN adres VARCHAR(50))
BEGIN
UPDATE `Поставщик`
SET `Рейтинг_поставщика` = rating, `Имя_поставщика` = name1, `Реквизиты` = requisites, `Адрес` = adres
WHERE `Идентификатор_поставщика` = id;
END
