CREATE DEFINER=`root`@`localhost` TRIGGER `заказ_BEFORE_DELETE` BEFORE DELETE ON `заказ` FOR EACH ROW BEGIN
DELETE FROM запись_списка_деталeй_заказа
WHERE запись_списка_деталeй_заказа.Номер_заказа = OLD.Номер_заказа;
END
