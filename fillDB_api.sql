use api;

-- �������� �������� ������
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('�������� ����������', 'root',null, '������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('���� RS-485', '���� ������','�������� ����������', '������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('������������ �����������', '������������ �����������','���� RS-485', '������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('����������', '����������','������������ �����������', '������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('���������� ���������','���������� ���������', '����������', '������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('������ �������������','������ �������������','���������� ���������', '������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('����','����', '���������� ���������', '������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('����������� ������', '����������� ������','�������� ����������','������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('����������� ��', '����������� ��','�������� ����������', '������ 1.0');
INSERT INTO `modeles` (`type_model`, `type_model_comment`, `parent_model`, `model`) VALUES ('����������� ����', '����������� ����','�������� ����������','������ 1.0');


select * from modeles m ;

-- ���� ����������
-- INSERT INTO modeles_param_type_io (`type_io`) VALUES
-- ('edit'),
-- ('checkbox'),
-- ('single');

select  * from modeles_param_type_io;

-- �������� modeles_params (��������� ����� ���������)

INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('�������� ����������', '����� ����������','model','1', '������ 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('���� RS-485', '��������� �����','model','1', '������ 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('����������', '����� ','model','1', '������ 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`, `type_io`) VALUES 
                          ('���������� ���������', '����� ����������','model','1', '������ 1.0', 'single');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('������ �������������', '����� ����������','model','1', '������ 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('������ �������������', '����������������','model','1', '������ 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('����', '����� ����������','model','1', '������ 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('����������� ��', '����� ����������','model','1', '������ 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('����������� ������', '����� ����������','model','1', '������ 1.0');
INSERT INTO `modeles_params` (`type_model`, `param`, `param_scope`, `default`, `description`) VALUES 
                          ('����������� ����', '����� ����������','model','1', '������ 1.0');
                       
select * from modeles_params ;


-- ��������� �������� ������ ���������,  modeles_param_values

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('1', '��������� ����� ����������',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('2', '��������� ����� ����������',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('3', '��������� ����� ����������',5);
 
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('4', '��������� ����� ����������',5);
                         
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('5', '��������� ����� ����������',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('6', '��������� ����� ����������',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('7', '��������� ����� ����������',5);
 
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('8', '��������� ����� ����������',5);


INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('9', '��������� ����� ����������',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('10', '��������� ����� ����������',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('11', '��������� ����� ����������',5);
 
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('12', '��������� ����� ����������',5);
                         
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('13', '��������� ����� ����������',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('14', '��������� ����� ����������',5);

INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('15', '��������� ����� ����������',5);
 
INSERT INTO `modeles_param_values` (`value`, `description`,`modeles_params_id`) VALUES 
                          ('16', '��������� ����� ����������',5);
                          
select * from modeles_param_values;

-- ������� �� ������
INSERT INTO `modeles_commands` (`type_model`,`command`,`description` ) VALUES 
                          ('�������� ����������', '�������������','������������ ������������');
INSERT INTO `modeles_commands` (`type_model`,`command`,`description` ) VALUES 
                          ('�������� ����������', '����������','��������� ������������');

select * from modeles_commands; 

-- modeles_commands_param_values

INSERT INTO `modeles_commands_param_values` (`value`,`description`,`modeles_commands_params_id` ) VALUES 
                          ('/dev/ttyS0:9600,n,8,1', '��������� �����',4);

select * from modeles_commands_param_values; 

-- �������� �������
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('�������� ����������', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('�������� ����������', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('���� RS-485', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('���� RS-485', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('������������ �����������', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('������������ �����������', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����������', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����������', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('���������� ���������', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('���������� ���������', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('������ �������������', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('������ �������������', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����������� ������', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����������� ������', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����������� ����', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����������� ����', '����������','���������� ����� ����������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����������� ��', '��������','���������� ����� ��������');
INSERT INTO `modeles_events` (`type_model`,`event`,`description` ) VALUES ('����������� ��', '����������','���������� ����� ����������');

select * from modeles_events;

-- �������� ��������� � ��������

INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('�������� ����������','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (1, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (1, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (1, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('���� RS-485','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (2, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (2, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (2, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('������������ �����������','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (3, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (3, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (3, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('����������','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (4, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (4, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (4, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('���������� ���������','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (5, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (5, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (5, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('������ �������������','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (6, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (6, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (6, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('����','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (7, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (7, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (7, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('����������� ������','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (8, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (8, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (8, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('����������� ����','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (9, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (9, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (9, '������������');
INSERT INTO `modeles_states` (`type_model`,`state`,`description` ) VALUES ('����������� ��','����������������','����� ������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (10, '��������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (10, '����������');
INSERT INTO `modeles_states_values` (`modeles_states_value`,`value` ) VALUES (10, '������������');

select * from  modeles_states;

select * from modeles_states_values;

-- �������� �������� ����������

INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (1,null, '��','�������� ����������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (2,1, '���� RS-485','���� RS-485');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (3,1, '����������� ������ 1','����������� ������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (4,1, '����������� ���� 1','����������� ����');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (5,1, '����������� �� 1','����������� ��');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (6,2, '������������ �����������','������������ �����������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (7,6, '���������� 1','����������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (8,7, '���������� ��������� 1','���������� ���������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (9,8, '���� 1','����');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (10,8, '������ ������������� 1','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (11,8, '������ ������������� 2','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (12,8, '������ ������������� 3','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (13,8, '������ ������������� 4','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (14,8, '������ ������������� 5','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (15,8, '������ ������������� 6','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (16,8, '������ ������������� 7','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (17,8, '������ ������������� 8','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (18,8, '������ ������������� 9','������ �������������');
INSERT INTO `devices` (`device_id_guid`,`parent_id_guid`,`name`,`type` ) VALUES (19,8, '������ ������������� 10','������ �������������');

select * from devices; 

INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (1,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (2,'��������� �����','/dev/ttyS0:9600,n,8,1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (2,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (3,'����� ����������','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (3,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (4,'����� ����������','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (4,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (5,'����� ����������','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (5,'����������������','��������');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (6,'����������������','��������');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (7,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (7,'�����','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (8,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (8,'����� ����������','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (9,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (9,'����� ����������','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (10,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (10,'����� ����������','1');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (11,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (11,'����� ����������','2');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (12,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (12,'����� ����������','3');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (13,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (13,'����� ����������','4');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (14,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (14,'����� ����������','5');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (15,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (15,'����� ����������','6');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (16,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (16,'����� ����������','7');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (17,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (17,'����� ����������','8');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (18,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (18,'����� ����������','9');
INSERT INTO `states` (`device_id_guid`,`state`,`value` ) VALUES (19,'����������������','��������');
INSERT INTO `params` (`device_id_guid`,`param`,`value` ) VALUES (19,'����� ����������','10');
