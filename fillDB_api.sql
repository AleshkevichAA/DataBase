use api;

-- Заполним тестовые модели
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Головное устройство', 'root',null, 'Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Порт RS-485', 'Порт обмена','Головное устройство', 'Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Концентратор центральный', 'Концентратор центральный','Порт RS-485', 'Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Магистраль', 'Магистраль','Концентратор центральный', 'Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Контроллер периферии','Контроллер периферии', 'Магистраль', 'Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Датчик универсальный','Датчик универсальный','Контроллер периферии', 'Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Реле','Реле', 'Контроллер периферии', 'Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Виртуальный датчик', 'Виртуальный датчик','Головное устройство','Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Виртуальная ТД', 'Виртуальная ТД','Головное устройство', 'Версия 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('Виртуальный шлюз', 'Виртуальный шлюз','Головное устройство','Версия 1.0');


select * from modeles m ;

-- Типы параметров
-- INSERT INTO modeles_param_type_io (`type_io`) VALUES
-- ('edit'),
-- ('checkbox'),
-- ('single');

select  * from modeles_param_type_io;

-- Заполним modeles_params (параметры типов устройств)

INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Головное устройство', 'Адрес устройства','model','1', 'Версия 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Порт RS-485', 'Параметры порта','model','1', 'Версия 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Магистраль', 'Номер ','model','1', 'Версия 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`, `type_io`) VALUES 
                          ('Контроллер периферии', 'Адрес устройства','model','1', 'Версия 1.0', 'single');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Датчик универсальный', 'Адрес устройства','model','1', 'Версия 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Датчик универсальный', 'Чувствительность','model','1', 'Версия 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Реле', 'Адрес устройства','model','1', 'Версия 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Виртуальная ТД', 'Адрес устройства','model','1', 'Версия 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Виртуальный датчик', 'Адрес устройства','model','1', 'Версия 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('Виртуальный шлюз', 'Адрес устройства','model','1', 'Версия 1.0');
                       
select * from modeles_params ;


-- Параметры значения модели устройств,  modeles_param_values

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('1', 'Возможный адрес устройства',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('2', 'Возможный адрес устройства',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('3', 'Возможный адрес устройства',5);
 
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('4', 'Возможный адрес устройства',5);
                         
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('5', 'Возможный адрес устройства',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('6', 'Возможный адрес устройства',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('7', 'Возможный адрес устройства',5);
 
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('8', 'Возможный адрес устройства',5);


INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('9', 'Возможный адрес устройства',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('10', 'Возможный адрес устройства',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('11', 'Возможный адрес устройства',5);
 
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('12', 'Возможный адрес устройства',5);
                         
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('13', 'Возможный адрес устройства',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('14', 'Возможный адрес устройства',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('15', 'Возможный адрес устройства',5);
 
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('16', 'Возможный адрес устройства',5);
                          
select * from modeles_param_values;

-- Команды из модели
INSERT INTO `modeles_commands` (`type_model`,`command`,`description` ) VALUES 
                          ('Головное устройство', 'Перезагрузить','Перезагрузка оборудования');
INSERT INTO `modeles_commands` (`type_model`,`command`,`description` ) VALUES 
                          ('Головное устройство', 'Остановить','Выключить оборудования');

select * from modeles_commands; 

-- modeles_commands_param_values

INSERT INTO `modeles_commands_param_values` (`value`,`description`,`modeles_commands_params_id` ) VALUES 
                          ('/dev/ttyS0:9600,n,8,1', 'Параметры порта',4);

select * from modeles_commands_param_values; 

-- Заполним события
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Головное устройство', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Головное устройство', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Порт RS-485', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Порт RS-485', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Концентратор центральный', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Концентратор центральный', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Магистраль', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Магистраль', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Контроллер периферии', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Контроллер периферии', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Датчик универсальный', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Датчик универсальный', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Реле', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Реле', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Виртуальный датчик', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Виртуальный датчик', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Виртуальный шлюз', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Виртуальный шлюз', 'Неисправно','Устройство стало неисправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Виртуальная ТД', 'Исправно','Устройство стало исправно');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('Виртуальная ТД', 'Неисправно','Устройство стало неисправно');

select * from modeles_events;

-- Заполним состояния и значения

INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Головное устройство','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (1, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (1, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (1, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Порт RS-485','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (2, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (2, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (2, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Концентратор центральный','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (3, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (3, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (3, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Магистраль','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (4, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (4, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (4, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Контроллер периферии','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (5, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (5, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (5, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Датчик универсальный','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (6, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (6, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (6, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Реле','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (7, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (7, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (7, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Виртуальный датчик','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (8, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (8, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (8, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Виртуальный шлюз','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (9, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (9, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (9, 'Неопределено');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('Виртуальная ТД','Функционирование','Режим работы');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (10, 'Исправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (10, 'Неисправно');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (10, 'Неопределено');

select * from  modeles_states;

select * from modeles_states_values;

-- Заполним тестовые устройства

INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (1,null, 'ГУ','Головное устройство');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (2,1, 'Порт RS-485','Порт RS-485');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (3,1, 'Виртуальный датчик 1','Виртуальный датчик');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (4,1, 'Виртуальный шлюз 1','Виртуальный шлюз');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (5,1, 'Виртуальная ТД 1','Виртуальная ТД');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (6,2, 'Концентратор центральный','Концентратор центральный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (7,6, 'Магистраль 1','Магистраль');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (8,7, 'Контроллер периферии 1','Контроллер периферии');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (9,8, 'Реле 1','Реле');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (10,8, 'Датчик универсальный 1','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (11,8, 'Датчик универсальный 2','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (12,8, 'Датчик универсальный 3','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (13,8, 'Датчик универсальный 4','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (14,8, 'Датчик универсальный 5','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (15,8, 'Датчик универсальный 6','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (16,8, 'Датчик универсальный 7','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (17,8, 'Датчик универсальный 8','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (18,8, 'Датчик универсальный 9','Датчик универсальный');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (19,8, 'Датчик универсальный 10','Датчик универсальный');

select * from devices; 

INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (1,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (2,'Параметры порта','/dev/ttyS0:9600,n,8,1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (2,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (3,'Адрес устройства','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (3,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (4,'Адрес устройства','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (4,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (5,'Адрес устройства','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (5,'Функционирование','Исправно');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (6,'Функционирование','Исправно');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (7,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (7,'Номер','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (8,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (8,'Адрес устройства','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (9,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (9,'Адрес устройства','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (10,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (10,'Адрес устройства','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (11,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (11,'Адрес устройства','2');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (12,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (12,'Адрес устройства','3');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (13,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (13,'Адрес устройства','4');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (14,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (14,'Адрес устройства','5');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (15,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (15,'Адрес устройства','6');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (16,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (16,'Адрес устройства','7');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (17,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (17,'Адрес устройства','8');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (18,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (18,'Адрес устройства','9');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (19,'Функционирование','Исправно');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (19,'Адрес устройства','10');
