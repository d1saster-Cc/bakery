CREATE DEFINER=`root`@`localhost` PROCEDURE `search_orders_by_date`(IN date1 DATE)
BEGIN
select * from заказ 
where date1 = заказ.Дата_выполнения;
END
