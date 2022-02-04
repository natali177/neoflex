/***
* Коммерческая тайна общества с ограниченной ответственностью "МФИ Софт" (ООО "МФИ Софт"), место нахождения - Российская Федерация, 603126, г. Нижний Новгород, ул. Родионова, дом 192, корпус 1;
* (с) ООО "МФИ Софт", 2006-2021. Использование, изменение и распространение без получения предварительного письменного согласия от ООО "МФИ Софт" запрещено.
***/
update result_field_type 
set view_expr ='actual_from as' 
where result_type_id = 1 and id = 27 /*attach*/ ;
   
update result_field_type 
set view_expr ='case when actual_to < clock_timestamp() then actual_to end as' 
where result_type_id = 1 and id = 28 /*detach*/ ;  
 
update result_field_type 
set view_expr ='case when actual_to <clock_timestamp() then 1 else 0 end as' 
where result_type_id = 1 and id = 26 /*status*/;