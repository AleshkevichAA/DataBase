use api; 


-- Модель !!!
DROP TABLE IF EXISTS modeles;
CREATE TABLE modeles (
  type_model VARCHAR(255) PRIMARY KEY COMMENT 'Англ. именование класса',
  type_model_comment VARCHAR(255) COMMENT 'Смысловой комментарий',
  parent_model VARCHAR(255) COMMENT 'ссылка на родителя',
  model VARCHAR(255) COMMENT 'Вариант исполнения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Модели';

-- Добавляем внешние ключи от параметра
ALTER TABLE modeles 
  ADD CONSTRAINT modeles_parent_model_fk 
    FOREIGN KEY (parent_model) REFERENCES modeles(type_model)
      ON DELETE CASCADE;


-- Задание типов параметра
DROP TABLE IF EXISTS modeles_param_type_io;
CREATE TABLE modeles_param_type_io (
  type_io VARCHAR(255) PRIMARY KEY COMMENT 'Тип параметра',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'ТИП задания параметра';

INSERT INTO modeles_param_type_io (`type_io`) VALUES
('edit'),
('checkbox'),
('single');

-- Параметры !!!
DROP TABLE IF EXISTS modeles_params;
CREATE TABLE modeles_params (
  id INT unsigned NOT NULL auto_increment PRIMARY KEY,
  type_model VARCHAR(255) COMMENT 'Модель устройства',
  param VARCHAR(255) COMMENT 'Параметр устройства',  
  param_scope VARCHAR(255) COMMENT 'Параметр модели или команды',
  `group` VARCHAR(255) COMMENT 'Группа',
  description VARCHAR(255) COMMENT 'Описание параметра',
  regEx VARCHAR(255) COMMENT 'Регулярное выражение для проверки допустимости значения',
  `from` VARCHAR(255) COMMENT 'Начальное значение параметра типа single',
  `to` VARCHAR(255) COMMENT 'Конечное значение параметра типа single',
  step VARCHAR(255) COMMENT 'Шаг изменения для from до to',
  `unique` BOOL COMMENT 'Признак уникальности значения параметра в пределах дочерних устройств',
  `min` VARCHAR(255) COMMENT 'Минимальное значение параметра',
  `max` VARCHAR(255) COMMENT 'Максимальное значение параметра',
   type_io   VARCHAR(255) COMMENT 'Тип параметра',
  `default` VARCHAR(255) COMMENT 'Значение параметра по умолчанию',
   mode VARCHAR(255) COMMENT 'Признак - изменяется ли параметр при изменении работы УПС',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_param (param)
) COMMENT = 'Параметры модели';

-- Добавляем внешние ключи от параметра
ALTER TABLE modeles_params 
  ADD CONSTRAINT modeles_params_type_io_fk 
    FOREIGN KEY (type_io) REFERENCES modeles_param_type_io(type_io)
      ON DELETE CASCADE,
  ADD CONSTRAINT modeles_params_type_model_fk 
    FOREIGN KEY (type_model) REFERENCES modeles(type_model)
      ON DELETE CASCADE;

DROP TABLE IF EXISTS modeles_param_values;
CREATE TABLE modeles_param_values (
  id SERIAL PRIMARY KEY,
  value VARCHAR(255) COMMENT 'Значение',
  description VARCHAR(255) COMMENT 'Примечание',
  modeles_params_id INT unsigned,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'ТИП задания параметра';

-- Добавляем внешние ключи от параметра
ALTER TABLE modeles_param_values 
  ADD CONSTRAINT modeles_param_values_modeles_param_id_fk 
    FOREIGN KEY (modeles_params_id) REFERENCES modeles_params(id)
      ON DELETE cascade;
     
     
     
DROP TABLE IF EXISTS modeles_commands;
CREATE TABLE modeles_commands (
  id INT NOT null auto_increment PRIMARY KEY,
  type_model VARCHAR(255) COMMENT 'Модель устройства',
  command VARCHAR(255) COMMENT 'Команда устройства',  
  `group` VARCHAR(255) COMMENT 'Группа',
  description VARCHAR(255) COMMENT 'Описание команды',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Команды из модели';

-- Добавляем внешние ключи от параметра
ALTER TABLE modeles_commands 
  ADD CONSTRAINT modeles_commmands_model_id_fk 
      FOREIGN KEY (type_model) REFERENCES modeles(type_model)
      ON DELETE CASCADE;
     
-- Создадим модели команды параметрами    
--   DROP TABLE IF EXISTS modeles_commands_params;
--   CREATE TABLE modeles_commands_params (
--   id INT NOT NULL PRIMARY KEY,
--   type_model VARCHAR(255) COMMENT 'Модель устройства',
--   param VARCHAR(255) COMMENT 'Параметр устройства',  
--   `group` VARCHAR(255) COMMENT 'Группа',
--   description VARCHAR(255) COMMENT 'Описание параметра',
--   regEx VARCHAR(255) COMMENT 'Регулярное выражение для проверки допустимости значения',
--    `from` VARCHAR(255) COMMENT 'Начальное значение параметра типа single',
--   `to` VARCHAR(255) COMMENT 'Конечное значение параметра типа single',
--   step VARCHAR(255) COMMENT 'Шаг изменения для from до to',
--   `unique` BOOL COMMENT 'Признак уникальности значения параметра в пределах дочерних устройств',
--   `min` VARCHAR(255) COMMENT 'Минимальное значение параметра',
--   `max` VARCHAR(255) COMMENT 'Максимальное значение параметра',
--    type_io   VARCHAR(255) COMMENT 'Тип параметра',
--   `default` VARCHAR(255) COMMENT 'Значение параметра по умолчанию',
--    mode VARCHAR(255) COMMENT 'Признак - изменяется ли параметр при изменении работы УПС',
--   created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--   updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- ) COMMENT = 'Параметры модели';
-- 
-- Добавляем внешние ключи от параметра
-- ALTER TABLE modeles_commands_params 
--   ADD CONSTRAINT modeles_commands_params_type_io_fk 
--     FOREIGN KEY (type_io) REFERENCES modeles_param_type_io(type_io)
--       ON DELETE CASCADE,
--   ADD CONSTRAINT modeles_commands_params_type_model_fk 
--     FOREIGN KEY (type_model) REFERENCES modeles(type_model)
--       ON DELETE CASCADE;
-- 
DROP TABLE IF EXISTS modeles_commands_param_values;
CREATE TABLE modeles_commands_param_values (
  id SERIAL PRIMARY KEY,
  value VARCHAR(255) COMMENT 'Значение',
  description VARCHAR(255) COMMENT 'Примечание',
  modeles_commands_params_id INT unsigned,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'ТИП задания параметра команды';

-- Добавляем внешние ключи от параметра
ALTER TABLE modeles_commands_param_values 
  ADD CONSTRAINT modeles_commands_param_values_modeles_commands_param_id_fk 
    FOREIGN KEY (modeles_commands_params_id) REFERENCES modeles_params(id)
      ON DELETE cascade;
     
     
-- События модели (events) !!!
DROP TABLE IF EXISTS modeles_events;
CREATE TABLE modeles_events (
   id INT unsigned NOT NULL auto_increment PRIMARY KEY,
  type_model VARCHAR(255) COMMENT 'Модель устройства',
  event VARCHAR(255) COMMENT 'Событие устройства',  
  `group` VARCHAR(255) COMMENT 'Группа',
  description VARCHAR(255) COMMENT 'Описание параметра',
  alert VARCHAR(255) COMMENT 'Тревога уровень',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'События модели';

-- Добавляем внешние ключи от event
ALTER TABLE modeles_events 
  ADD CONSTRAINT modeles_events_type_model_fk 
    FOREIGN KEY (type_model) REFERENCES modeles(type_model)
      ON DELETE CASCADE;     
      
--     конец event 
     
 -- События модели (states) !!!
DROP TABLE IF EXISTS modeles_states;
CREATE TABLE modeles_states (
  id INT unsigned NOT NULL auto_increment PRIMARY KEY,
  type_model VARCHAR(255) COMMENT 'Модель устройства',
  state VARCHAR(255) COMMENT 'Состояние устройства',  
  `group` VARCHAR(255) COMMENT 'Группа',
  description VARCHAR(255) COMMENT 'Описание состояния',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состояния модели';

-- Добавляем внешние ключи от states
ALTER TABLE modeles_states 
  ADD CONSTRAINT modeles_states_type_model_fk 
    FOREIGN KEY (type_model) REFERENCES modeles(type_model)
      ON DELETE CASCADE;     
     
--      параметры из модели states (значение)
 DROP TABLE IF EXISTS modeles_states_values;
CREATE TABLE modeles_states_values (
  id INT unsigned NOT NULL auto_increment PRIMARY KEY,
  modeles_states_value INT unsigned COMMENT 'Модель состояния устройства',
  value VARCHAR(255) COMMENT 'Русское название значения состояния (включено/выключено)',  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состояния модели, возможное значение';   
     
-- Добавляем внешние ключи на event
ALTER TABLE modeles_states_values 
  ADD CONSTRAINT modeles_states_values_modeles_states_id_fk 
    FOREIGN KEY (modeles_states_value) REFERENCES modeles_states(id)
      ON DELETE CASCADE;     

--     конец state     
     
     
DROP TABLE IF EXISTS devices;
CREATE TABLE devices (
  device_id_guid VARCHAR(255) PRIMARY KEY COMMENT 'ID устройства',
  parent_id_guid VARCHAR(255) COMMENT 'Родительское устройство',
  name VARCHAR(255) COMMENT 'Имя устройства',
  `type` VARCHAR(255) COMMENT 'Тип устройства',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_parent_id_guid (parent_id_guid),
  KEY index_of_name (name),
  KEY index_of_type (type)
) COMMENT = 'Устройства';

-- Добавляем внешние ключи от параметра
ALTER TABLE devices 
  ADD CONSTRAINT devices_type_model_fk 
    FOREIGN KEY (type) REFERENCES modeles(type_model)
      ON DELETE cascade,
      ADD CONSTRAINT devices_parent_id_guid_fk 
    FOREIGN KEY (parent_id_guid) REFERENCES devices(device_id_guid)
      ON DELETE CASCADE;


DROP TABLE IF EXISTS params;
CREATE TABLE params (
  id SERIAL PRIMARY KEY,
  param VARCHAR(255) COMMENT 'Имя параметра',
  value VARCHAR(255) COMMENT 'Значение параметра',
  device_id_guid VARCHAR(255) COMMENT 'Ссылка на ID устройства',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Параметр текущие значения';


-- Добавляем внешние ключи от параметра
ALTER TABLE params 
  ADD CONSTRAINT params_device_id_guid_fk 
    FOREIGN KEY (device_id_guid) REFERENCES devices(device_id_guid)
      ON DELETE CASCADE;

     
DROP TABLE IF EXISTS states;
CREATE TABLE states (
  id SERIAL PRIMARY KEY,
  state VARCHAR(255) COMMENT 'Имя состояния' NOT NULL,
  value VARCHAR(255) COMMENT 'Значение параметра' NOT NULL,
  device_id_guid VARCHAR(255) COMMENT 'ID устройства',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состояние текущие значения';

-- Добавляем внешние ключи от параметра
ALTER TABLE states 
  ADD CONSTRAINT states_device_id_guid_fk 
    FOREIGN KEY (device_id_guid) REFERENCES devices(device_id_guid)
      ON DELETE CASCADE;
      
-- логи по добавлению устройства, изменению/добавления состояния устройства,
-- изменение/добавление параметра
drop table if exists Logs;     
CREATE TABLE Logs (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    table_name varchar(50) NOT NULL,
    row_id INT UNSIGNED NOT NULL,
    row_name varchar(255),
    row_value varchar(255)
) ENGINE = Archive;


DELIMITER \\

CREATE TRIGGER deices_insert AFTER INSERT ON devices
FOR EACH ROW
BEGIN
    INSERT INTO Logs(id,created_at,table_name,row_id,row_name) VALUES (NULL, DEFAULT, "devices", NEW.device_id_guid, NEW.name);
END;

DELIMITER \\
CREATE TRIGGER deices_update AFTER UPDATE ON devices
FOR EACH ROW
BEGIN
    INSERT INTO Logs(id,created_at,table_name,row_id,row_name) VALUES (NULL, DEFAULT, "devices", NEW.device_id_guid, NEW.name);
END;

DELIMITER \\
CREATE TRIGGER states_insert AFTER INSERT ON states
FOR EACH ROW
BEGIN
    INSERT INTO Logs(id,created_at,table_name,row_id,row_name,row_value) VALUES (NULL, DEFAULT, "states", NEW.device_id_guid, NEW.state, NEW.value);
END;

DELIMITER \\

CREATE TRIGGER states_update AFTER UPDATE ON states
FOR EACH ROW
BEGIN
    INSERT INTO Logs(id,created_at,table_name,row_id,row_name,row_value) VALUES (NULL, DEFAULT, "states", NEW.device_id_guid, NEW.state, NEW.value);
END;

DELIMITER \\

CREATE TRIGGER params_insert AFTER INSERT ON params
FOR EACH ROW
BEGIN
    INSERT INTO Logs(id,created_at,table_name,row_id,row_name,row_value) VALUES (NULL, DEFAULT, "params", NEW.device_id_guid, NEW.param, NEW.value);
END;

DELIMITER \\

CREATE TRIGGER params_update AFTER UPDATE ON params
FOR EACH ROW
BEGIN
    INSERT INTO Logs(id,created_at,table_name,row_id,row_name,row_value) VALUES (NULL, DEFAULT, "params", NEW.device_id_guid, NEW.param, NEW.value);
END;

DELIMITER \\

CREATE PROCEDURE my_version ()
BEGIN
  SELECT VERSION();
END

DELIMITER \\


-- получим представление модели - устройства (руское название - имя устройства)
CREATE OR REPLACE VIEW MODELES_DEVICES_VIEW as
SELECT 
 m.model as model_device,
 d.name as name_device,
 d.`type` as type_model 
FROM 
 modeles AS m 
JOIN 
 devices AS d 
ON m.type_model=d.type;

select * from modeles_devices_view;
     
     