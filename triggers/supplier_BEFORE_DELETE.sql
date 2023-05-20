CREATE DEFINER=`root`@`localhost` TRIGGER `поставщик_BEFORE_DELETE` BEFORE DELETE ON `поставщик` FOR EACH ROW BEGIN
DELETE FROM запись_списка_поставщик_сырьё
WHERE запись_списка_поставщик_сырьё.Идентификатор_поставщика =
old.Идентификатор_поставщика;
END
