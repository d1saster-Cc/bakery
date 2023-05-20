CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_formula`(IN amount_per_one DECIMAL, IN hb_id INT, IN raw_id INT)
BEGIN
UPDATE `запись_списка_сырья_для_х_б_изделия`
SET `Кол_во_сырья_на_единицу_изделия` = amount_per_one,
`Идентификатор_х_б_изделия` = hb_id,
`Идентификатор_сырья` = raw_id
WHERE `Идентификатор_х_б_изделия` = hb_id AND `Идентификатор_сырья` = raw_id;
END
