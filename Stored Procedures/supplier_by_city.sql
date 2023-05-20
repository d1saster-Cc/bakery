CREATE DEFINER=`root`@`localhost` PROCEDURE `supplier_by_city`(IN city VARCHAR(50))
BEGIN
SELECT * FROM `поставщик`
WHERE LOCATE(city,`поставщик`.`Адрес`)>0
;
END
