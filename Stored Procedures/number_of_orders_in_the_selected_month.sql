CREATE DEFINER=`root`@`localhost` PROCEDURE `number_of_orders_in_the_selected_month`(IN date1 DATE)
BEGIN
select count(заказ.Номер_заказа) as 'Кол-во заказов' from заказ
where month(date1) = month(заказ.Дата_выполнения)
AND YEAR(date1) = YEAR(`заказ`.`Дата_выполнения`);
END
