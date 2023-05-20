CREATE DEFINER=`root`@`localhost` TRIGGER `клиент_BEFORE_DELETE` BEFORE DELETE ON `клиент` FOR EACH ROW BEGIN
DELETE FROM заказ
WHERE заказ.Идентификатор_клиента = old.Идентификатор_клиента;
END
