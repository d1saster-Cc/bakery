CREATE DEFINER=`root`@`localhost` PROCEDURE `make_order`(IN id int, IN date1 DATE, IN summ_of_order INT, IN client_id INT)
BEGIN
insert into заказ values (id, date1, summ_of_order, client_id);
END
