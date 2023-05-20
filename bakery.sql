CREATE TABLE Клиент
(
  Идентификатор_клиента INT NOT NULL,
  Имя_клиента VARCHAR(50) NOT NULL,
  Адрес VARCHAR(100) NOT NULL,
  Реквизиты INT NOT NULL,
  PRIMARY KEY (Идентификатор_клиента)
);

CREATE TABLE Заказ
(
  Номер_заказа INT NOT NULL,
  Дата_выполнения DATE NOT NULL,
  Сумма_заказа INT NOT NULL,
  Идентификатор_клиента INT NOT NULL,
  PRIMARY KEY (Номер_заказа),
  FOREIGN KEY (Идентификатор_клиента) REFERENCES Клиент(Идентификатор_клиента)
);

CREATE TABLE Поставщик
(
  Идентификатор_поставщика INT NOT NULL,
  Рейтинг_поставщика FLOAT NOT NULL,
  Имя_поставщика VARCHAR(50) NOT NULL,
  Реквизиты INT NOT NULL,
  Адрес VARCHAR(50) NOT NULL,
  PRIMARY KEY (Идентификатор_поставщика)
);

CREATE TABLE Сырьё
(
  Идентификатор_сырья INT NOT NULL,
  Название VARCHAR(50) NOT NULL,
  PRIMARY KEY (Идентификатор_сырья)
);

CREATE TABLE Запись_списка_поставщик_сырьё
(
  Цена_сырья_за_единицу INT NOT NULL,
  Идентификатор_поставщика INT NOT NULL,
  Идентификатор_сырья INT NOT NULL,
  PRIMARY KEY (Идентификатор_поставщика, Идентификатор_сырья),
  FOREIGN KEY (Идентификатор_поставщика) REFERENCES Поставщик(Идентификатор_поставщика),
  FOREIGN KEY (Идентификатор_сырья) REFERENCES Сырьё(Идентификатор_сырья)
);

CREATE TABLE Конвейер
(
  Идентификатор_конвейера INT NOT NULL,
  Идентификатор_х_б INT NOT NULL,
  PRIMARY KEY (Идентификатор_конвейера)
);

CREATE TABLE Запись_списка_поставщик_конвейер
(
  Идентификатор_поставщика INT NOT NULL,
  Идентификатор_конвейера INT NOT NULL,
  PRIMARY KEY (Идентификатор_поставщика, Идентификатор_конвейера),
  FOREIGN KEY (Идентификатор_поставщика) REFERENCES Поставщик(Идентификатор_поставщика),
  FOREIGN KEY (Идентификатор_конвейера) REFERENCES Конвейер(Идентификатор_конвейера)
);

CREATE TABLE х_б_изделие
(
  Идентификатор_х_б_изделия INT NOT NULL,
  Название_х_б_изделия VARCHAR(50) NOT NULL,
  Идентификатор_конвейера INT NOT NULL,
  PRIMARY KEY (Идентификатор_х_б_изделия),
  FOREIGN KEY (Идентификатор_конвейера) REFERENCES Конвейер(Идентификатор_конвейера)
);

CREATE TABLE Запись_списка_деталeй_заказа
(
  Кол_во_изделий INT NOT NULL,
  Цена_изделий INT NOT NULL,
  Детали_заказа VARCHAR(500) NOT NULL,
  Номер_заказа INT NOT NULL,
  Идентификатор_х_б_изделия INT NOT NULL,
  PRIMARY KEY (Номер_заказа, Идентификатор_х_б_изделия),
  FOREIGN KEY (Номер_заказа) REFERENCES Заказ(Номер_заказа),
  FOREIGN KEY (Идентификатор_х_б_изделия) REFERENCES х_б_изделие(Идентификатор_х_б_изделия)
);

CREATE TABLE Запись_списка_сырья_для_х_б_изделия
(
  Кол_во_сырья_на_единицу_изделия DECIMAL NOT NULL,
  Идентификатор_х_б_изделия INT NOT NULL,
  Идентификатор_сырья INT NOT NULL,
  PRIMARY KEY (Идентификатор_х_б_изделия, Идентификатор_сырья),
  FOREIGN KEY (Идентификатор_х_б_изделия) REFERENCES х_б_изделие(Идентификатор_х_б_изделия),
  FOREIGN KEY (Идентификатор_сырья) REFERENCES Сырьё(Идентификатор_сырья)
);
