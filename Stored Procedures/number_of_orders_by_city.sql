CREATE DEFINER=`root`@`localhost` PROCEDURE `number_of_orders_by_city`(IN city VARCHAR(50))
BEGIN
SELECT count(заказ.Номер_заказа) AS `Кол-во заказов` FROM клиент JOIN заказ
ON `клиент`.`Идентификатор_клиента` = `заказ`.`Идентификатор_клиента`
WHERE LOCATE(city,`клиент`.`Адрес`)>0
;
END
