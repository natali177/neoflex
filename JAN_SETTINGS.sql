prompt Importing table JAN_SETTINGS...
set feedback off
set define off
insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('ES_ADDRESS', '192.168.126.191:9200', 'Адрес сервера ES (ip:port)');

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('ES_REST', 'http://192.168.126.189:7080', null);

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('LOAD_LISTS_FROM_GW', '0', 'Загружать вложенные списки из Гринвича в Oracle (0-списки подгружаются шлюзом при перекачке отчета)');

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('LOAD_LISTS_FROM_GW_INCREMENT', '50', 'Количество записей, выбираемых из Гринвича за одно обращение');

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('LOAD_LISTS_FROM_GW_TASK_TYPES', '14,15,36', 'Список типов задач, на которые распространяется настройка LOAD_LISTS_FROM_GW, в формате: task_type_id1,task_type_id2,task_type_id3');

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('operator_name', 'MGTS', 'Value used by JanGateway');

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('RESULT_SCHEMA_NAME', 'JAN_RESULT', null);

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('RESULT_TIME_STORAGE', '7', null);

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('USE_ES', '1', 'Включение поиска в ElasticSearch');

insert into JAN_SETTINGS (NAME, VALUE, DESCRIPTION)
values ('USE_ES_FOR_TASK_TYPES', '11,13,14,15,16,36,38,39,40,54', 'Список типов задач, для которых поиск ведется в ElasticSearch');

prompt Done.
